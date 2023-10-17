/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author : OSCAR CHRISTIAN FABIAN
 */
public class Conexion {
    private final String base = "mixturas";
    private final String user = "root";
    private final String password = "";
    private final String url = "jdbc:mysql://localhost:3306/" + base;
    private Connection con = null;
    
    public Connection getConexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection(this.url,this.user,this.password);
            System.out.println("Conexion Establecida");
        } catch(SQLException e){
            System.err.println(e);
        } catch (ClassNotFoundException ex) {
            System.out.println("Error de Conexion");
            JOptionPane.showMessageDialog(null, "Error de Conexion " + ex);
        }
        return con;
    }
    
}
