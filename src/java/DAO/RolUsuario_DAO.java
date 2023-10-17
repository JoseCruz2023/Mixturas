
package DAO;

import Config.Conexion;
import Modelo.mRolUsuario;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * AUTOR: Oscar Quispe Montalvo
 * FECHA: 14/10/2023
 */

public class RolUsuario_DAO {
    Conexion conectar = new Conexion();
    
    public List<mRolUsuario> lista_roles(){
        List<mRolUsuario> datos = new ArrayList<>();
        String sql = "SELECT * FROM rol_usuario";
        PreparedStatement ps;
        ResultSet rs;
        try {
            Connection con = conectar.getConexion();
            ps = (PreparedStatement) con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                mRolUsuario r = new mRolUsuario();
                r.setRol_id(rs.getInt("Rol_id"));
                r.setRol_nombre(rs.getString("Rol_nombre"));
                r.setRol_descripcion(rs.getString("Rol_descripcion"));
                datos.add(r);
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return datos;
    }
}
