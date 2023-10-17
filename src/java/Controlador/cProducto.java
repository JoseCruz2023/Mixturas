
package Controlador;

import DAO.Categoria_DAO;
import DAO.Producto_DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alfac
 */
public class cProducto extends HttpServlet {
    Producto_DAO dao_prod = new Producto_DAO();
    Categoria_DAO dao_categ = new Categoria_DAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if(accion != null){
            switch (accion) {
                case "index_productos":
                    List lista = dao_prod.listado_producto();
                    request.setAttribute("productos", lista);
                    request.getRequestDispatcher("/Vistas/index_productos.jsp").forward(request, response);
                    break;
                case "new_producto":
                    List categ = dao_categ.lista_categorias();
                    request.setAttribute("categorias", categ);
                    request.getRequestDispatcher("/Vistas/new_producto.jsp").forward(request, response);
                    break;
            }
        }
        
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
        processRequest(request, response);
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
