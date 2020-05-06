   /*
   *
   * funcion para ordenar tablas como lista
    */
    $(document).ready(function () {
        'use strict';
          $("#lista").DataTable();
     
    });



         


    $(document).ready(function () {
         SGI.validacion_general('#form-principal');
        $('#icono').on('blur', function () {
            $('.icono').addClass($(this).val());
        });
    });


    $(document).ready(function () {
         SGI.validacion_general('#form-principal');
    });





    /*
    *
    * footer
     */
    
       $(document).ready(function () {
        SGI.tooltip();
        SGI.eliminar();
   });
   /*
    * Evitar enter en los forms
    */
   $(document).on("keydown", function (e) {
       if (e.which === 8 && !$(e.target).is("input, textarea")) {
           e.preventDefault();
       }
   });


 

