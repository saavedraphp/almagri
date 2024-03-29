<?php

namespace App\Http\Controllers;

use App\Constants;
use App\Acta;
use App\Kardex;

use App\Producto;
use App\Empresa;
use Exception;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade as PDF;
use App\Http\Controllers\CasillasEmpresaController;

class RecepcionController extends Controller
{

    public function __construct()
    {
        // LSL PARA LA VALIDACION
        $this->middleware('auth');
        //$this->foo = $foo;
        DB::enableQueryLog();
    }



    public function listaActasCasillasVacias()
    {

        $actas = DB::select("select a.acta_id, e.empr_nombre, count(k.kard_id) as items, a.created_at
        FROM empresas e
        left join actas a on a.empr_id = e.empr_id
        left join kardex k on a.acta_id = k.acta_id
         where k.rc_id is null and e.deleted_at is null and a.deleted_at is null and k.rc_id is null  
        group by a.acta_id, e.empr_nombre,a.created_at having items >0 order by items desc");

 
        return view('actas.index_ajustes', ['actas' => $actas]);


    }

    public function grabarAsignacionProductosCasillas(Request $request)
    {
        try {

            DB::beginTransaction();

            $casillas = $request->get('casilla_id');
            $kard_ids = $request->get('kard_id');
            //dd($kard_ids);


            foreach ($kard_ids as $key => $value) {
                $data = array(
                    'rc_id' => $casillas[$key]
                );

                Kardex::where('kard_id', $value)->update($data);
            }

            $acta = Acta::findOrFail($request->get('acta_id'));
            $acta->estado_asignacion = 'REALIZADO';
            $acta->update();
            //Acta::where('acta_id',$request->get('acta_id'))->update(['estado_asignacion','REALIZADO']);


            DB::commit();

            return redirect('admin/listaActasCasillasVacias')->with('message', 'Datos cargados correctamente')->with('operacion', '1');
        } catch (Exception $e) {
            DB::rollBack();
            report($e);
            return redirect('admin/listaActasCasillasVacias')->with('message', 'Se encontro un error inesperado en la operación<br>' . $e)->with('operacion', '0');
        }
    }




    public function asignarProductosCeldas($id)
    {

        $acta = DB::table('actas as a')
            ->leftJoin('tipo_movimiento as tm', 'tm.tm_codigo', '=', 'a.tm_codigo')
            ->where('a.acta_id', '=', $id)->first();


        $detalles = DB::table('productos_x_empresa  as p')
            ->join('kardex as k', 'k.prod_id', '=', 'p.prod_id')
            ->select(
                'kard_id',
                'p.prod_id',
                'p.unidad_id',
                'p.prod_nombre',
                'k.lote_id',
                'p.prod_stock',
                'p.prod_fecha_vencimiento',
                'k.kard_cantidad',
                'p.prod_stock as total',
                'rc_id'
            )
            ->where('k.acta_id', '=', $id)
            ->whereNull('k.rc_id')
            ->orderBy('p.created_at', 'asc')->get();
            
            $productosByCasilla = new CasillasEmpresaController();
 
            foreach($detalles as $detalle)
            {
                 $arrayProductosByCasilla[$detalle->prod_id] = $productosByCasilla->obtenerUbicacionProductoId($detalle->prod_id);

            }
 
            //dd($arrayProductosByCasilla);

        $empresa = Empresa::findOrFail($acta->empr_id);



        switch ($acta->tm_codigo) {
            case 'RECEPCION':
                $array_titulos = [
                    'CABECERA' => 'Asignacion de productos a racks',
                    'TAB'   => 'Registro de Productos'
                ];

                break;

            case 'DESPACHO':
                $array_titulos = [
                    'CABECERA' => 'Registro de Despacho ajustes',
                    'TAB'   => 'Despacho de Productos'
                ];

                break;

            default:
                $array_titulos = [];
        }


        return view('actas.asignacion_registros_actas',  [
            'acta' => $acta, 'detalles' => $detalles,
            'array_titulos' => $array_titulos, 'empresa' => $empresa, 'arrayProductosByCasilla' => $arrayProductosByCasilla
        ]);
    }






    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index(Request $request)
    {
       

        $busqueda = "";
        if ($request) {

            $query    = trim($request->get('search'));


            if (strlen($query) > 0) {
                $actas = DB::table('actas  as a')
                    ->leftJoin('tipo_documentos as td', 'a.tipo_docu_id', '=', 'td.tipo_docu_id')
                    ->leftJoin('empresas as e', 'a.empr_id', '=', 'e.empr_id')
                    ->leftJoin('tipo_movimiento as tm', 'tm.tm_codigo', '=', 'a.tm_codigo')
                    ->select(
                        'a.acta_id',
                        'a.tipo_docu_id',
                        'a.empr_id',
                        'e.empr_nombre',
                        'td.tipo_docu_nombre',
                        'a.acta_costo',
                        'a.acta_numero_ingr_sali',
                        'a.tm_codigo',
                        'tm.tm_codigo',
                        'a.acta_sub_cliente',
                        'estado_asignacion',
                        'a.created_at'
                    )
                    ->where('tm.tm_codigo', '=', 'RECEPCION')
                    ->where(function ($query) use ($request) {
                        $query->where('empr_nombre', 'LIKE', '%' . $request->search . '%')
                            ->orWhere('a.acta_sub_cliente', 'LIKE', '%' . $request->search . '%')
                            ->orWhere('empr_nombre', 'LIKE', '%' . $request->search . '%');
                    })
                    ->whereNull('a.deleted_at')
                    ->orderBy('a.created_at', 'desc')->paginate(Constants::NRO_FILAS);
                $busqueda = 'nombre';

            } else {
                $actas = DB::table('actas  as a')
                    ->leftJoin('tipo_documentos as td', 'a.tipo_docu_id', '=', 'td.tipo_docu_id')
                    ->leftJoin('empresas as e', 'a.empr_id', '=', 'e.empr_id')
                    ->leftJoin('tipo_movimiento as tm', 'tm.tm_codigo', '=', 'a.tm_codigo')
                    ->select(
                        'a.acta_id',
                        'a.tipo_docu_id',
                        'a.empr_id',
                        'e.empr_nombre',
                        'td.tipo_docu_nombre',
                        'a.acta_costo',
                        'acta_numero_ingr_sali',
                        'a.tm_codigo',
                        'estado_asignacion',
                        'tm.tm_nombre',
                        'a.acta_sub_cliente',
                        'a.created_at'
                    )
                    ->where('tm.tm_codigo', '=', 'RECEPCION')
                    ->whereNull('a.deleted_at')
                    ->orderBy('a.created_at', 'desc')->paginate(Constants::NRO_FILAS);
                     //dd(DB::getQueryLog());

                switch ($request->get('rbo_lista')) {
                    case 'DESPAC':
                        $actas = DB::table('actas  as a')
                            ->leftJoin('tipo_documentos as td', 'a.tipo_docu_id', '=', 'td.tipo_docu_id')
                            ->leftJoin('empresas as e', 'a.empr_id', '=', 'e.empr_id')
                            ->leftJoin('tipo_movimiento as tm', 'tm.tm_codigo', '=', 'a.tm_codigo')
                            ->select(
                                'a.acta_id',
                                'a.tipo_docu_id',
                                'a.empr_id',
                                'e.empr_nombre',
                                'td.tipo_docu_nombre',
                                'a.acta_costo',
                                'acta_numero_ingr_sali',
                                'a.serv_id',
                                'a.acta_sub_cliente',
                                'tm.tm_codigo',
                                'estado_asignacion',
                                'a.created_at'
                            )
                            ->where('tm.tm_codigo', '=', 'DESPAC')
                            ->whereNull('a.deleted_at')
                            ->orderBy('a.created_at', 'desc')->paginate(Constants::NRO_FILAS);
                        $busqueda = 'DESPAC';
                        $query = 'Despacho';

                        break;

                    case 'ALMACE':
                        $actas = DB::table('actas  as a')
                            ->leftJoin('tipo_documentos as td', 'a.tipo_docu_id', '=', 'td.tipo_docu_id')
                            ->leftJoin('empresas as e', 'a.empr_id', '=', 'e.empr_id')
                            ->leftJoin('tipo_movimiento as tm', 'tm.tm_codigo', '=', 'a.tm_codigo')
                            ->select(
                                'a.acta_id',
                                'a.tipo_docu_id',
                                'a.empr_id',
                                'e.empr_nombre',
                                'td.tipo_docu_nombre',
                                'a.acta_costo',
                                'acta_numero_ingr_sali',
                                'a.serv_id',
                                'estado_asignacion',
                                'tm.tm_codigo',
                                'a.acta_sub_cliente',
                                'a.created_at'
                            )
                            ->where('tm.tm_codigo', '=', 'ALMACE')
                            ->whereNull('a.deleted_at')
                            ->orderBy('a.created_at', 'desc')->paginate(Constants::NRO_FILAS);
                        $busqueda = 'ALMACE';
                        $query = 'Almacenamiento';
                        break;

                    case 'ALL':
                        $actas = DB::table('actas  as a')
                            ->leftJoin('tipo_documentos as td', 'a.tipo_docu_id', '=', 'td.tipo_docu_id')
                            ->leftJoin('empresas as e', 'a.empr_id', '=', 'e.empr_id')
                            ->leftJoin('tipo_movimiento as tm', 'tm.tm_codigo', '=', 'a.tm_codigo')
                            ->select(
                                'a.acta_id',
                                'a.tipo_docu_id',
                                'a.empr_id',
                                'e.empr_nombre',
                                'td.tipo_docu_nombre',
                                'a.acta_costo',
                                'acta_numero_ingr_sali',
                                'a.tm_codigo',
                                'a.acta_sub_cliente',
                                'estado_asignacion',
                                'tm.tm_codigo',
                                'a.created_at'
                            )
                            ->whereNull('a.deleted_at')
                            ->orderBy('a.created_at', 'desc')->paginate(Constants::NRO_FILAS);
                        $busqueda = 'ALL';
                        $query = 'Todos';
                        break;
                }
                $nro_documento = trim($request->get('nro_documento'));

                if (strlen($nro_documento) > 0) {

                    $actas = DB::table('actas  as a')
                        ->leftJoin('tipo_documentos as td', 'a.tipo_docu_id', '=', 'td.tipo_docu_id')
                        ->leftJoin('empresas as e', 'a.empr_id', '=', 'e.empr_id')
                        ->leftJoin('tipo_movimiento as tm', 'tm.tm_codigo', '=', 'a.tm_codigo')
                        ->select(
                            'a.acta_id',
                            'a.tipo_docu_id',
                            'a.empr_id',
                            'e.empr_nombre',
                            'td.tipo_docu_nombre',
                            'a.acta_costo',
                            'a.acta_numero_ingr_sali',
                            'a.tm_codigo',
                            'tm.tm_codigo',
                            'a.acta_sub_cliente',
                            'estado_asignacion',
                            'a.created_at'
                        )
                        ->where('tm.tm_codigo', '=', 'RECEPCION')
                        ->where('a.acta_numero_ingr_sali', '=', $nro_documento)
                        ->whereNull('a.deleted_at')
                        ->orderBy('a.created_at', 'desc')->paginate(Constants::NRO_FILAS);
                    $busqueda = 'nro_documento';
                    $query = $request->get('nro_documento');


                }
            }
            //dd('aaaaaaaa'.$busqueda);
           // echo $actas;  


            //dd($actas);
            return view('actas.index', ['actas' => $actas, 'search' => $query, 'busqueda' => $busqueda]);
        }
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {


        $lotes = DB::table('lotes')->get();
        //var_dump($lotes);


        return view('actas.create', ['lotes' => $lotes]);
    }







    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        // Start transaction




        try {

            DB::beginTransaction();

            $acta = new Acta();
            $acta->empr_id =                  $request->get('cbo_empresa');
            $acta->tm_codigo =                  'RECEPCION';  // ALMACENAMIENTO  $request->get('tipo_servicio');
            $acta->acta_sub_cliente =              $request->get('sub_cliente');
            $acta->tipo_docu_id =           $request->get('tipo_documento');
            $acta->acta_numero_ingr_sali =         $request->get('nro_documento_frm');
            //  $acta->acta_encargado_id =        $request->get('cbo_empresa');
            //  $acta->acta_supervisor_id =        $request->get('cbo_empresa');
            $acta->acta_comentario =        $request->get('comentario');
            $acta->estado_asignacion =        'REALIZADO';

            $acta->save();


            $kardex = new Kardex;

            /******************************************************/
            /********************** INSERT KARDEX  ****************/
            /******************************************************/


            $items = $request->get('prod_id');
            $cantidad = $request->get('cantidad');
            $lote = $request->get('lote');
            $rc = $request->get('rc_id');

            if ($request->get('cantidad') !== null) {
                foreach ($items  as $key => $value) {
                    if ($cantidad[$key] > 0) {
                        $answers[] = [
                            'acta_id' => $acta->acta_id,
                            'prod_id' => $value,
                            'lote_id' => $lote[$key],
                            'kard_cantidad' => $cantidad[$key],
                            'rc_id' => $rc[$key],
                            'created_at' => date('Y-m-d H:i:s')

                        ];

                        $query = "update productos_x_empresa set prod_stock = (prod_stock + " . $cantidad[$key] . ") where  prod_id = " . $value;
                        $resul = DB::update($query);


                        /*********** VERIFICA  SI EXISTE PRODUCTO X LOTE =  INSERT O UPDATE******* */
                        $existe_producto_lote = DB::table('lote_x_producto')
                            ->where('prod_id', '=', $value)
                            ->where('lote_id', '=', $lote[$key])->count();

                        if ($existe_producto_lote == 0) {
                            $query_lote = "insert into lote_x_producto  (lote_id, prod_id, cantidad,created_at)
                         values(" . $lote[$key] . ", " . $value . " , " . $cantidad[$key] . ",'" . date('Y-m-d H:i:s') . "')";
                            DB::insert($query_lote);
                        } else {
                            $query_lote = "update lote_x_producto set cantidad = (cantidad + " . $cantidad[$key] . "),
                        updated_at =  '" . date('Y-m-d H:i:s') . "' where  prod_id = " . $value . " and lote_id = " . $lote[$key];
                            DB::update($query_lote);
                        }
                    }
                }
                Kardex::insert($answers);
            }


            DB::commit();
            return redirect('admin/recepcion')->with('message', 'Datos cargados correctamente')->with('operacion', '1');
        } catch (Exception $e) {
            DB::rollBack();
            report($e);
            return redirect('admin/recepcion')->with('message', 'Se encontro un error inesperado en la operación<br>' . $e)->with('operacion', '0');
        }
    } //FIN STORE












    public function show($id)
    {
        $acta = DB::table('actas as a')
            ->leftJoin('tipo_movimiento as tm', 'tm.tm_codigo', '=', 'a.tm_codigo')
            ->select(
                'a.acta_id',
                'a.created_at',
                'a.empr_id',
                'a.acta_sub_cliente',
                'a.acta_numero_ingr_sali',
                'a.acta_comentario',
                'a.tm_codigo',
                'a.tipo_docu_id'
            )
            ->where('a.acta_id', '=', $id)->first();

        //dd($acta);

        $detalles = DB::table('productos_x_empresa  as p')
            ->join('kardex as k', 'k.prod_id', '=', 'p.prod_id')
            ->leftJoin('racks_casillas as rc', 'rc.rc_id', '=', 'k.rc_id')
            ->leftJoin('racks as r', 'rc.rack_id', '=', 'r.rack_id')
            ->select(
                'p.prod_id',
                'p.prod_sku',
                'p.unidad_id',
                'p.prod_nombre',
                'k.lote_id',
                'p.prod_stock',
                'p.prod_fecha_vencimiento',
                'k.kard_cantidad',
                'p.prod_stock as total',
                'rc.rc_nombre',
                'r.rack_nombre'
            )
            ->where('k.acta_id', '=', $id)->get();
        //dd(DB::getQueryLog());

        //dd($detalles);


        switch ($acta->tm_codigo) {
            case 'RECEPCION':
                $array_titulos = [
                    'CABECERA' => 'REGISTRO DE RECEPCION',
                    'TAB'   => 'REGISTRO DE PRODUCTOS'
                ];

                break;

            case 'DESPACHO':
                $array_titulos = [
                    'CABECERA' => 'REGISTRO DE DESPACHO',
                    'TAB'   => 'DESPACHO DE PRODUCTOS'
                ];

                break;


            case 'CAMUBISALI':
                $array_titulos = [
                    'CABECERA' => 'REGISTRO  CAMBIO DE UBICACION -  [ SALIDA ]',
                    'TAB'   => 'TRASLADO DE PRODUCTOS'
                ];

                break;


            case 'CAMUBIINGR':
                $array_titulos = [
                    'CABECERA' => 'REGISTRO  CAMBIO DE UBICACION - [ INGRESO ]',
                    'TAB'   => 'INGRESO DE PRODUCTOS'
                ];

                break;

            default:
                $array_titulos = [
                    'CABECERA' => 'No encontro el tipo de movimiento',
                    'TAB'   => 'REGISTRO DE PRODUCTOS'
                ];
        }


        // dd($array_titulos);


        return view('actas.show',  ['acta' => $acta, 'detalles' => $detalles, 'array_titulos' => $array_titulos]);
    }






    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('actas.edit', ['acta' => Acta::findOrFail($id)]);
    }







 

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {


        try {

            DB::beginTransaction();



            $kardexs = Kardex::where('acta_id', '=', $id)->get();

            $producto_stock = 0;

            foreach ($kardexs as $kardex) {
                $producto_stock = $this->validarStockProductoIdCasillaId($kardex->prod_id, $kardex->rc_id);

                if ((int)$producto_stock < (int)$kardex->kard_cantidad)
                    throw new Exception('errors', 'Unos de los productos no cuenta no cuenta con el stock suficiente. Por favor verifique');

                /**************** ACTUALIZO EL TOTAL DE PRODUCTO_X_EMPRESA*****************/
                $query_prod = "update productos_x_empresa set prod_stock = (prod_stock - " . $kardex->kard_cantidad . ") where  prod_id = " . $kardex->prod_id;
                DB::update($query_prod);


                /**************** ACTUALIZO LOTE_X_PRODUCTO*******************************/
                $query_lote = "update lote_x_producto set cantidad = (cantidad - " . $kardex->kard_cantidad . "), 
                        updated_at =  '" . date('Y-m-d H:i:s') . "' 
            where  prod_id = " . $kardex->prod_id . " and lote_id = " . $kardex->lote_id;
                DB::update($query_lote);




                /**************** ELIMINACION LOGICA DE LOS REGISTROS DEL KARDEX ***********/
                $kardex->destroy($kardex->kard_id);

                $producto_stock = 0;
            }

            Acta::destroy($id);
            DB::commit();

            return redirect('admin/recepcion')->with('message', 'La operacion se realizo con Exito')->with('operacion', '1');
        } catch (Exception $e) {
            DB::rollBack();

            report($e);
            return redirect('admin/recepcion')->with('message', 'Se encontro un error inesperado en la operación<br>' . $e)->with('operacion', '0');
        }
    }


