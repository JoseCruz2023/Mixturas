
package Modelo;

/**
 *
 * @author JDELACRUZ 18/10/23 08:05 P.M.
 */
public class mComanda_det {
    private int Cdet_id;
    private String Cdet_comand;
    private String Cdet_prod;
    private int Cdet_cant;
    private double Cdet_punit;
    private double Cdet_subtot;
    private int Cdet_entreg;

    public mComanda_det() {
    }

    public mComanda_det(int Cdet_id, String Cdet_comand, String Cdet_prod, int Cdet_cant, double Cdet_punit, double Cdet_subtot, int Cdet_entreg) {
        this.Cdet_id = Cdet_id;
        this.Cdet_comand = Cdet_comand;
        this.Cdet_prod = Cdet_prod;
        this.Cdet_cant = Cdet_cant;
        this.Cdet_punit = Cdet_punit;
        this.Cdet_subtot = Cdet_subtot;
        this.Cdet_entreg = Cdet_entreg;
    }

    public int getCdet_id() {
        return Cdet_id;
    }

    public void setCdet_id(int Cdet_id) {
        this.Cdet_id = Cdet_id;
    }

    public String getCdet_comand() {
        return Cdet_comand;
    }

    public void setCdet_comand(String Cdet_comand) {
        this.Cdet_comand = Cdet_comand;
    }

    public String getCdet_prod() {
        return Cdet_prod;
    }

    public void setCdet_prod(String Cdet_prod) {
        this.Cdet_prod = Cdet_prod;
    }

    public int getCdet_cant() {
        return Cdet_cant;
    }

    public void setCdet_cant(int Cdet_cant) {
        this.Cdet_cant = Cdet_cant;
    }

    public double getCdet_punit() {
        return Cdet_punit;
    }

    public void setCdet_punit(double Cdet_punit) {
        this.Cdet_punit = Cdet_punit;
    }

    public double getCdet_subtot() {
        return Cdet_subtot;
    }

    public void setCdet_subtot(double Cdet_subtot) {
        this.Cdet_subtot = Cdet_subtot;
    }

    public int getCdet_entreg() {
        return Cdet_entreg;
    }

    public void setCdet_entreg(int Cdet_entreg) {
        this.Cdet_entreg = Cdet_entreg;
    }
    
    
    
}
