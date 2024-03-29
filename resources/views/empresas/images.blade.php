@extends('layouts.app')

@section('content')



<div class="container">

@if ($errors->any())
    <div class="alert alert-danger">
      <h4>Por Favor corriga los siguientes errores   </h4>
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
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




<form action="{{route('upload_mages',$empresa->empr_id)}}" method="POST" 
id="frm_formulario" enctype="multipart/form-data" @submit="checkForm">

@csrf

<p v-if="errors.length">
    <b style="color: red;">Por favor, corrija el(los) siguiente(s) error(es):</b>
    <ul>
      <li v-for="error in errors">@{{error}}</li>
    </ul>
  </p>

   <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Empresa</label>
      {{$empresa->empr_nombre}}  -  {{$empresa->empr_ruc}}
    </div>
  </div>


  <div class="form-group">
  <input type="hidden"  id="ruta_file"  v-model="ruta_file" value="{{$empresa->empr_ruta_img_reporte}}"   name="ruta_file">

        <label for="inputAddress">Seleccione un Archivo</label>
        <div class="input-group mb-3">

            <div class="input-group-prepend">
                <span class="input-group-text">Upload</span>
            </div>

            <div class="custom-file">
                <input type="file" class="custom-file-input" id="img_cabecera" v-on="imagen"   ref="imagen" name="img">
                <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
            </div>

        </div>
  </div>


  <div class="form-group">
    @if(!empty($empresa->empr_ruta_img_reporte))
  <a href="{{ asset('/img/cabecera_reporte/'.$empresa->empr_ruta_img_reporte) }}" target="_blank" rel="noopener noreferrer">Descarga Ahora: {{$empresa->empr_ruta_img_reporte}} </a>
    @endif

    
  </div>

 

  <button type="submit" class="btn btn-primary">Subir Archivo</button>

  @if(!empty($empresa->empr_ruta_img_reporte))
    <a href="{{route('dropImages',$empresa->empr_id)}}" 
    onclick="return confirm('Estas Seguro de Borrar la Imagen de la Empresa Id:{{$empresa->empr_id}}');">
    <button type="button" class="btn btn-danger">Eliminar Imagen</button></a>
  @endif
</form>
</div>
</div>
</div>
@endsection
@section('scripts')
<script src="{{asset('js/empresa_imagen.js') }}" ></script>
@endsection