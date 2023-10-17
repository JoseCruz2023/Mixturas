
package Modelo;

/**
 * AUTOR: Oscar Christian Quispe Montalvo
 * FECHA: 09/10/2023
 */

public class mUsuario {
    private int Usu_id;
    private String Usu_alias;
    private String Usu_contra;
    private String Usu_dni;
    private String Usu_datos;
    private String Usu_direccion;
    private String Usu_fono;
    private int Usu_rol;
    private String Usu_fechareg;
    private int Usu_estado;
    private String Usu_nombrerol;
    
    public mUsuario(){
    }

    public mUsuario(int Usu_id, String Usu_alias, String Usu_contra, String Usu_dni, String Usu_datos, String Usu_direccion, String Usu_fono, int Usu_rol, String Usu_fechareg, int Usu_estado){
        this.Usu_id = Usu_id;
        this.Usu_alias = Usu_alias;
        this.Usu_contra = Usu_contra;
        this.Usu_dni = Usu_dni;
        this.Usu_datos = Usu_datos;
        this.Usu_direccion = Usu_direccion;
        this.Usu_fono = Usu_fono;
        this.Usu_rol = Usu_rol;
        this.Usu_fechareg = Usu_fechareg;
        this.Usu_estado = Usu_estado;
    }

    public int getUsu_id() {
        return Usu_id;
    }

    public void setUsu_id(int Usu_id) {
        this.Usu_id = Usu_id;
    }

    public String getUsu_alias() {
        return Usu_alias;
    }

    public void setUsu_alias(String Usu_alias) {
        this.Usu_alias = Usu_alias;
    }

    public String getUsu_contra() {
        return Usu_contra;
    }

    public void setUsu_contra(String Usu_contra) {
        this.Usu_contra = Usu_contra;
    }

    public String getUsu_dni() {
        return Usu_dni;
    }

    public void setUsu_dni(String Usu_dni) {
        this.Usu_dni = Usu_dni;
    }

    public String getUsu_datos() {
        return Usu_datos;
    }

    public void setUsu_datos(String Usu_datos) {
        this.Usu_datos = Usu_datos;
    }

    public String getUsu_direccion() {
        return Usu_direccion;
    }

    public void setUsu_direccion(String Usu_direccion) {
        this.Usu_direccion = Usu_direccion;
    }

    public String getUsu_fono() {
        return Usu_fono;
    }

    public void setUsu_fono(String Usu_fono) {
        this.Usu_fono = Usu_fono;
    }

    public int getUsu_rol() {
        return Usu_rol;
    }

    public void setUsu_rol(int Usu_rol) {
        this.Usu_rol = Usu_rol;
    }

    public String getUsu_fechareg() {
        return Usu_fechareg;
    }

    public void setUsu_fechareg(String Usu_fechareg) {
        this.Usu_fechareg = Usu_fechareg;
    }

    public int getUsu_estado() {
        return Usu_estado;
    }

    public void setUsu_estado(int Usu_estado) {
        this.Usu_estado = Usu_estado;
    }

    public String getUsu_nombrerol() {
        return Usu_nombrerol;
    }

    public void setUsu_nombrerol(String Usu_nombrerol) {
        this.Usu_nombrerol = Usu_nombrerol;
    }
    
      
    
}
