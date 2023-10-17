
package DAO;

import Config.Conexion;
import Modelo.mProducto;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Producto_DAO {
    Conexion conectar = new Conexion();
    
    //LISTADO DE MESAS
    public List<mProducto> listado_producto(){
        List<mProducto> datos = new ArrayList<>();
        String sql = "SELECT * FROM producto";
        PreparedStatement ps;
        ResultSet rs;
        try {
            Connection con = conectar.getConexion();
            ps = (PreparedStatement) con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                mProducto p = new mProducto();
                p.setProd_codigo(rs.getString("Prod_codigo"));
                p.setProd_categoria(rs.getString("Prod_categoria"));
                p.setProd_descripcion(rs.getString("Prod_descripcion"));
                p.setProd_marca(rs.getString("Prod_marca"));
                p.setProd_unidmed(rs.getString("Prod_unidmed"));
                p.setProd_preciounit(rs.getDouble("Prod_preciounit"));
                datos.add(p);
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return datos;
    }
    
}
