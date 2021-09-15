<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>

 <%            
            
try{
        Professor cli = new Professor();
        DAOProfessor cld = new DAOProfessor();
        
    //pegar o valor passado via POST pelo navegador
    String nome = request.getParameter("nomeProfessor");
    String email = request.getParameter("emailProfessor");
    String senha = request.getParameter("senhaProfessor");
    
    //Condição para verificar se os valores são nulos
    if(nome.equals(null) || email.equals(null) || senha.equals(null)) {
        
    }else{
        cli.setNomeProfessor(nome);
        cli.setEmailProfessor(email);
        cli.setSenhaProfessor(senha);
                
        cld.inserirProfessor(cli);
        out.print("Cliente inserido com sucesso!");
        out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>"); 
        response.sendRedirect("index.jsp");
        
    }
    
}catch(Exception erro){
    throw new RuntimeException("Erro executar_inserir_professor"+erro.getMessage());
}
    
%>