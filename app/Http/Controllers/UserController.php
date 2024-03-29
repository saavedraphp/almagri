<?php

namespace App\Http\Controllers;

use App\User;
use App\Constants;
use Exception;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use \Spatie\Permission\Models\Role;

use Illuminate\Http\Request;

class UserController extends Controller
{



    public function __construct()
    {
        // LSL PARA LA VALIDACION
        $this->middleware('auth');
        DB::enableQueryLog();
    }


    public function create()
    {
        $roles = Role::where("name", "!=", "Cliente")->orderBy("name")->get();
        return view("users.create", ["roles" => $roles]);
    }




    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $users =  User::with('roles')->orderBy('created_at', 'asc')
            ->paginate(Constants::NRO_FILAS);
        $query    = trim($request->get('search'));

        $user = User::findOrFail(1);
        $permissionNames = $user->getPermissionNames(); // collection of name strings
        $permissions = $user->permissions;
        //dd($permissions);


        return view("users.index", ['users' => $users, 'search' => $query]);
    }








    public function existeEmail(Request $request)
    {
        try {
            $encontro = User::where("email", $request->get("email"))->count();
            //dd($encontro);
            return $encontro;
        } catch (Throwable $e) {
            return response()->json(['errors' => $e, 'status' => 400], 400);
        }
    }


    public function cambiar_estado_usurio_id($id)
    {
        try {
            $user = User::findOrFail($id);
            $user->estado = ($user->estado == 'ACTI' ? 'DESA' : 'ACTI');
            $resultado = $user->update();

            //dd($resultado);
            return redirect("admin/usuarios")->with('message', 'La operacion se realizo con Exito')->with('operacion', '1');
        } catch (Throwable $e) {
            return redirect("admin/usuarios")->with('message', 'Ocurrio un error inesperado')->with('operacion', '0');
        }
    }






    public function validarModificacionEmail(Request $request)
    {
        try {
            $encontro = User::where("email", $request->get("email"))
                ->where('id', '!=', $request->get('id'))->count();
            //dd($encontro);
            return $encontro;
        } catch (Throwable $e) {
            return response()->json(['errors' => $e, 'status' => 400], 400);
        }
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = new User();
        $user->name = trim($request->get("nombre"));
        $user->email = trim($request->get("email"));
        $user->password =  bcrypt(trim($request->get("password")));

        $user->save();
        $user->roles()->sync($request->get("cbo_rol"));


        return redirect("admin/usuarios")->with('message', 'La operacion se realizo con Exito')->with('operacion', '1');
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
        $roles = Role::where("name", "!=", "Cliente")->orderBy("name")->get();

        $usuario = User::findOrFail($id);

        return view("users.edit", ['usuario' => $usuario, "roles" => $roles]);
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

        try {
            DB::beginTransaction();

            $user = User::findOrFail($id);
            $user->name = $request->get("nombre");
            $user->email = $request->email;

            if ($request->get("chk_password"))
                $user->password =  bcrypt(trim($request->password));


            $user->update();

            $user->roles()->sync($request->get("cbo_rol"));
            DB::commit();

            return redirect("admin/usuarios")->with('message', 'La operacion se realizo con Exito')->with('operacion', '1');
        } catch (Exception $e) {
            DB::rollBack();
            report($e);

            return redirect("admin/usuarios")->with('message', 'Ocurrio un error inesperado')->with('operacion', '0');
        }
    }



    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        User::destroy($id);

        return redirect("admin/usuarios")->with('message', 'La operacion se realizo con Exito')->with('operacion', '1');
    }
}
