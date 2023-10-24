package Modelo;

/**
 *
 * AUTOR: JDELACRUZ 18/10/2023 07:52 P.M.
 */
public class mCliente {
    private String Cli_id;
    private String Cli_nrodoc;
    private String Cli_razsoc;
    private String Cli_direc;
    private String Cli_tlf;
    private String Cli_email;
    private int Cli_estado;

    public mCliente() {
    }

    public mCliente(String Cli_id, String Cli_nrodoc, String Cli_razsoc, String Cli_direc, String Cli_tlf, String Cli_email, int Cli_estado) {
        this.Cli_id = Cli_id;
        this.Cli_nrodoc = Cli_nrodoc;
        this.Cli_razsoc = Cli_razsoc;
        this.Cli_direc = Cli_direc;
        this.Cli_tlf = Cli_tlf;
        this.Cli_email = Cli_email;
        this.Cli_estado = Cli_estado;
    }

    public String getCli_idcli() {
        return Cli_id;
    }

    public void setCli_idcli(String Cli_idcli) {
        this.Cli_id = Cli_idcli;
    }

    public String getCli_nrodoc() {
        return Cli_nrodoc;
    }

    public void setCli_nrodoc(String Cli_nrodoc) {
        this.Cli_nrodoc = Cli_nrodoc;
    }

    public String getCli_razsoc() {
        return Cli_razsoc;
    }

    public void setCli_razsoc(String Cli_razsoc) {
        this.Cli_razsoc = Cli_razsoc;
    }

    public String getCli_direc() {
        return Cli_direc;
    }

    public void setCli_direc(String Cli_direc) {
        this.Cli_direc = Cli_direc;
    }

    public String getCli_tlf() {
        return Cli_tlf;
    }

    public void setCli_tlf(String Cli_tlf) {
        this.Cli_tlf = Cli_tlf;
    }

    public String getCli_email() {
        return Cli_email;
    }

    public void setCli_email(String Cli_email) {
        this.Cli_email = Cli_email;
    }

    public int getCli_estado() {
        return Cli_estado;
    }

    public void setCli_estado(int Cli_estado) {
        this.Cli_estado = Cli_estado;
    }
    
    
}
