
package DAO;

import Config.Conexion;
import Modelo.mUsuario;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * AUTOR: Oscar Quispe Montalvo
 * FECHA: 09/10/2023
 */

public class Usuario_DAO {
    Conexion conectar = new Conexion();
    
    public boolean validar_usuario(mUsuario u){
        PreparedStatement ps;
        ResultSet rs;
        String sql = "SELECT * FROM usuario WHERE Usu_alias=? AND Usu_contra=?";
        try {
            ps = (PreparedStatement) conectar.getConexion().prepareStatement(sql);
            ps.setString(1, u.getUsu_alias());
            ps.setString(2, u.getUsu_contra());
            rs = ps.executeQuery();
            if(rs.next()){
                u.setUsu_datos(rs.getString("Usu_datos"));
                return true;
            }
            return false;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    public List<mUsuario> listado_usuarios(){
        List<mUsuario> datos = new ArrayList<>();
        String sql = "SELECT * FROM view_usuarios";
        PreparedStatement ps;
        ResultSet rs;
        try {
            Connection con = conectar.getConexion();
            ps = (PreparedStatement) con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                mUsuario u = new mUsuario();
                u.setUsu_id(rs.getInt("Usu_id"));
                u.setUsu_alias(rs.getString("Usu_alias"));
                u.setUsu_contra(rs.getString("Usu_contra"));
                u.setUsu_dni(rs.getString("Usu_dni"));
                u.setUsu_datos(rs.getString("Usu_datos"));
                u.setUsu_direccion(rs.getString("Usu_direccion"));
                u.setUsu_fono(rs.getString("Usu_fono"));
                u.setUsu_rol(rs.getInt("Usu_rol"));
                u.setUsu_nombrerol(rs.getString("Rol_nombre"));
                u.setUsu_fechareg(rs.getString("Usu_fechareg"));
                u.setUsu_estado(rs.getInt("Usu_estado"));
                datos.add(u);
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return datos;
    }
    
    //PROCEDIMIENTO PARA REGISTRAR USUARIO
    public boolean Registrar_Usuario(mUsuario u){
        PreparedStatement ps;
        Connection con = conectar.getConexion();
        String sql = "INSERT INTO usuario(Usu_alias, Usu_contra, Usu_dni, Usu_datos, Usu_direccion, Usu_fono, Usu_rol, Usu_fechareg, Usu_estado) \n" +
"        VALUES(?,?,?, UPPER(?), UPPER(?),?,?,NOW(),1);";
        try {
            ps = (PreparedStatement) con.prepareStatement(sql);
            ps.setString(1, u.getUsu_alias());
            ps.setString(2, u.getUsu_contra());
            ps.setString(3, u.getUsu_dni());
            ps.setString(4, u.getUsu_datos());
            ps.setString(5, u.getUsu_direccion());
            ps.setString(6, u.getUsu_fono());
            ps.setInt(7, u.getUsu_rol());
            ps.execute();
            return true;
        } catch (SQLException e) {
            System.err.println(e);
            return false;
        }
    }  
    
}
