<%-- 
    Document   : slider
    Created on : 13 oct. 2023, 23:55:07
    Author     : alfac
--%>

    
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
                                <li class="nav-item" onclick="">
                                    <a href="cMesa?accion=index_mesas" target="FramePrincipal" class="nav-link" > <!-- href="Controlador?menu=index_mesas&accion=listar" -->
                                        <i class="fas fa-check nav-icon text-warning"></i>
                                        <p class="text-warning">
                                            Mesas
                                        </p>
                                    </a>
                                </li>
                                <li class="nav-item" onclick="">
                                    <a href="cProducto?accion=index_productos" target="FramePrincipal" class="nav-link">
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
                                        <i class="fas fa-pen nav-icon text-primary"></i>
                                        <p class="text-primary">
                                            Registrar Nueva
                                        </p>
                                    </a>
                                </li>
                                <li class="nav-item" onclick="">
                                    <a href="#" class="nav-link">
                                        <i class="fas fa-clipboard-list nav-icon text-primary"></i>
                                        <p class="text-primary">
                                            Listado
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
                                <li class="nav-item" onclick="">
                                    <a href="#" class="nav-link">
                                        <i class="fas fa-chart-line nav-icon text-success"></i>
                                        <p class="text-success">
                                            Comandas por Cobrar
                                        </p>
                                    </a>
                                </li>
                                <li class="nav-item" onclick="">
                                    <a href="#" class="nav-link">
                                        <i class="fas fa-chart-line nav-icon text-success"></i>
                                        <p class="text-success">
                                            Registrar gasto(egreso)
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
                          <a href="#" target="FramePrincipal"  class="nav-link">
                            <i class="fas fa-users nav-icon text-dark"></i>
                            <p>
                              Clientes
                            </p>
                          </a>
                        </li>            
                        <li class="nav-item" onclick="">
                          <a href="cUsuario?accion=index_usuarios" target="FramePrincipal" class="nav-link">
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
                    <li class="nav-item has-treeview menu-open" onclick="" data-toggle="modal" data-target="#modal_new_mesa">
                        <form action="Validar" method="POST">
                            <a class="nav-link active bg-danger" >
                                <i class="fas fa-power-off nav-icon"></i>
                                <p>Cerrar Sesión</p>
                            </a>
                        </form>
                    </li>
                  </ul>

                </nav>
            </div>
        </aside>
