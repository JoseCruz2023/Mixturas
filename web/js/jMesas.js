function sp_getMesas() {
    $.ajax({
        type: "POST",
        url: "Controlador/cMesa.java",
        data: { accion: 'sp_getMesas' },
        dataType: "json"
    }).done(function (response) {
        /*
        let data = eval(response);
        let opc1 = '', opc2 = '';
        let stat = '';
        let getData = [];
        let html;
        for (let i = 0; i < data.length; i++) {
            if (data[i].estado_cli === '1') {
                stat = '<span class="badge badge-pill badge-success">Activo</span>'; color = 'aPrimary';
                opc2 = '<button type="button" class="btn btn-danger btn-circle" data-toggle="modal" data-target="#" onclick="sp_getInfoCliente_byID(' + data[i].id_cliente + ', 2)" title="Inactivar Cliente"><i class="fas fa-user-times"></i></button> ';
            } else { 
                stat = '<span class="badge badge-pill badge-danger">Inactivo</span>'; color = 'aDanger';
                opc2 = '<button type="button" class="btn btn-success btn-circle" data-toggle="modal" data-target="#" onclick="sp_getInfoCliente_byID(' + data[i].id_cliente + ', 3)" title="Activar Cliente"><i class="fas fa-user-check"></i></button> ';
            }
            opc1 = '<button type="button" class="btn btn-warning btn-circle" data-toggle="modal" data-target="#" title="Editar Datos" onclick="sp_getTipoDocumento(2); sp_getInfoCliente_byID(' + data[i].id_cliente + ', 1)"><i class="fas fa-pen"></i></button>';
                

            html += '<tr>';
                html += '<td>' + data[i].Mesa_numero + '</td>';
                html += '<td>' + data[i].Mesa_descripcion + '</td>';
                html += '<td>' + data[i].Mesa_numsillas + '</td>';
                html += '<td>' + data[i].Mesa_piso + '</td>';
                html += '<td>' + data[i].Mesa_estado + '</td>';
                html += '<td>' + opc1 + '</td>';
                html += '</tr>';
        }
        //crear_dataTable_sinBTN('tblRegistroMesas', getData);
        $('#tblRegistroMesas tbody').html(html);
        */
        console.log(response);
    }).fail(function () {
        console.log("error");
    });
}

function listado(){
    const Url ='Controlador/cMesa';
    const data = {
        accion : "sp_getMesas"
    };
    $.post(Url, data, function(data, status){
        console.log(`${data} and status is ${status}`);
    });
    
}

