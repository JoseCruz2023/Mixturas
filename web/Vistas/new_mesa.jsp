<%-- 
    Document   : new_mesa
    Created on : 13 oct. 2023, 14:51:23
    Author     : alfac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<link rel="stylesheet" type="text/css" href="dist/css/style.css" />


<section class="content-header">
    <div class="container-fluid">
        
    </div>
</section>

<section class="content" style="padding-left: 10px;padding-right: 10px;">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <a type="button" href="cMesa?accion=index_mesas" target="FramePrincipal" class="btn btn-primary btn-block mb-3" title="Click para Regresar a Listado" onclick="">
                    Regresar a Listado
                </a>
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">MESAS</h3>
                        <div class="card-tools">
                        </div>
                    </div>
                    <div class="card-body p-0">
                        <ul class="nav nav-pills flex-column">
                            <li class="nav-item active" onclick="">
                                <a href="cMesa?accion=index_mesas" target="FramePrincipal" class="nav-link">
                                    <i class="fas fa-clipboard-list"></i> Listado de Mesas
                                </a>
                            </li>
                            <li class="nav-item" onclick="">
                                <a href="cMesa?accion=new_mesa" target="FramePrincipal" class="nav-link">
                                    <i class="fas fa-edit"></i> Registrar Mesa
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="card card-primary">
                    <div class="alert alert-primary" role="alert" style="margin-bottom: 0px;">
                        <i class="fas fa-th"></i>
                        <b style="color: #004085;"> REGISTRO DE MESAS </b>
                    </div>

                    <div class="card-body">
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
                                    <div class="form-group">
                                        <label for="newMesa_numero"><i class="fas fa-edit"></i> Nº DE MESA</label>
                                        <input type="number" class="form-control" name="newMesa_numero" id="newMesa_numero" placeholder="Numero de Numero" max="100">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 ">
                                    <div class="form-group">
                                        <label for="newMesa_descripcion"><i class="far fa-list-alt"></i> DESCRIPCION DE LA MESA</label>
                                        <input type="text" class="form-control" name="newMesa_descripcion" id="newMesa_descripcion" placeholder="Ingrese Descripcion de la Mesa">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
                                    <div class="form-group">
                                        <label for="newMesa_sillas"><i class="fas fa-edit"></i> CANT. DE SILLAS</label>
                                        <input type="number" class="form-control" name="newMesa_sillas" id="newMesa_sillas" placeholder="Numero de Numero" max="100">
                                    </div>
                                </div>
                            </div>
                            
                        
                            <div class="row">
                                <div class="col-lg-8 col-md-6 col-sm-12 col-xs-12">
                                    <div class="alert aWarning" style="display: block; font-size: 12px;" id="dvCargando">
                                        <i class="fas fa-plus"></i> &nbsp;Verifique los datos antes de guardar cambios... 
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-8">
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-info" onclick=""><i class="fas fa-save"></i> Guardar Datos </button>
                                        <a type="button" class="btn btn-danger" href="cMesa?accion=index_mesas" target="FramePrincipal"><i class="fas fa-times"></i> Salir</a>
                                    </div>
                                </div>
                            </div>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
