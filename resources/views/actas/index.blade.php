@extends('layouts.app')

@section('content')
<h2>LISTA DE RECEPCION
@can('admin.recepcion.create')
 <a href="recepcion/create"> <button type="button" class="btn btn-success float-right mr-3">{{MiConstantes::NUEVO}}</button></a>  
 @endcan
 </h2>


@if($search)
<h6><div class="alert alert-primary" role="alert">
  Resultado de la busqueda '{{$search}}'
  </div>
</h6>
@endif

 

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

<form action="" method="GET">
<div class="form-outline">
  <div class="form-row">
    
    <div class="form-group col-md-5" >
      <div class="input-group input-group-sm">
          <input class="form-control form-control-navbar" type="search" placeholder="Buscar" aria-label="Search" name="search">
          <div class="input-group-append">
              <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
              </button>
          </div>
      </div>

    </div>
    
    <div class="form-group col-md-1">
    </div>

    <div class="form-group col-md-6" style="visibility: hidden;">
          <div class="form-check form-check-inline">
          
        <input
          class="form-check-input"
          type="radio"
          name="rbo_lista"
          id="inlineRadio1"
          value="DESPAC" 
          onchange="this.form.submit()" 
          
        />
        <label class="form-check-label" for="inlineRadio1">Despacho</label>
      </div>

      <div class="form-check form-check-inline" style="visibility: hidden;">
        <input
          class="form-check-input"
          type="radio"
          name="rbo_lista"
          id="inlineRadio2"
          value="ALMACE"
          onchange="this.form.submit()" 
          

        />
        <label class="form-check-label" for="inlineRadio2">Almacenamiento</label>
      </div>

      <div class="form-check form-check-inline" style="visibility: hidden;">
        <input
          class="form-check-input"
          type="radio"
          name="rbo_lista"
          id="inlineRadio3"
          value="ALL"
          onchange="this.form.submit()" 
          
        />
        <label class="form-check-label" for="inlineRadio2">Todos</label>
      </div>
      
    </div>

  </div>
</div>
</form>

<table class="table table-hover" >
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">EMPRESA</th>
       <th scope="col">NOMBRE</th>
       <th scope="col">FECHA</th>      
       <th scope="col">ASIGNACION</th>      
      <th scope="col">ACCIONES</th>
    </tr>
  </thead>
  <tbody id="userList">
  	@foreach($actas as $acta)

    <tr v-for>
      <th scope="row"> {{ $acta->acta_id }} </th>
      <td>{{$acta->empr_nombre}}</td>
       <td>{{$acta->acta_sub_cliente}}</td>
       <td>{{ date('M d Y h:i', strtotime($acta->created_at)) }}</td>
       <td>
       @if($acta->estado_asignacion=='REALIZADO')
       <span class="badge badge-success">REALIZADO</span>
       @else
       <span class="badge badge-danger">PENDIENTE</span>
       @endif


      </td>

      <td>


        <form action="{{route('recepcion.destroy',$acta->acta_id)}}" method="POST" id="frm_destroy{{$acta->acta_id}}">
          @method('DELETE')
          @csrf
 
          
          <a  visibility: hidden href="{{route('asignarProductosCeldas',$acta->acta_id)}}"  title="{{MiConstantes::VER}}"><i class="fas fa-check-circle"></i></a> 

         <a href="{{route('recepcion.show',$acta->acta_id)}}" title="{{MiConstantes::VER}}"><i class="far fa-eye"></i></a> |
         <a href="{{route('reporteRecepcion.pdf',$acta->acta_id)}}" title="{{MiConstantes::REPORTE}}"><i class="far fa-file-pdf"></i></a> |
         @can('admin.recepcion.destroy')
         <a href="javascript:document.getElementById('frm_destroy{{$acta->acta_id}}').submit();" onclick="return confirm('Estas Seguro de Borrar el Registro Id:{{$acta->acta_id}}');" title="{{MiConstantes::ELIMINAR}}"><i class="fas fa-trash-alt"></i></a>
         @endcan
     
        </form>

      </td>
    </tr>
    @endforeach
  </tbody>
</table>

<div class="row">
  <div class="mx-auto">{{$actas->links()}}</div>
</div>
</div>
 @endsection
@section('scripts')

@endsection