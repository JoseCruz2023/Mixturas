
package Modelo;

/**
 * AUTOR:
 * FECHA:
 */
public class mCategoria {
    private String Categ_codigo;
    private String Categ_nombre;
    private String Categ_descripcion;
    private int Categ_estado;
    
    public mCategoria(){
        
    }

    public mCategoria(String Categ_codigo, String Categ_nombre, String Categ_descripcion, int Categ_estado) {
        this.Categ_codigo = Categ_codigo;
        this.Categ_nombre = Categ_nombre;
        this.Categ_descripcion = Categ_descripcion;
        this.Categ_estado = Categ_estado;
    }

    public String getCateg_codigo() {
        return Categ_codigo;
    }

    public void setCateg_codigo(String Categ_codigo) {
        this.Categ_codigo = Categ_codigo;
    }

    public String getCateg_nombre() {
        return Categ_nombre;
    }

    public void setCateg_nombre(String Categ_nombre) {
        this.Categ_nombre = Categ_nombre;
    }

    public String getCateg_descripcion() {
        return Categ_descripcion;
    }

    public void setCateg_descripcion(String Categ_descripcion) {
        this.Categ_descripcion = Categ_descripcion;
    }

    public int getCateg_estado() {
        return Categ_estado;
    }

    public void setCateg_estado(int Categ_estado) {
        this.Categ_estado = Categ_estado;
    }
    
    
    
}
