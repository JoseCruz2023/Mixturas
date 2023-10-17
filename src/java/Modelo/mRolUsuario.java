
package Modelo;

/**
 * AUTOR: Oscar Quispe Montalvo
 * FECHA: 09/10/2023
 */

public class mRolUsuario {
    private int Rol_id;
    private String Rol_nombre;
    private String Rol_descripcion;
    
    public mRolUsuario(){
    }
    
    public mRolUsuario(int Rol_id, String Rol_nombre, String Rol_descripcion){
        this.Rol_id = Rol_id;
        this.Rol_nombre = Rol_nombre;
        this.Rol_descripcion = Rol_descripcion;
    }

    public int getRol_id() {
        return Rol_id;
    }

    public void setRol_id(int Rol_id) {
        this.Rol_id = Rol_id;
    }

    public String getRol_nombre() {
        return Rol_nombre;
    }

    public void setRol_nombre(String Rol_nombre) {
        this.Rol_nombre = Rol_nombre;
    }

    public String getRol_descripcion() {
        return Rol_descripcion;
    }

    public void setRol_descripcion(String Rol_descripcion) {
        this.Rol_descripcion = Rol_descripcion;
    }
    
    
}
