const app = new Vue({
    el: '#frm_formulario',

    data: {
        producto: document.getElementById("producto_id").value,
        v_cantidad: document.getElementById("cantidad_id").value,
        selected_casilla: document.getElementById("casilla_id").value,
        selected_casilla_destino:document.getElementById("selected_casilla_destino").value,
 
        total_productos: 0,
        totalProductos_x_Lotes: 0,


        lote: document.getElementById("lote").value,

        data: [],
        productos_acta: [],
        casillas: [],
        casillas_destino:[],





        errors: [],
        selected_empresa: document.getElementById("empresa_id").value,
        grabar: false,
    },


    methods: {








        async getCantidadPoductoPorLote(producto_id, lote_id) {
            try {
                let response = await axios.get(url + `/getTotalProductosLotes`,
                    { params: { producto_id: producto_id, lote_id: lote_id } }).then((response) => {
                        this.totalProductos_x_Lotes = response.data;
                        //console.log('paso 1 => '+ this.totalProductos_x_Lotes);

                    });

            }
            catch (error) {
                console.log(error);
            }


        },



        removeItem: function (element) {
            this.productos_acta.splice(this.productos_acta.indexOf(element), 1);
            console.log(element);
        },


        async add_producto() {

            let existeProductoLote = false;
            let stock_excede = true;

            if (this.selected_empresa == "") {
                alert("Seleccione una Empresa");
                this.$refs.r_empresa.focus();
                return;

            }


            if (this.producto == "") {
                alert("Seleccione un producto");
                this.$refs.r_producto.focus();
                return;

            }


            if (typeof this.selected_casilla.rc_id == 'undefined' || this.selected_casilla.rc_id == "") {
                alert("Seleccione una Casilla Origen");
                this.$refs.r_casilla.focus();
                return;

            }  

            

            console.log('valor cantidad ' + this.producto.prod_stock);


            if (this.v_cantidad == "" || this.v_cantidad <= 0) {
                alert("Ingrese una Cantidad");
                this.v_cantidad = "";
                this.$refs.r_cantidad.focus();
                return;



            }




            console.log(this.v_cantidad + '>' + this.selected_casilla.total)

            if (parseInt(this.v_cantidad) > parseInt(this.selected_casilla.total)) {

                console.log(this.selected_casilla.rc_id);
                alert('No puede retirar mas productos de lo que existe en la casilla');
                this.v_cantidad = "";
                this.$refs.r_cantidad.focus();
                return;
            }
       


            if (typeof this.selected_casilla_destino.rc_id == 'undefined' || this.selected_casilla_destino.rc_id == "") {
                alert("Seleccione una Casilla Destino");
                this.$refs.selected_casilla_destino.focus();
                return;            
            }



            if (this.selected_casilla.rc_id == this.selected_casilla_destino.rc_id) {
                alert("Tiene que eligir un destino diferente al de origen");
                this.$refs.selected_casilla_destino.focus();
                return;            
            }



            if (parseInt(this.v_cantidad) > 0) {





                await this.getCantidadPoductoPorLote(this.producto.prod_id, this.lote);
                //console.log('Paso 2 => '+this.totalProductos_x_Lotes)

                //let array = response.data; array.forEach(element => console.log(element.nombre));

                /*******************************  VALIDA SI EXISTE PRODUCTO (ID Y LOTE) EN LISTA => SUMA ************/
                existeProductoLote = false;
                stock_excede = false;

                const newArray = this.productos_acta.filter((elemento, index) => {
                    console.log('prod_id :' + elemento.prod_id + ' = ' + this.producto.prod_id + '   LoteID :' + elemento.prod_lote + ' = ' + this.lote);
                    console.log('index =>' + index);
                    if (elemento.prod_id === this.producto.prod_id && elemento.prod_lote === this.lote &&
                        elemento.rc_id == this.selected_casilla.rc_id && elemento.rc_id_destino == this.selected_casilla_destino.rc_id) {

                        total = parseInt(elemento.cantidad) + parseInt(this.v_cantidad);

                        if (total > this.producto.prod_stock) {
                            stock_excede = true;
                            console.log("valor del total " + total);
                            alert('La cantidad solicitada de este producto: ' + this.producto.prod_sku + ' excede al stock')

                        }
                        else {
                            console.log(total +'>'+  this.selected_casilla.total);

                            if (total >  this.selected_casilla.total) {
                                alert('Usted esta intentando retirar una cantidad mayor a lo que tiene la casilla');
                            } else {
                                elemento.cantidad = total;
                                
                            }
                        }

                        existeProductoLote = true;
                    }
                    console.log('Existe LoteXProducto');
                });



                /*this.productos_acta.forEach((element, index) => 
                console.log(element, index)
                           
                if(element.prod_id == this.producto.prod_id && element.lote_id == this.lote)
                {
                    alert('encontro');
                }

     

                );*/



                if (this.v_cantidad > this.producto.prod_stock) {
                    console.log("valor del total " + this.producto.prod_stock);
                    alert('La cantidad solicitada de este producto: ' + this.producto.prod_sku + ' excede al stock solicitado')


                } else {

                    if (existeProductoLote == false) {
                        this.productos_acta.push({
                            prod_id: this.producto.prod_id, prod_nombre: this.producto.prod_sku + ' - ' + this.producto.prod_nombre,
                            prod_lote: this.lote, stock_x_lote: this.totalProductos_x_Lotes, cantidad: this.v_cantidad,
                            total: this.producto.prod_stock + this.cantidad, casilla_id: this.selected_casilla.rc_id,
                            rc_id: this.selected_casilla.rc_id,
                            rc_nombre: this.selected_casilla.rack_nombre + ' - ' + this.selected_casilla.rc_nombre,
                            rc_id_destino: this.selected_casilla_destino.rc_id,                            
                            rc_destino: this.selected_casilla_destino.rack_nombre + ' - ' + this.selected_casilla_destino.rc_nombre,
                            
                        });
                    }
                }


                this.$refs.r_producto.focus();
                this.v_cantidad = "";
                this.producto = 0;
                this.selected_casilla = 0;
                this.selected_casilla_destino = 0;
                this.casillas= [];
                //console.log(this.productos_acta);
                /*
                this.calcularTotal();
                */

            }



            //Vue.set(this.lista, this.new_item, {id:this.temp.id ,name:this.temp.name,numcode:this.temp.numcode, cantidad: this.temp.numcode})





        },




        checkForm: function (e) {
            console.log('valor de lista => ' + this.productos_acta.length);

            this.errors = [];

            if (!this.selected_empresa) {
                this.errors.push('Seleccione una empresa.');
            }

 



            if (this.verificar_cambios() == false) {
                this.errors.push('Por favor tiene adicionar  algún producto para generar la Acta');
            }



            if (!this.errors.length) {
                document.frm_formulario.submit();
                return true;

            }

            //e.preventDefault();

        },



        obtenerProductos() {


            axios.get(url + `/productos/empresa`, { params: { empresa_id: this.selected_empresa } }).then((response) => {
                this.data = response.data;

            });
            

            /**************************ACTUALIZAR EL OBJETO SELECTED CASILLAS DE LA EMPRESA */
            axios.get(url + `/obtenerCasillasEmpresaId`, { params: { empresa_id: this.selected_empresa } }).then((response) => {
                this.casillas_destino = response.data;

            });


            this.productos_acta = [];
            
            this.v_cantidad = "";
            this.data = [];
            this.casillas = [];
            

            this.producto = 0;
            this.selected_casilla = 0;
            this.selected_casilla_destino = 0;


        },



        obtenerUbicacionProductoId() {


            axios.get(url + `/obtenerUbicacionProductoId/`+this.producto.prod_id).then((response) => {
                this.casillas = response.data;
                console.log(this.casillas);

            });

            this.v_cantidad = "";
            this.casillas = [];

            this.selected_casilla = 0;
            this.selected_casilla_destino = 0;


        },


        modificarStock: function (producto) {


            if (parseInt(producto.valor) >= 0) {
                //RESTA DESPACHO
                if (document.getElementById('operacion_id').value == 0) {

                    if (parseInt(producto.valor) > parseInt(producto.prod_stock)) {
                        alert('El valor ingresado excede la cantidad del Stock');
                        this.errors.push('Tiene que ingresar una cantidad menor al Stock.');

                        return false;
                    }
                    else {
                        producto.total = parseInt(producto.prod_stock) - parseInt(producto.valor);
                    }
                }


                //ADICIONAR SUMA
                if (document.getElementById('operacion_id').value == 1) {

                    producto.total = parseInt(producto.prod_stock) + parseInt(producto.valor);
                }



                this.total_productos += parseInt(producto.valor);
            }// SI ES NUMERICO

            // document.getElementById('lbTotal').text = producto.total;
            //alert(producto.total);
            //console.log(producto);

        },//END modificarStock

        verificar_cambios() {

            for (i = 0; i < document.getElementsByName('cantidad[]').length; i++) {
                if (document.getElementsByName('cantidad[]')[i].value > 0) {

                    return true;

                }

            }
            return false;




        },

 



    }, // END METHOS







});