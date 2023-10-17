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
        <!-- LIBRERIA BOOTSTRAP -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Sistema Mixturas - Control de Comandas</title>
        <link rel="icon" type="image/png" href="img/logo_mixturas.jpeg"/>
        
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
        <link rel="stylesheet" href="dist/css/adminlte.min.css">
                
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
        
        
        <!-- IMPORTAMOS LOS MODALS -->
        
        <!-- IMPORTAMOS EL SLIDER -->
        <jsp:include page="slider.jsp" />
        
        <!-- INSERTAMOS EL IFRAME -->
        <div class="content-wrapper" style="margin-top: 0px;">
            <div style="height: 600px">
                <iframe name="FramePrincipal" id="FramePrincipal" style="width: 100%; height: 100%; border: none">
                </iframe>
            </div>
        </div>
        
        
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
