function crear_dataTable(tbl, data) {
    $('#' + tbl).DataTable().destroy();
    $('#' + tbl).DataTable({
        responsive: 'true',
        dom: 'Bfrtip',
        buttons: [
            {
                extend:     'excelHtml5',
                text:       '<i class="fas fa-file-excel"> XLS</i>',
                titleAttr:  'Exportar a Excel',
                className:  'btn btn-success'
            },
            {
                extend:     'pdfHtml5',
                text:       '<i class="fas fa-file-pdf"></i>',
                titleAttr:  'Exportar a PDF',
                className:  'btn btn-danger'
            },
            //'copy', 'csv', 'excel','pdf'
            
        ],
        "paging": true,
        "bDestroy": true,
        "data": data,
        "lengthChange": true,
        "searching": true,
        "ordering": true,
        "info": true,
        "autoWidth": false,
        "language": {
            select: {
                rows: {
                    _: "%d registros seleccionados",
                    0: "No se han seleccionado registros",
                    1: "1 registro seleccionado"
                }
            },

            "emptyTable": "<center><i class='fa fa-exclamation-triangle'></i> No se encontraron datos.</center>",
            "info": "Del _START_ al _END_ de _TOTAL_ ",
            "infoEmpty": "Mostrando 0 registros de un total de 0.",
            "infoFiltered": "(filtrados de un total de _MAX_ registros)",
            "infoPostFix": "(actualizados)",
            "lengthMenu": "Mostrar _MENU_",
            "loadingRecords": "<center><i class='fa fa-spinner fa-spin'></i> Cargando...</center>",
            "processing": "<center><i class='fa fa-spinner fa-spin'></i> Procesando...</center>",
            "search": "",
            "searchPlaceholder": "Dato para buscar",
            "zeroRecords": "<center><i class='fa fa-exclamation-triangle'></i> No se han encontrado coincidencias.</center>",
            "paginate": {
                "first": "<i class='fas fa-angle-double-left'></i>",
                "last": "<i class='fas fa-angle-double-right'></i>",
                "next": "<i class='fas fa-angle-right'></i>",
                "previous": "<i class='fas fa-angle-left'></i>"
            },
            "aria": {
                "sortAscending": "Ordenación ascendente",
                "sortDescending": "Ordenación descendente"
            }
        }
    });
    $('label').attr('width', '100%');
    $('button').addClass('btn btn-primary');
    $('input[type="search"]').addClass('form-control-sm input-border');
}


function crear_dataTable_sinBTN(tbl, data) {
    $('#' + tbl).DataTable().destroy();
    $('#' + tbl).DataTable({
        responsive: 'true',
        dom: 'Bfrtip',
        buttons: [
            //'copy', 'csv', 'excel','pdf'
        ],
        "paging": true,
        "bDestroy": true,
        "data": data,
        "lengthChange": true,
        "searching": false,
        "ordering": true,
        "info": false,
        "autoWidth": false,
        "language": {
            select: {
                rows: {
                    _: "%d registros seleccionados",
                    0: "No se han seleccionado registros",
                    1: "1 registro seleccionado"
                }
            },

            "emptyTable": "<center><i class='fa fa-exclamation-triangle'></i> No se encontraron datos.</center>",
            "info": "Del _START_ al _END_ de _TOTAL_ ",
            "infoEmpty": "Mostrando 0 registros de un total de 0.",
            "infoFiltered": "(filtrados de un total de _MAX_ registros)",
            "infoPostFix": "(actualizados)",
            "lengthMenu": "Mostrar _MENU_",
            "loadingRecords": "<center><i class='fa fa-spinner fa-spin'></i> Cargando...</center>",
            "processing": "<center><i class='fa fa-spinner fa-spin'></i> Procesando...</center>",
            "search": "",
            "searchPlaceholder": "Dato para buscar",
            "zeroRecords": "<center><i class='fa fa-exclamation-triangle'></i> No se han encontrado coincidencias.</center>",
            "paginate": {
                "first": "<i class='fas fa-angle-double-left'></i>",
                "last": "<i class='fas fa-angle-double-right'></i>",
                "next": "<i class='fas fa-angle-right'></i>",
                "previous": "<i class='fas fa-angle-left'></i>"
            },
            "aria": {
                "sortAscending": "Ordenación ascendente",
                "sortDescending": "Ordenación descendente"
            }
        }
    });
    $('label').attr('width', '100%');
    $('button').addClass('btn btn-primary');
    $('input[type="search"]').addClass('form-control-sm input-border');
}


