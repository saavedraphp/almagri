<?php

namespace App\Http\Controllers;
use App\Constants;
use App\Acta;
use App\Kardex;
use App\Producto;
use Exception;
use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;

class DespachoController extends Controller
{


    public function __construct()
    {
        // LSL PARA LA VALIDACION
        $this->middleware('auth');
        //$this->foo = $foo;
        DB::enableQueryLog();

    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
            
        $busqueda ="";
        $query ="";
        $nro_documento = trim($request->get('search'));

        if(strlen($nro_documento)>0)
        {  
            $actas = DB::table('actas  as a')
            ->leftJoin('tipo_documentos as td','a.tipo_docu_id','=','td.tipo_docu_id')
            ->leftJoin('empresas as e','a.empr_id','=','e.empr_id')
            ->leftJoin('tipo_movimiento as tm','tm.tm_codigo','=','a.tm_codigo')
            ->select('a.acta_id', 'a.tipo_docu_id',  'a.empr_id', 'e.empr_nombre','td.tipo_docu_nombre',
            'a.acta_costo','a.acta_numero_ingr_sali', 'a.tm_codigo', 'tm.tm_codigo','tm.tm_nombre', 
            'a.acta_sub_cliente', 'a.created_at')
            ->where('tm.tm_codigo', '=', 'DESPACHO')
            ->where(function($query) use ($request){
                $query->where('empr_nombre', 'LIKE', '%' . $request->search . '%')
                ->orWhere('a.acta_sub_cliente', 'LIKE', '%' . $request->search . '%')
                ->orWhere('empr_nombre', 'LIKE', '%' . $request->search . '%');
                })
            ->whereNull('a.deleted_at')
            ->orderBy('a.created_at', 'desc')->paginate(Constants::NRO_FILAS);
            $busqueda = 'nro_documento';
            $query = $request->get('nro_documento');
            //dd($actas->toSql());

             
        }
        else
        {           
             
        $actas = DB::table('actas  as a')
        ->leftJoin('tipo_documentos as td','a.tipo_docu_id','=','td.tipo_docu_id')
        ->leftJoin('empresas as e','a.empr_id','=','e.empr_id')
        ->leftJoin('tipo_movimiento as tm','tm.tm_codigo','=','a.tm_codigo')
        ->select('a.acta_id', 'a.tipo_docu_id',  'a.empr_id', 'e.empr_nombre','td.tipo_docu_nombre','a.acta_costo',
        'acta_numero_ingr_sali', 'a.tm_codigo','tm.tm_nombre',
        'tm.tm_codigo', 'a.acta_sub_cliente', 'a.created_at')
        ->where('tm.tm_codigo', '=', 'DESPACHO')
        ->whereNull('a.deleted_at')
        ->orderBy('a.created_at', 'desc')->paginate(Constants::NRO_FILAS);
        }

            //echo $actas;  
           // dd(DB::getQueryLog());

            //dd($actas->toSql());
            //dd($actas);
            return view('despacho.index', ['actas' => $actas, 'search' => $query,'busqueda' =>$busqueda]);



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
        

        return view('despacho.create',['lotes' => $lotes]);
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
            $acta->tm_codigo =                  'DESPACHO';  // DESPACHO
            $acta->acta_sub_cliente =              $request->get('sub_cliente');
            $acta->tipo_docu_id =           $request->get('tipo_documento');
            $acta->acta_numero_ingr_sali =         $request->get('nro_documento');
            //  $acta->acta_encargado_id =        $request->get('cbo_empresa');
            //  $acta->acta_supervisor_id =        $request->get('cbo_empresa');
            $acta->acta_comentario =        $request->get('comentario');        
    
            $acta->save();
     
            
            $kardex = new Kardex;
    
            /******************************************************/
            /********************** INSERT KARDEX  ****************/
            /******************************************************/
    
    
            $items = $request->get('prod_id');
            $casillas = $request->get('rc_id');
            $cantidad = $request->get('cantidad');
            $lote = $request->get('lote');
            
            if($request->get('cantidad') !==null )
            {
                foreach ($items  as $key => $value) 
                    {
                        if($cantidad[$key] > 0 )
                        {
                         $answers[] = [
                         'acta_id' => $acta->acta_id,
                         'prod_id' => $value,
                         'lote_id' => $lote[$key],
                         'rc_id' => $casillas[$key],
                         'kard_cantidad' => -$cantidad[$key],
                         'created_at' => date('Y-m-d H:i:s')
    
                         ];
                        
                         /************ ACTUALIZAR CANTIDAD PRODUCTOS*/
                         $query = "update productos_x_empresa set prod_stock = (prod_stock - ".$cantidad[$key].") where  prod_id = ".$value;
                         $resul = DB::update($query);

                         /************ ACTUALIZAR CANTIDAD PRODUCTOS X LOTE*/
                         $query_lote = "update lote_x_producto set cantidad = (cantidad - ".$cantidad[$key]."),
                         updated_at =  '".date('Y-m-d H:i:s')."' where  prod_id = ".$value." and lote_id = ".$lote[$key];
                         DB::update($query_lote);                         
        
                        }
    
                    }
                    Kardex::insert($answers);
                    
            }
    
     
            DB::commit();
            return redirect('admin/despacho')->with('message','Datos cargados correctamente')->with('operacion','1');
    
            } catch (Exception $e) {
             DB::rollBack();    
                report($e);
                return redirect('admin/despacho')->with('message','Se encontro un error inesperado en la operación<br>'.$e)->with('operacion','0');
    
            }        
                
            /* FIN STORE */
    }




    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {


        try 
        {

            DB::beginTransaction();
            

            $kardexs = Kardex::where('acta_id','=', $id)->get();

            //dd($kardexs);

            foreach ($kardexs as $kardex) {
                
            /**************** ACTUALIZO EL TOTAL DE PRODUCTO_X_EMPRESA*/
            $query_prod = "update productos_x_empresa set prod_stock = (prod_stock + ".abs($kardex->kard_cantidad).") where  prod_id = ".$kardex->prod_id;
            DB::update($query_prod);
            

            /**************** ACTUALIZO LOTE_X_PRODUCTO*/
            $query_lote = "update lote_x_producto set cantidad = (cantidad + ".abs($kardex->kard_cantidad)."), 
                        updated_at =  '".date('Y-m-d H:i:s')."' 
            where  prod_id = ".$kardex->prod_id." and lote_id = ".$kardex->lote_id;
            DB::update($query_lote);
    


            
                //ELIMINO REGISTROS KARDEX
                $kardex->destroy($kardex->kard_id);
            }

            Acta::destroy($id);
            DB::commit();

            return redirect('admin/despacho')->with('message','La operacion se realizo con Exito')->with('operacion','1');
        
        } catch (Exception $e) {
            DB::rollBack();    
            
            report($e);
            return redirect('admin/despacho')->with('message','Se encontro un error inesperado en la operación<br>'.$e)->with('operacion','0');
            
        } 

    }




}
