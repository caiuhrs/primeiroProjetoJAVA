package MODEL;

public class Professor {
    //criar atributos do cliente
    private int idProfessor;
    private String nomeProfessor;
    private String emailProfessor;
    private String senhaProfessor;
              
    //criar os metodos do cliente

    public int getIdProfessor() {
        return idProfessor;
    }

    public void setIdProfessor(int idProfessor) {
        this.idProfessor = idProfessor;
    }

    public String getNomeProfessor() {
        return nomeProfessor;
    }

    public void setNomeProfessor(String nomeProfessor) {
        this.nomeProfessor = nomeProfessor;
    }

    public String getEmailProfessor() {
        return emailProfessor;
    }

    public void setEmailProfessor(String emailProfessor) {
        this.emailProfessor = emailProfessor;
    }
    
    public String getSenhaProfessor() {
        return senhaProfessor;
    }

    public void setSenhaProfessor(String senhaProfessor) {
        this.senhaProfessor = senhaProfessor;
    }    
}