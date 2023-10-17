
package Modelo;

/**
 * AUTOR: Oscar Quispe Montalvo
 * FECHA: 13/10/2023
 */

public class mMesa {
    private int Mesa_numero;
    private String Mesa_descripcion;
    private int Mesa_numsillas;
    private int Mesa_piso;
    private int Mesa_estado;
    private int Mesa_baja;
    
    public mMesa(){
        
    }

    public mMesa(int Mesa_numero, String Mesa_descripcion, int Mesa_numsillas, int Mesa_piso, int Mesa_estado, int Mesa_baja) {
        this.Mesa_numero = Mesa_numero;
        this.Mesa_descripcion = Mesa_descripcion;
        this.Mesa_numsillas = Mesa_numsillas;
        this.Mesa_piso = Mesa_piso;
        this.Mesa_estado = Mesa_estado;
        this.Mesa_baja = Mesa_baja;
    }

    public int getMesa_numero() {
        return Mesa_numero;
    }

    public void setMesa_numero(int Mesa_numero) {
        this.Mesa_numero = Mesa_numero;
    }

    public String getMesa_descripcion() {
        return Mesa_descripcion;
    }

    public void setMesa_descripcion(String Mesa_descripcion) {
        this.Mesa_descripcion = Mesa_descripcion;
    }

    public int getMesa_numsillas() {
        return Mesa_numsillas;
    }

    public void setMesa_numsillas(int Mesa_numsillas) {
        this.Mesa_numsillas = Mesa_numsillas;
    }

    public int getMesa_piso() {
        return Mesa_piso;
    }

    public void setMesa_piso(int Mesa_piso) {
        this.Mesa_piso = Mesa_piso;
    }

    public int getMesa_estado() {
        return Mesa_estado;
    }

    public void setMesa_estado(int Mesa_estado) {
        this.Mesa_estado = Mesa_estado;
    }

    public int getMesa_baja() {
        return Mesa_baja;
    }

    public void setMesa_baja(int Mesa_baja) {
        this.Mesa_baja = Mesa_baja;
    }
    
    
    
}
