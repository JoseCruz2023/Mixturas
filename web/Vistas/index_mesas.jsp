<%-- 
    Document   : index_mesas
    Created on : 13 oct. 2023, 10:46:47
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
                <a type="button" href="cMesa?accion=new_mesa" target="FramePrincipal" class="btn btn-primary btn-block mb-3" title="Click para Registrar Nueva Mesa" onclick="">
                    Registrar Mesa
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
                    <div class="alert alert-primary" role="alert">
                        <i class="fas fa-th"></i>
                        <b style="color: #004085;"> MENU PRINCIPAL - LISTADO DE MESAS </b>
                    </div>

                    <div class="col-xl-12 col-sm-12 col-md-12">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <div class="alert aInfo" style="display: none; font-size: 12px;" id="dvCargando">
                                    <i class="fas fa-spinner fa-spin"></i> Generando reporte, espere o vuelva a cargar la pagina... 
                                    <button type="button" style="color: #ffffff; background-color: #28a745; border-color: #28a745; border-radius: 0.4rem; " title="Click para Actualizar" onclick="">
                                        <i class="fas fa-sync-alt"></i> Actualizar
                                    </button>
                                </div>
                            </div>
                        </div>
                        
                        <div class="table-responsive">
                            <table class="table table-hover table-sm" style="width: 100%;
                                                                            font-size: 12px; 
                                                                            cursor: pointer;
                                                                            text-align: center;
                                                                            text-transform: uppercase;" id="tblRegistroMesas">
                                <thead class="table-primary">
                                    <tr>
                                        <th align="center">#</th>
                                        <th align="center">Nº MESA</th>
                                        <th align="center">DESCRIPCION</th>
                                        <th align="center">SILLAS</th>
                                        <th align="center">PISO</th>
                                        <th align="center">ESTADO</th>
                                        <th align="center">OPC.</th>
                                    </tr>
                                </thead>
                                <tbody class="text-primary text-left" style="text-align: center !important;">
                                    <c:forEach var="me" items="${mesas}">
                                    <tr>                                  
                                        <td></td>
                                        <td>${me.getMesa_numero()}</td>
                                        <td>${me.getMesa_descripcion()}</td>
                                        <td>${me.getMesa_numsillas()}</td>
                                        <td>${me.getMesa_piso()}</td>                                        
                                        <td><span class="badge badge-pill badge-success">Activo</span></td>
                                        <td>
                                            <a href="#" title="Click para Inactivar" onclick=""><i class="fas fa-toggle-off text-danger"></i></a>
                                            <a></a>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                                <tfoot class="table-warning">
                                    <tr class='noSearch hide'>
                                        <td colspan="7"></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

