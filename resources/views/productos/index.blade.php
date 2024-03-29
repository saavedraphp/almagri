@extends('layouts.app')

@section('content')

<div class="container">
<h3>LISTA DE PRODUCTOS 
@can('admin.productos.create') 

  <a href="productos/create"> <button type="button" class="btn btn-success float-right" >{{MiConstantes::NUEVO}}</button></a>  
@endcan  
  <a href="{{route('pdfListaProducto.pdf',($search?$search:'null'))}}" > <button type="button" class="btn btn-success float-right mr-2">Exportar Excel</button></a>

</h3>
 

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

<form action="" method="GET" class="card-header" >
<div class="form-outline">
  <div class="form-row">
    
    <div class="form-group col-md-5" >
      <div class="input-group input-group-sm">
          <input class="form-control form-control-navbar" type="search" placeholder="Buscar" aria-label="Search" name="search" value="{{$search}}">
          <div class="input-group-append">
              <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
              </button>
          </div>
      </div>

    </div>
  </div>

  </div>
 
</form>
<br>

<table class="table table-hover"  id="tablacursos">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">SKU</th>
      <th scope="col">PRODUCTO</th>
      <th scope="col">UBICACION</th>
      <th scope="col">TOTAL</th>
       <th scope="col">EMPRESA</th>
    </tr>
  </thead>
  <tbody id="userList">
  	@foreach($productos as $producto)

    <tr v-for>
      <th > {{ $producto->prod_id }} </th>
      <th > {{ $producto->prod_sku }} </th>
      <td title="{{$producto->created_at}}">{{$producto->prod_nombre}}</td>
      <td >{{$producto->racks_casillas}}</td>
      <td>{{$producto->prod_stock}}</td>
       <td >{{$producto->empr_nombre}}</td>

      <td>


        <form action="{{route('productos.destroy',$producto->prod_id)}}" method="POST" id="frm_destroy{{$producto->prod_id}}">
          @method('DELETE')
          @csrf


         <a href="{{route('kardexPorIdProducto',$producto->prod_id)}}" title="{{MiConstantes::KARDEX}}"><i class="fa fa-align-justify"></i></a> 
         @can('admin.productos.edit') 
         |
         <a href="{{route('productos.edit',$producto->prod_id)}}" title="{{MiConstantes::EDITAR}}"> <i class="far fa-edit" ></i></a> 
         @endcan
         @can('admin.productos.destroy') 
         |
         <a href="javascript:document.getElementById('frm_destroy{{$producto->prod_id}}').submit();" onclick="return confirm('Estas Seguro de Borrar el Registro Id:{{$producto->prod_id}}');" title="{{MiConstantes::ELIMINAR}}"><i class="fas fa-trash-alt"></i></a>
         @endcan
         
         

        </form>

      </td>
    </tr>
    @endforeach
  </tbody>
</table>

<div class="row">
  <div class="mx-auto">
  
    {{$productos->appends(["search" => $search])}}
  </div>
</div>
</div>
 @endsection

 @section('css')
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
    
 <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css">
 @endsection

 @section('scripts')
 
 @endsection