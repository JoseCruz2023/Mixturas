<%-- 
    Document   : Principal
    Created on : 10 oct. 2023, 15:30:32
    Author     : OSCAR QUISPE MONTALVO  
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="dist/css/adminlte.min.css">
        <!-- LIBRERIA BOOTSTRAP -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Sistema Mixturas - Control de Comandas</title>
        
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link rel="stylesheet" href="dist/css/adminlte.min.css">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
        
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.20/b-1.6.1/b-html5-1.6.1/datatables.min.css" />
        <link rel="stylesheet" type="text/css" href="dist/css/style.css" />
        
    </head>
    
    <body>        
        <div class="wrapper">
        <nav class="main-header navbar navbar-expand border-bottom navbar-dark" style="background-color: #007bff;"><!-- main-header navbar navbar-expand bg-info navbar-dark border-bottom -->
            <!-- main-header navbar navbar-expand bg-info navbar-light border-bottom-->
            <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                  <a href="#" class="nav-link">Sistema Control de Comandas </a>
                </li>
            </ul>
            
            <!-- MENU SUPERIOR -->
            <ul class="navbar-nav ml-auto">
                <li class="nav-menu dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fas fa-cog"></i> Inicio
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right" style="left: inherit; right: 0px; ">
                        <a href="#" class="dropdown-item" onclick="">
                            <i class="fas fa-user mr-2"></i> Mi Perfil
                        </a>
                        <a href="#" class="dropdown-item" onclick="">
                            <i class="fas fa-wrench mr-2"></i> Cambiar Contraseña
                        </a>
                        <div class="dropdown-divider"></div>
                        <form id="frm_salir" action="Validar" method="POST">
                            <button href="#" class="dropdown-item" name="accion" value="salir"> 
                                <i class="fas fa-power-off mr-2"></i> Cerrar Sesión
                            </button>
                        </form>
                    </div>
                </li>
            </ul>
        </nav>
            
            
        <aside class="main-sidebar sidebar-light-info elevation-4">
            <a href="#" alt="" class="brand-link">
                <center><img src="img/logo_mixturas.jpeg" style="width: 190px;height: 85px;" alt="" style="opacity: .8"></center>
            </a>
            <div class="sidebar">
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="dist/img/avatar5.png" class="img-circle elevation-2" style="width: 50px;height: 50px;" alt="User Image">
                    </div>
                    <div class="info" style="text-transform: uppercase;margin-bottom: -12px; margin-top: -8px;">
                        <a href="#" class="d-block" style="font-size: 12px;">${usuario}</a>
                        <input type="hidden" name="id_rol" id="id_rol" value="">
                        <input type="hidden" name="id_emp" id="id_emp" value="">
                        <p style="font-size: 9px; margin-top: 0px; margin-bottom: 0px; font-weight: bold; display:block;">ADMINISTRADOR</p>
                        <p style="font-size: 9px; margin-top: 0px; margin-bottom: 0px; font-weight: bold; display:block;">Mixturas</p>
                    </div>
                </div>

                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <li class="nav-item has-treeview" onclick="">
                            <a href="#" class="nav-link active bg-warning">
                                <i class="nav-icon fas fa-home"></i>
                                <p>
                                    Inicio
                                    <i class="fas fa-sort right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item" onclick="$('#main_div').load('Vistas/index_mesas.jsp');listado();">
                                    <a href="#" class="nav-link" >
                                        <i class="fas fa-check nav-icon text-warning"></i>
                                        <p class="text-warning">
                                            Mesas
                                        </p>
                                    </a>
                                </li>
                                <li class="nav-item" onclick="$('#main_div').load('Vistas/index_productos.jsp');">
                                    <a href="#" class="nav-link">
                                        <i class="fas fa-check nav-icon text-warning"></i>
                                        <p class="text-warning">
                                            Productos
                                        </p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>

                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <li class="nav-item has-treeview" onclick="">
                            <a href="#" class="nav-link active bg-primary">
                                <i class="nav-icon fas fa-edit"></i>
                                <p>
                                    Comandas <i class="fas fa-sort right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item" onclick="">
                                    <a href="#" class="nav-link">
                                        <i class="fas fa-dolly nav-icon text-primary"></i>
                                        <p class="text-primary">
                                            Pendientes de Pago
                                        </p>
                                    </a>
                                </li>
                                <li class="nav-item" onclick="">
                                    <a href="#" class="nav-link">
                                        <i class="fas fa-pen nav-icon text-primary"></i>
                                        <p class="text-primary">
                                            Registrar Nueva
                                        </p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>

                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <li class="nav-item has-treeview">
                            <a href="#" class="nav-link active bg-success">
                                <i class="nav-icon fas fa-dollar-sign"></i>
                                <p>
                                    Finanzas <i class="fas fa-sort right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item" onclick="">
                                    <a href="#" class="nav-link">
                                        <i class="fas fa-cash-register nav-icon text-success"></i>
                                        <p class="text-success">
                                            Cierres de Caja
                                        </p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>

                  <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <li class="nav-item has-treeview">
                      <a href="#" class="nav-link active bg-dark">
                        <i class="nav-icon fas fa-wrench"></i>
                        <p>
                          Mantenimiento
                          <i class="fas fa-sort right"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview">
                        <li class="nav-item" onclick="">
                          <a href="#" class="nav-link">
                            <i class="fas fa-user nav-icon text-dark"></i>
                            <p>
                              Mi Perfil 
                              <span class="badge badge-danger right">New</span>
                            </p>
                          </a>
                        </li>
                        <li class="nav-item" onclick="">
                          <a href="#" class="nav-link">
                            <i class="fas fa-users nav-icon text-dark"></i>
                            <p>
                              Clientes
                            </p>
                          </a>
                        </li>            
                        <li class="nav-item" onclick="">
                          <a href="#" class="nav-link">
                            <i class="fas fa-user-lock nav-icon text-dark"></i>
                            <p class="text-dark">
                              Usuarios
                            </p>
                          </a>
                        </li>
                      </ul>
                    </li>
                  </ul>
                  <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <li class="nav-item has-treeview menu-open" onclick="" data-toggle="modal" data-target="">
                        <form action="Validar" method="POST">
                            <a class="nav-link active bg-danger" name="accion" value="salir">
                                <i class="fas fa-power-off nav-icon"></i>
                                <p>Cerrar Sesión</p>
                            </a>
                        </form>
                    </li>
                  </ul>

                </nav>
            </div>
        </aside>
                
        <!-- LISTADO DE MESAS -->
        <div class="content-wrapper" id="main_div" name="main_div" style="margin-top: 0px;">
            <section class="content-header">
                <div class="container-fluid px-4">         
                    <h1 class="mt-4">MENU PRINCIPAL</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Bienvenido</li>
                    </ol>
                    <div class="row">
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-success text-white mb-4">
                                <div class="card-body" onclick="">MESA 01</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="#">Ver Comanda</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-danger text-white mb-4">
                                <div class="card-body" onclick="">MESA 02</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="#">Ver Comanda</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-success text-white mb-4">
                                <div class="card-body" onclick="">MESA 03</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="#">Ver Comanda</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-success text-white mb-4">
                                <div class="card-body" onclick="">MESA 04</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="#">Ver Comanda</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-success text-white mb-4">
                                <div class="card-body" onclick="">MESA 05</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="#">Ver Comanda</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card bg-success text-white mb-4">
                                <div class="card-body" onclick="">MESA 06</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="#">Ver Comanda</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <!--
        <div class="wrapper">
            <div class="m-4" style="margin-top: 0px; height: 550px">
                <iframe name="miFrame" id="miFrame" style="width: 100%; height: 100%; border: none;">
                
                </iframe>
            </div>
        </div>
        -->
        
        <!-- IMPORTAMOS LOS MODALS -->
        <jsp:include page="Vistas/new_mesa.jsp" />
        <jsp:include page="Vistas/new_producto.jsp" />
        
        <!-- FOOTER -->
        <footer class="main-footer">
            <div class="float-right d-none d-sm-block">
                <p>Version 1.0</p>
            </div>
            <center>
                Copyright &copy; 2023 <b><a href="" class="text-black">www.mixturas.com</a></b><br></strong>Todos los derechos reservados
            </center>
        </footer>
        
        <aside class="control-sidebar control-sidebar-dark">
            
        </aside>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
        
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script type="text/javascript" src="dist/js/adminlte.min.js"></script>
        <script type="text/javascript" src="dist/js/demo.js"></script>  
        
        <script type="text/javascript" src="js/jGlobal.js"></script>
        <script type="text/javascript" src="js/jUsuarios.js"></script>
        <script type="text/javascript" src="js/jMesas.js"></script>
    </body>
</html>
