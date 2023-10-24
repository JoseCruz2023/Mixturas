
package DAO;

import Config.Conexion;
import Modelo.mMesa;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Mesa_DAO {
    Conexion conectar = new Conexion();
    
    //LISTADO DE MESAS
    public List<mMesa> listado_mesas(){
        List<mMesa> datos = new ArrayList<>();
        String sql = "SELECT * FROM mesa";
        PreparedStatement ps;
        ResultSet rs;
        try {
            Connection con = conectar.getConexion();
            ps = (PreparedStatement) con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                mMesa m = new mMesa();
                m.setMesa_num(rs.getInt("Mesa_num"));
                m.setMesa_descri(rs.getString("Mesa_descri"));
                m.setMesa_nsilla(rs.getInt("Mesa_nsilla"));
                m.setMesa_estado(rs.getInt("Mesa_estado"));
                datos.add(m);
            }
        }catch (Exception e) {
            System.err.println(e);
        }
        return datos;
    }
    
}
