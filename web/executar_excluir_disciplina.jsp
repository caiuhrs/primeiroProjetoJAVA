<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAODisciplina"%>

<%
    try{
        DAODisciplina cld = new DAODisciplina();
        cld.excluirDisciplina(Integer.parseInt(request.getParameter("id")));
        out.print("Disciplina Excluida!");
        out.print("<meta http-equiv='refresh' content='2, url=consultar_disciplina.jsp'>");    
              
    }catch(Exception erro){
        throw new RuntimeException("Erro Executar Excluir Disciplina "+erro);
    }
%>