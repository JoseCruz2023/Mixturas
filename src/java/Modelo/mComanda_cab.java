
package Modelo;

/**
 *
 * @author JDELACRUZ 18/10/2023 08:00 P.M.
 */
public class mComanda_cab {
    private String Ccab_num;
    private String Cli_id;
    private int Mesa_num;
    private int Usu_idusu;
    private String Ccab_fecha;
    private int Ccab_situa;
    private int Ccab_estado;

    public mComanda_cab() {
    }

    public mComanda_cab(String Ccab_num, String Cli_id, int Mesa_num, int Usu_idusu, String Ccab_fecha, int Ccab_situa, int Ccab_estado) {
        this.Ccab_num = Ccab_num;
        this.Cli_id = Cli_id;
        this.Mesa_num = Mesa_num;
        this.Usu_idusu = Usu_idusu;
        this.Ccab_fecha = Ccab_fecha;
        this.Ccab_situa = Ccab_situa;
        this.Ccab_estado = Ccab_estado;
    }

    public int getCcab_estado() {
        return Ccab_estado;
    }

    public void setCcab_estado(int Ccab_estado) {
        this.Ccab_estado = Ccab_estado;
    }

    public String getCcab_num() {
        return Ccab_num;
    }

    public void setCcab_num(String Ccab_num) {
        this.Ccab_num = Ccab_num;
    }

    public String getCli_idcli() {
        return Cli_id;
    }

    public void setCli_idcli(String Cli_id) {
        this.Cli_id = Cli_id;
    }

    public int getMesa_num() {
        return Mesa_num;
    }

    public void setMesa_num(int Mesa_num) {
        this.Mesa_num = Mesa_num;
    }

    public int getUsu_idusu() {
        return Usu_idusu;
    }

    public void setUsu_idusu(int Usu_idusu) {
        this.Usu_idusu = Usu_idusu;
    }

    public String getCcab_fecha() {
        return Ccab_fecha;
    }

    public void setCcab_fecha(String Ccab_fecha) {
        this.Ccab_fecha = Ccab_fecha;
    }

    public int getCcab_situa() {
        return Ccab_situa;
    }

    public void setCcab_situa(int Ccab_situa) {
        this.Ccab_situa = Ccab_situa;
    }
    
    
}
