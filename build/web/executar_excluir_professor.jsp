<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOProfessor"%>

<%
    try{
        DAOProfessor cld = new DAOProfessor();
        cld.excluirProfessor(Integer.parseInt(request.getParameter("id")));
        out.print("Professor Excluido!");
        out.print("<meta http-equiv='refresh' content='3, url=consultar_professor.jsp'>");    
              
    }catch(Exception erro){
        throw new RuntimeException("Erro Executar Excluir Professor "+erro);
    }
%>