    public function validarStockProductoIdCasillaId(int $producto_id, $casilla_id)
    {
        $producto_stock = DB::table('kardex')
            ->where('prod_id', $producto_id)
            ->where('rc_id', $casilla_id)
            ->whereNull('deleted_at')
            ->sum('kard_cantidad');

        return (int)$producto_stock;
    }





    public function pdfReporteRecepcion($id)
    {





        //$acta = Acta::findOrFail($id);

        $acta = DB::table('actas  as a')
            ->join('empresas as e', 'a.empr_id', '=', 'e.empr_id')
            ->leftJoin('tipo_documentos as t', 't.tipo_docu_id', '=', 'a.tipo_docu_id')
            ->leftJoin('tipo_movimiento as tm', 'tm.tm_codigo', '=', 'a.tm_codigo')
            ->select(
                'a.acta_id',
                'a.created_at',
                'e.empr_nombre',
                't.tipo_docu_nombre',
                'a.acta_numero_ingr_sali',
                'a.tm_codigo',
                'tm.tm_nombre',
                'a.acta_sub_cliente'
            )
            ->where('a.acta_id', '=', $id)->get();


        $detalles = DB::table('productos_x_empresa  as p')
            ->join('kardex as k', 'k.prod_id', '=', 'p.prod_id')
            ->leftJoin('unidad_medida as um', 'um.id', '=', 'p.unidad_id')
            ->leftJoin('racks_casillas as rc', 'rc.rc_id', '=', 'k.rc_id')
            ->leftJoin('racks as r', 'r.rack_id', '=', 'rc.rack_id')
            ->select(
                'um.unid_nombre',
                'um.unid_codigo',
                'p.prod_id',
                'p.unidad_id',
                'p.prod_nombre',
                'p.prod_lote',
                'prod_serie',
                'prod_sku',
                'prod_codigo',
                'p.prod_stock',
                'p.prod_fecha_vencimiento',
                'k.kard_cantidad',
                'p.prod_stock as total',
                'rc.rc_nombre',
                'r.rack_nombre'
            )
            ->where('k.acta_id', '=', $id)
            ->orderBy('k.created_at', 'asc')->get();





        $pdf = PDF::loadView('pdf.recepcion', ['acta' => $acta, 'detalles' => $detalles]);


        return $pdf->download('Acta-' . $acta[0]->tm_nombre . '-' . $id . '.pdf');
    }


