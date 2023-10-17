
package DAO;

import Config.Conexion;
import Modelo.mCategoria;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * AUTOR: 
 * FECHA: 
 */

public class Categoria_DAO {
    Conexion conectar = new Conexion();
    
    public List<mCategoria> lista_categorias(){
        List<mCategoria> datos = new ArrayList<>();
        String sql = "SELECT * FROM categoria";
        PreparedStatement ps;
        ResultSet rs;
        try {
             Connection con = conectar.getConexion();
            ps = (PreparedStatement) con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                mCategoria c = new mCategoria();
                c.setCateg_codigo(rs.getString("Categ_codigo"));
                c.setCateg_nombre(rs.getString("Categ_nombre"));
                c.setCateg_descripcion(rs.getString("Categ_descripcion"));
                c.setCateg_estado(rs.getInt("Categ_estado"));
                datos.add(c);
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return datos;
    }
    
}
