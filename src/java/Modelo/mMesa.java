
package Modelo;

/**
 *
 * @author USUARIO
 */
public class mMesa {
    private int Mesa_num;
    private String Mesa_descri;
    private int Mesa_nsilla;
    private int Mesa_estado;

    public mMesa() {
    }

    public mMesa(int Mesa_num, String Mesa_descri, int Mesa_nsilla, int Mesa_estado) {
        this.Mesa_num = Mesa_num;
        this.Mesa_descri = Mesa_descri;
        this.Mesa_nsilla = Mesa_nsilla;
        this.Mesa_estado = Mesa_estado;
    }

    public int getMesa_num() {
        return Mesa_num;
    }

    public void setMesa_num(int Mesa_num) {
        this.Mesa_num = Mesa_num;
    }

    public String getMesa_descri() {
        return Mesa_descri;
    }

    public void setMesa_descri(String Mesa_descri) {
        this.Mesa_descri = Mesa_descri;
    }

    public int getMesa_nsilla() {
        return Mesa_nsilla;
    }

    public void setMesa_nsilla(int Mesa_nsilla) {
        this.Mesa_nsilla = Mesa_nsilla;
    }

    public int getMesa_estado() {
        return Mesa_estado;
    }

    public void setMesa_estado(int Mesa_estado) {
        this.Mesa_estado = Mesa_estado;
    }
    
    
    
}