    public function reporte_guia($id)
    {
        $data = [
            'titulo' => 'Styde.net'
        ];


        $acta = DB::table('actas  as a')
            ->join('empresas as e', 'a.empr_id', '=', 'e.empr_id')
            ->leftJoin('tipo_documentos as t', 't.tipo_docu_id', '=', 'a.tipo_docu_id')
            ->leftJoin('tipo_movimiento as tm', 'tm.tm_codigo', '=', 'a.tm_codigo')
            ->select(
                'a.acta_id',
                'a.created_at',
                'e.empr_nombre',
                't.tipo_docu_nombre',
                'a.acta_numero_ingr_sali',
                'a.tm_codigo',
                'tm.tm_nombre'
            )
            ->where('a.acta_id', '=', $id)->get();


        $detalles = DB::table('productos_x_empresa  as p')
            ->join('kardex as k', 'k.prod_id', '=', 'p.prod_id')
            ->leftJoin('unidad_medida as um', 'um.id', '=', 'p.unidad_id')
            ->leftJoin('racks_casillas as rc', 'rc.rc_id', '=', 'k.rc_id')
            ->leftJoin('racks as r', 'r.rack_id', '=', 'rc.rack_id')
            ->select(
                'um.unid_nombre',
                'um.unid_codigo',
                'p.prod_id',
                'p.unidad_id',
                'p.prod_nombre',
                'p.prod_lote',
                'prod_serie',
                'prod_sku',
                'prod_codigo',
                'p.prod_stock',
                'p.prod_fecha_vencimiento',
                'p.prod_peso',
                'k.kard_cantidad',
                'p.prod_stock as total',
                'rc.rc_nombre',
                'r.rack_nombre'
            )
            ->where('k.acta_id', '=', $id)
            ->orderBy('k.created_at', 'asc')->get();



        $pdf = PDF::loadView('pdf.guia-salida', ['acta' => $acta, 'detalles' => $detalles, 'data' => $data]);
        return $pdf->download('Acta-' . $acta[0]->tm_nombre . '-' . $id . '.pdf');
    }

    public function demo()
    {
        return view('pdf.guia-salida');
    }
}
