
package Modelo;

/**
 *
 * @author JDELACRUZ 18/10/2023 08:29P.M.
 */
public class mArqueo_caja {
    private int Caja_id;
    private String Caja_fecha;
    private double Caja_salini;
    private double Caja_toting;
    private double Caja_totegr;
    private double Caja_totefe;
    private double Caja_dif;
    private double Caja_salfin;
    private String Caja_observ;
    private String Caja_usuadd;
    private String Caja_fecadd;
    private int Caja_estado;

    public mArqueo_caja() {
    }

    public mArqueo_caja(int Caja_id, String Caja_fecha, double Caja_salini, double Caja_toting, double Caja_totegr, double Caja_totefe, double Caja_dif, double Caja_salfin, String Caja_observ, String Caja_usuadd, String Caja_fecadd, int Caja_estado) {
        this.Caja_id = Caja_id;
        this.Caja_fecha = Caja_fecha;
        this.Caja_salini = Caja_salini;
        this.Caja_toting = Caja_toting;
        this.Caja_totegr = Caja_totegr;
        this.Caja_totefe = Caja_totefe;
        this.Caja_dif = Caja_dif;
        this.Caja_salfin = Caja_salfin;
        this.Caja_observ = Caja_observ;
        this.Caja_usuadd = Caja_usuadd;
        this.Caja_fecadd = Caja_fecadd;
        this.Caja_estado = Caja_estado;
    }

    public int getCaja_id() {
        return Caja_id;
    }

    public void setCaja_id(int Caja_id) {
        this.Caja_id = Caja_id;
    }

    public String getCaja_fecha() {
        return Caja_fecha;
    }

    public void setCaja_fecha(String Caja_fecha) {
        this.Caja_fecha = Caja_fecha;
    }

    public double getCaja_salini() {
        return Caja_salini;
    }

    public void setCaja_salini(double Caja_salini) {
        this.Caja_salini = Caja_salini;
    }

    public double getCaja_toting() {
        return Caja_toting;
    }

    public void setCaja_toting(double Caja_toting) {
        this.Caja_toting = Caja_toting;
    }

    public double getCaja_totegr() {
        return Caja_totegr;
    }

    public void setCaja_totegr(double Caja_totegr) {
        this.Caja_totegr = Caja_totegr;
    }

    public double getCaja_totefe() {
        return Caja_totefe;
    }

    public void setCaja_totefe(double Caja_totefe) {
        this.Caja_totefe = Caja_totefe;
    }

    public double getCaja_dif() {
        return Caja_dif;
    }

    public void setCaja_dif(double Caja_dif) {
        this.Caja_dif = Caja_dif;
    }

    public double getCaja_salfin() {
        return Caja_salfin;
    }

    public void setCaja_salfin(double Caja_salfin) {
        this.Caja_salfin = Caja_salfin;
    }

    public String getCaja_observ() {
        return Caja_observ;
    }

    public void setCaja_observ(String Caja_observ) {
        this.Caja_observ = Caja_observ;
    }

    public String getCaja_usuadd() {
        return Caja_usuadd;
    }

    public void setCaja_usuadd(String Caja_usuadd) {
        this.Caja_usuadd = Caja_usuadd;
    }

    public String getCaja_fecadd() {
        return Caja_fecadd;
    }

    public void setCaja_fecadd(String Caja_fecadd) {
        this.Caja_fecadd = Caja_fecadd;
    }

    public int getCaja_estado() {
        return Caja_estado;
    }

    public void setCaja_estado(int Caja_estado) {
        this.Caja_estado = Caja_estado;
    }

    
}
