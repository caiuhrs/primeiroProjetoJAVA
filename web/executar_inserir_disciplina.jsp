<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>

 <%     
     try{
        Disciplina cli = new Disciplina();
        DAODisciplina cld = new DAODisciplina();
    

    //pegar o valor passado via POST pelo navegador
    String nomeDisciplina = request.getParameter("nomeDisciplina");
    String cargaHoraria = request.getParameter("cargaHoraria");
    
    //Condição para verificar se os valores são nulos
                if(!(nomeDisciplina == null || cargaHoraria == null)){
                    cli.setNomeDisciplina(nomeDisciplina);
                    cli.setCargaHoraria(Integer.parseInt(cargaHoraria));
                    cld.inserirDisciplina(cli);
                    out.print("Disciplina inserida!");
                    out.print("<meta http-equiv='refresh' content='3, url=nova_disciplina.jsp'>");
        
    }
    
}catch(Exception erro){
    throw new RuntimeException("Erro executar_inserir_disciplina"+erro.getMessage());
}
    
%>