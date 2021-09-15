<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>

<%
    try{
        Professor cli = new Professor();
        DAOProfessor cld = new DAOProfessor();
        cli.setNomeProfessor(request.getParameter("nomeProfessor"));
        cli.setEmailProfessor(request.getParameter("emailProfessor"));
        cli.setSenhaProfessor(request.getParameter("senhaProfessor"));
        cli.setIdProfessor(Integer.parseInt(request.getParameter("id")));
        cld.atualizarProfessor(cli);
        out.print("Alterado com sucesso!");
        out.print("<meta http-equiv='refresh' content='3, url=consultar_professor.jsp'>"); 
        response.sendRedirect("consultar_professor.jsp");
        
    }catch(Exception erro){
        throw new RuntimeException("Erro Executar Alterar "+erro.getMessage());
    }
%>