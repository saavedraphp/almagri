@extends('layouts.login_app')

@section('content')
{{--'valor session'.session('empresa_id') --}}
<div class="container">
@if(Session::get('operacion')=='1')
<div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  {{Session::get('message')}}
</div>
@endif

@if(Session::get('operacion')=='0')
  <div class="alert alert-danger alert-dismissible" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    {{Session::get('message')}}
  </div>

@endif
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">CUENTA DESACTIVADA</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    Tu Cuenta no esta activa, por favor comunicate con el administrador
                    <a href="" class="btn btn-primary">Login</a> 

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
