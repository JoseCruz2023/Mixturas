
package Modelo;

/**
 *
 * @author alfac
 */
public class mProducto {
    private String Prod_codigo;
    private String Prod_categoria;
    private String Prod_descripcion;
    private String Prod_marca;
    private String Prod_unidmed;
    private double Prod_preciounit;
    private int Prod_stock;
    private int Prod_stockmin;
    private int Prod_estado;
    private String Prod_nombrecateg;
    public mProducto(){
        
    }

    public mProducto(String Prod_codigo, String Prod_categoria, String Prod_descripcion, String Prod_marca, String Prod_unidmed, double Prod_preciounit, int Prod_stock, int Prod_stockmin, int Prod_estado) {
        this.Prod_codigo = Prod_codigo;
        this.Prod_categoria = Prod_categoria;
        this.Prod_descripcion = Prod_descripcion;
        this.Prod_marca = Prod_marca;
        this.Prod_unidmed = Prod_unidmed;
        this.Prod_preciounit = Prod_preciounit;
        this.Prod_stock = Prod_stock;
        this.Prod_stockmin = Prod_stockmin;
        this.Prod_estado = Prod_estado;
    }

    public String getProd_codigo() {
        return Prod_codigo;
    }

    public void setProd_codigo(String Prod_codigo) {
        this.Prod_codigo = Prod_codigo;
    }

    public String getProd_categoria() {
        return Prod_categoria;
    }

    public void setProd_categoria(String Prod_categoria) {
        this.Prod_categoria = Prod_categoria;
    }

    public String getProd_descripcion() {
        return Prod_descripcion;
    }

    public void setProd_descripcion(String Prod_descripcion) {
        this.Prod_descripcion = Prod_descripcion;
    }

    public String getProd_marca() {
        return Prod_marca;
    }

    public void setProd_marca(String Prod_marca) {
        this.Prod_marca = Prod_marca;
    }

    public String getProd_unidmed() {
        return Prod_unidmed;
    }

    public void setProd_unidmed(String Prod_unidmed) {
        this.Prod_unidmed = Prod_unidmed;
    }

    public double getProd_preciounit() {
        return Prod_preciounit;
    }

    public void setProd_preciounit(double Prod_preciounit) {
        this.Prod_preciounit = Prod_preciounit;
    }

    public int getProd_stock() {
        return Prod_stock;
    }

    public void setProd_stock(int Prod_stock) {
        this.Prod_stock = Prod_stock;
    }

    public int getProd_stockmin() {
        return Prod_stockmin;
    }

    public void setProd_stockmin(int Prod_stockmin) {
        this.Prod_stockmin = Prod_stockmin;
    }

    public int getProd_estado() {
        return Prod_estado;
    }

    public void setProd_estado(int Prod_estado) {
        this.Prod_estado = Prod_estado;
    }

    public String getProd_nombrecateg() {
        return Prod_nombrecateg;
    }

    public void setProd_nombrecateg(String Prod_nombrecateg) {
        this.Prod_nombrecateg = Prod_nombrecateg;
    }
    
        
}
