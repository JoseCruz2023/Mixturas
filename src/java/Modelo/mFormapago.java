
package Modelo;

/**
 *
 * @author JDELACRUZ 18/10/2023 08:43 p.m.
 */
public class mFormapago {
    private int Fpag_id;
    private String Fpag_nombre;
    private int Fpag_estado;

    public mFormapago() {
    }

    public mFormapago(int Fpag_id, String Fpag_nombre, int Fpag_estado) {
        this.Fpag_id = Fpag_id;
        this.Fpag_nombre = Fpag_nombre;
        this.Fpag_estado = Fpag_estado;
    }

    public int getFpag_estado() {
        return Fpag_estado;
    }

    public void setFpag_estado(int Fpag_estado) {
        this.Fpag_estado = Fpag_estado;
    }

    public int getFpag_id() {
        return Fpag_id;
    }

    public void setFpag_id(int Fpag_id) {
        this.Fpag_id = Fpag_id;
    }

    public String getFpag_nombre() {
        return Fpag_nombre;
    }

    public void setFpag_nombre(String Fpag_nombre) {
        this.Fpag_nombre = Fpag_nombre;
    }
    
    
}
