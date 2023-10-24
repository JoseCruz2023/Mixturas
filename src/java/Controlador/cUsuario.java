
package Controlador;

import DAO.RolUsuario_DAO;
import DAO.Usuario_DAO;
import Modelo.mUsuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alfac
 */

@WebServlet(name="cUsuario", urlPatterns = "/cUsuario")
public class cUsuario extends HttpServlet {
    
    Usuario_DAO dao_usu = new Usuario_DAO();
    mUsuario mUsu = new mUsuario();
    RolUsuario_DAO dao_rol = new RolUsuario_DAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if(accion != null){
            switch (accion) {
                case "index_usuarios":
                    List lista = dao_usu.listado_usuarios();
                    request.setAttribute("usuarios", lista);
                    request.getRequestDispatcher("/Vistas/index_usuarios.jsp").forward(request, response);
                    break;
                case "new_usuario":
                    List roles = dao_rol.lista_roles();
                    request.setAttribute("cargos", roles);
                    request.getRequestDispatcher("/Vistas/new_usuario.jsp").forward(request, response);
                    break;
                case "registrar_usuario":
                    String msje;
                    String alias = request.getParameter("newUsu_alias");
                    String contra = request.getParameter("newUsu_contra");
                    String dni = request.getParameter("newUsu_dni");
                    String datos = request.getParameter("newUsu_datos");
                    String direccion = request.getParameter("newUsu_direc");
                    String celular = request.getParameter("newUsu_fono");
                    int id_rol = 2;
                    mUsu.setUsu_alias(alias);
                    mUsu.setUsu_contra(contra); 
                    mUsu.setUsu_dni(dni);
                    mUsu.setUsu_datos(datos);
                    mUsu.setUsu_direccion(direccion);
                    mUsu.setUsu_fono(celular); 
                    mUsu.setUsu_rol(id_rol);
                    if(dao_usu.Registrar_Usuario(mUsu)==true){
                        msje = "REGISTRADO OK";
                        request.setAttribute("mensaje", msje);
                        request.getRequestDispatcher("cUsuario?accion=index_usuarios").forward(request, response);
                    }else{
                        request.getRequestDispatcher("cUsuario?accion=new_usuario").forward(request, response);
                    };
                    break;
            }
        }
        
        /**
        try {
            if(accion != null){
                switch (accion) {
                    case "verificar":
                        Verificar(request, response);
                        break;
                    case "salir":
                        Cerrar_Sesion(request, response);
                        break;
                    default:
                        response.sendRedirect("index.jsp");
                }
            }else{
                response.sendRedirect("index.jsp");
            }
        }catch (Exception e) {
            System.out.println(e);
        }
        */
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    
    
   
    
}
