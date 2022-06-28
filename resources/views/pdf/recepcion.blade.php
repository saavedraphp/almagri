<!DOCTYPE html>
<html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
 
<style> 

body
{
  font-family: Arial, Helvetica, sans-serif;
  font-size: 10;
	
}


#main {
  width: auto;

  border: 1px solid #c3c3c3;
  align-content: center;
  padding:10px
}

#main div {
  width: auto;

  align-content: center;
}

.th_cabecera
{
	font-weight:bold;
	text-align:center;
}
	
 
	
.tituloBoldLeft
{
	font-weight:bold;
	text-align:left;	
}
</style>
</head>
<body>

<div id="main">
  <div style="background-color:CAD7D7;">
    <table width="90%" border="0">
      <tbody>
        <tr>
          <td width="27%" class="tituloBoldLeft">{{MiConstantes::TITULO}}</td>
          <td width="50%"><p class="tituloBoldLeft">ACTA DE {{strtoupper($acta[0]->tipo_movimiento_codigo)}} NRO: {{$acta[0]->acta_id}}</p></td>
          <td width="23%"><table width="200" border="0">
            <tbody>
              <tr>
                <td class="tituloBoldLeft">Fecha</td>
                <td> 
                
                {{date('Y-m-d', strtotime(str_replace('-','/', $acta[0]->created_at)))}}</td>
              </tr>
              <tr>
                <td class="tituloBoldLeft">Hora</td>
                <td>{{date('h:i a', strtotime($acta[0]->created_at))}}</td>
              </tr>
            </tbody>
          </table></td>
        </tr>
      </tbody>
    </table>

  
  </div>
  <div style="background-color:FFFFFF;">
  
  <table width="90%" border="0">
      <tbody  >
        <tr>
          <td colspan="2"><strong>DATOS GENERALES</strong></td>
        </tr>
        <tr>
          <td width="29%"> <p class="tituloBoldLeft">CLIENTE</p></td>
          <td width="71%">{{$acta[0]->empr_nombre}}</td>
        </tr>
        <tr>
          <td class="tituloBoldLeft">TIPO DE DOCUMENTO</td>
          <td>{{$acta[0]->tipo_docu_nombre}}</td>
        </tr>
        <tr>
          <td class="tituloBoldLeft">NRO DOCUMENTO</td>
          <td>{{$acta[0]->acta_numero_ingr_sali}}</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </tbody>
    </table>
    
  </div>
  <div style="background-color:FFFFFF;">
  <?php
$col_small = "10%";
$col_small_l = "20%";
$col_large = "30%";
$col_large_l = "40%";


  ?>
    <table width="100%" border="0">
      <tbody>
          <tr class="th_cabecera">
            <td width="{{$col_small}}">Item</td>
            <td width="{{$col_large_l}}" align="left">Descripcion</td>
            <td width="{{$col_small_l}}">Medida</td>
             <td width="{{$col_small_l}}" align="center">SKU</td>
            <td width="{{$col_small}}" align="center">Cantidad</td>
 
          </tr>

          <?php $x=1?>
          @foreach($detalles as $detalle)
         
         
         
         
      
            
            <tr>
              <td align="center" width="{{$col_small}}">{{$x++}}</td>
              <td width="{{$col_large_l}}">{{$detalle->prod_id}} - {{$detalle->prod_nombre}}</td>
              <td width="{{$col_small_l}}" align="center">{{$detalle->unid_codigo}}<</td>
               <td width="{{$col_small_l}}" align="center">{{$detalle->prod_sku}}</td>
              <td width="{{$col_small}}" align="center">{{abs($detalle->kard_cantidad)}}</td>
    
   
            </tr>
          @endforeach  
        </tbody>
      </table>
  </div>
</div>

<p>&nbsp;</p>

</body>
</html>