
package Modelo;

/**
 *
 * @author JDELACRUZ 18/10/2023 08:00 P.M.
 */
public class mComanda_cab {
    private String Ccab_numero;
    private String Ccab_clie;
    private int Ccab_mesa;
    private int Ccab_user;
    private String Ccab_fecha;
    private double Ccab_total;
    private int Ccab_situa;
    private int Ccab_estado;

    public mComanda_cab() {
    }

    public mComanda_cab(String Ccab_numero, String Ccab_clie, int Ccab_mesa, int Ccab_user, String Ccab_fecha, double Ccab_total, int Ccab_situa, int Ccab_estado) {
        this.Ccab_numero = Ccab_numero;
        this.Ccab_clie = Ccab_clie;
        this.Ccab_mesa = Ccab_mesa;
        this.Ccab_user = Ccab_user;
        this.Ccab_fecha = Ccab_fecha;
        this.Ccab_total = Ccab_total;
        this.Ccab_situa = Ccab_situa;
        this.Ccab_estado = Ccab_estado;
    }

    public String getCcab_numero() {
        return Ccab_numero;
    }

    public void setCcab_numero(String Ccab_numero) {
        this.Ccab_numero = Ccab_numero;
    }

    public String getCcab_clie() {
        return Ccab_clie;
    }

    public void setCcab_clie(String Ccab_clie) {
        this.Ccab_clie = Ccab_clie;
    }

    public int getCcab_mesa() {
        return Ccab_mesa;
    }

    public void setCcab_mesa(int Ccab_mesa) {
        this.Ccab_mesa = Ccab_mesa;
    }

    public int getCcab_user() {
        return Ccab_user;
    }

    public void setCcab_user(int Ccab_user) {
        this.Ccab_user = Ccab_user;
    }

    public String getCcab_fecha() {
        return Ccab_fecha;
    }

    public void setCcab_fecha(String Ccab_fecha) {
        this.Ccab_fecha = Ccab_fecha;
    }

    public double getCcab_total() {
        return Ccab_total;
    }

    public void setCcab_total(double Ccab_total) {
        this.Ccab_total = Ccab_total;
    }

    public int getCcab_situa() {
        return Ccab_situa;
    }

    public void setCcab_situa(int Ccab_situa) {
        this.Ccab_situa = Ccab_situa;
    }

    public int getCcab_estado() {
        return Ccab_estado;
    }

    public void setCcab_estado(int Ccab_estado) {
        this.Ccab_estado = Ccab_estado;
    }
    
    
}
