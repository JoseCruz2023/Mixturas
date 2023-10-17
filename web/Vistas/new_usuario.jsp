<%-- 
    Document   : new_usuario
    Created on : 15 oct. 2023, 01:44:08
    Author     : alfac
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <a type="button" href="cUsuario?accion=index_usuarios" target="FramePrincipal" class="btn btn-primary btn-block mb-3" title="Click para Regresar a Listado" onclick="">
                    Regresar a Listado
                </a>
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">USUARIOS</h3>
                        <div class="card-tools">
                        </div>
                    </div>
                    <div class="card-body p-0">
                        <ul class="nav nav-pills flex-column">
                            <li class="nav-item active" onclick="">
                                <a href="cUsuario?accion=index_usuarios" target="FramePrincipal" class="nav-link">
                                    <i class="fas fa-clipboard-list"></i> Listado de Usuarios
                                </a>
                            </li>
                            <li class="nav-item" onclick="">
                                <a href="cUsuario?accion=new_usuario" target="FramePrincipal" class="nav-link">
                                    <i class="fas fa-edit"></i> Registrar Usuario
                                </a>
                            </li>
                            <li class="nav-item" onclick="">
                                <a href="#" target="FramePrincipal" class="nav-link">
                                    <i class="fas fa-list-alt"></i> Tipos de Usuario
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
                        <b style="color: #004085;"> REGISTRO DE USUARIOS </b>
                    </div>

                    <div class="card-body">
                            <div class="row">
                                <div class="col-lg-3 col-md-6 col-sm-6 ">
                                    <div class="form-group">
                                        <label for="newUsu_dni"><i class="far fa-address-card"></i> DNI</label>
                                        <input type="number" class="form-control" name="newUsu_dni" id="newUsu_dni" placeholder="Ingrese DNI">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 ">
                                    <div class="form-group">
                                        <label for="newUsu_datos"><i class="far fa-list-alt"></i> DATOS DEL USUARIO</label>
                                        <input type="text" class="form-control" name="newUsu_datos" id="newUsu_datos" placeholder="Ingrese Datos del Usuario">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3 col-md-6 col-sm-6 ">
                                    <div class="form-group">
                                        <label for="newUsu_fono"><i class="fas fa-mobile-alt"></i> CELULAR</label>
                                        <input type="number" class="form-control" name="newUsu_fono" id="newUsu_fono" placeholder="Ingrese Celular">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 ">
                                    <div class="form-group">
                                        <label for="newUsu_direc"><i class="fas fa-street-view"></i> DIRECCIÓN</label>
                                        <input type="text" class="form-control" name="newUsu_direc" id="newUsu_direc" placeholder="Ingrese Direccion del Usuario">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3 col-md-6 col-sm-6 ">
                                    <div class="form-group">
                                        <label for="newUsu_alias"><i class="fas fa-user"></i> USUARIO</label>
                                        <input type="text" class="form-control" name="newUsu_alias" id="newUsu_alias" placeholder="Ingrese Alias">
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 ">
                                    <div class="form-group">
                                        <label for="newUsu_rol"><i class="fas fa-key"></i> ROL</label>
                                        <select name="newUsu_rol" id="newUsu_rol" class="form-control" onchange="">
                                            <option value="0">-- Seleccione -- </option>
                                            <c:forEach var="cag" items="${cargos}">
                                                <option value="${cag.getRol_id()}">${cag.getRol_nombre()}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 ">
                                    <div class="form-group">
                                        <label for="newUsu_contra"><i class="fas fa-user-lock"></i> CONTRASEÑA</label>
                                        <input type="password" class="form-control" name="newUsu_contra" id="newUsu_contra" placeholder="Ingrese Contraseña">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-9 col-md-12 ">
                                    <div class="alert aWarning" style="display: block; font-size: 12px;" id="dvCargando">
                                        <i class="fas fa-plus"></i> &nbsp;Verifique los datos antes de guardar cambios... 
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-8">
                                    <div class="form-group">
                                        <a type="button" class="btn btn-info" href="cUsuario?accion=registrar_usuario" target="FramePrincipal"><i class="fas fa-save"></i> Guardar Datos </a>
                                        <a type="button" class="btn btn-danger" href="cUsuario?accion=index_usuarios" target="FramePrincipal"><i class="fas fa-times"></i> Salir</a>
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



