<%-- 
    Document   : Index
    Created on : 4 oct. 2023, 21:35:29
    Author     : alfac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <title>Acceso al Sistema - Mixturas</title>
    </head>
    <body class="hold-transition lockscreen text-sm" style="background-color: #e9ecef "> <!-- #ffee00-->
        <div class="">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header mt-2" style="background-color: #ffffff">
                                        <center>
                                            <img src="img/logo_mixturas.jpeg" style="width: 200px; height: 110px;">
                                        </center>
                                    </div>
                                    <center>
                                        <p style="font-size: 30px;font-style: italic;color: #ff6300; margin-bottom: 0px;" class="mt-2">¡Bienvenido!</p>
                                    </center>
                                    
                                    <!--<h3 class="text-center font-weight mt-2">Ingreso al Sistema</h3>-->
                                    <div class="card-body">
                                        <!--<h3>Ingreso al Sistema</h3>-->
                                        <form id="frmLogin" action="Validar" method="POST"> <!-- cUsuario?accion=verificar -->
                                            <div class="col-xl-12 col-md-12">
                                                <div class="form-floating mb-3">
                                                    <input class="form-control" name="usuario" type="text" placeholder="USUARIO" maxlength="20"/>
                                                </div>
                                            </div>
                                            <div class="col-xl-12 col-md-12">
                                                <div class="input-group mb-3">
                                                    <input class="form-control" name="contra" type="password" placeholder="CONTRASEÑA" maxlength="20"/>
                                                </div>
                                            </div>
                                            
                                            <div class="alert alert-danger text-center" id="alerta" role="alert" style="display:none;">
                                                <p class="mb-0">Por favor, pongase en contacto con:<br />
                                                    <i class="fa fa-user"></i> Administrador del sistema<br />
                                                </p>
                                            </div>

                                            <div class="help-block text-center mt-4">
                                                Ingrese Usuario y contraseña para Iniciar Sesión
                                            </div>
                                            <div class="text-center">
                                                <a href="#" onclick="$('#alerta').show();" class="warning">¿Olvidaste tu Contraseña?</a>
                                            </div>
                                            <div class="form-group mt-4 mb-0">
                                                <center>
                                                    <input type="submit" class="btn btn-primary" name="accion" value="Ingresar" style="width: 90%"/>
                                                    <!--<i class="fa fa-chevron-circle-right"></i> -->
                                                </center>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <br>
            <div class="lockscreen-footer text-center">
              Copyright &copy; 2023 <b><a href="" target="_blank" class="text-black">www.mixturas.com</a></b><br>
              All rights reserved
            </div>

        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
