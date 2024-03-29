<?php

namespace App\Http\Controllers;

use App\Rack;
use App\RackCasillas;
use App\Constants;

use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RackCasillaController extends Controller
{


    public function __construct()
    {
        // LSL PARA LA VALIDACION
        //$this->middleware('auth');
        DB::enableQueryLog();

        
    }



    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        DB::enableQueryLog();
        if ($request) {
            $query    = trim($request->get('search'));
            //$filas = RackCasillas::where('rc_nombre', 'LIKE', '%' . $query . '%')->orderBy('rc_nombre', 'asc')->paginate(10);
            $filas = DB::table('racks  as r')
            ->leftJoin('racks_casillas as rc','r.rack_id','=','rc.rack_id')
            ->select('*')->where('rc_nombre', 'LIKE', '%' . $query . '%')
            ->whereNull('rc.deleted_at')
            ->orderBy('rc.created_at', 'asc')->paginate(Constants::NRO_FILAS);

           // dd(DB::getQueryLog());
            return view('racks_casillas.index', ['filas' => $filas, 'search' => $query]);

        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $filas = Rack::whereNull('deleted_at')->orderBy('rack_nombre', 'asc')->get();
        
        return view('racks_casillas.create',['filas' => $filas]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            $casillas                   = new RackCasillas();
            $casillas->rack_id      = $request->get('cbo_rack_id');
            $casillas->rc_nombre      = strtoupper($request->get('nombre'));
            
            
            $casillas->save();
            
            return redirect('admin/casillas')->with('message','La operacion se realizo con Exito')->with('operacion','1');

        } catch (Exception $e) {
            
            report($e);
            return redirect('admin/casillas')->with('message','Se encontro un error inesperado en la operación<br>'.$e)->with('operacion','0');
            
        } 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\RackCasillas  $rackCasillas
     * @return \Illuminate\Http\Response
     */
    public function show(RackCasillas $rackCasillas)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\RackCasillas  $rackCasillas
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        $filas = Rack::whereNull('deleted_at')->orderBy('rack_nombre', 'asc')->get();

        return view('racks_casillas.edit', ['casillas' => RackCasillas::findOrFail($id),'filas' =>$filas]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\RackCasillas  $rackCasillas
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try
        {
            $casillas                 = RackCasillas::findOrFail($id);
            $casillas->rc_nombre    =  strtoupper($request->get('nombre'));
            $casillas->rack_id     = $request->get('cbo_rack_id');
            
            $casillas->update();

            return redirect('admin/casillas')->with('message','La operacion se realizo con Exito')->with('operacion','1');

        } catch (Exception $e) {
            
            report($e);
            return redirect('admin/casillas')->with('message','Se encontro un error inesperado en la operación<br>'.$e)->with('operacion','0');
            
        } 
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\RackCasillas  $rackCasillas
     * @return \Illuminate\Http\Response
     */
    public function destroy(RackCasillas $rackCasillas)
    {
        //
    }

    
    public function obtenerCasillasIdRack(Request $request)
    {   //dd($request->rack_id);
        //$data = RackCasillas::where('rack_id', $request->rack_id)->orderBy('rc_nombre', 'asc')->get();
        $data = DB::table('racks_casillas as rc')
        ->leftJoin('racks as r', 'r.rack_id', 'rc.rack_id')
        ->leftJoin('casillas_empresas as ce', 'rc.rc_id', 'ce.rc_id') 
        ->leftJoin('empresas as e', 'e.empr_id', 'ce.empr_id')

        ->where('rc.rack_id',$request->rack_id)
        ->whereNull('rc.deleted_at')
        ->select('r.rack_nombre','rc.rc_id','rc.rc_nombre','ce.empr_id', 'ce.deleted_at','e.empr_nombre')
        ->orderBy('rc.rc_nombre','asc')->get();  
        //dd(DB::getQueryLog());

        return $data;

        
    }

    
}
