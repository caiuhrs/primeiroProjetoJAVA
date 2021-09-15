<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>

<%
    try{
        Disciplina cli = new Disciplina();
        DAODisciplina cld = new DAODisciplina();
        cli.setNomeDisciplina(request.getParameter("nome"));
        cli.setCargaHoraria(Integer.parseInt(request.getParameter("cargaHoraria")));
        cli.setId(Integer.parseInt(request.getParameter("id_disciplina")));
        cld.atualizarDisciplina(cli);
        out.print("Alterado com sucesso!");
        out.print("<meta http-equiv='refresh' content='3, url=consultar_disciplina.jsp'>"); 
        response.sendRedirect("consultar_disciplina.jsp");
        
    }catch(Exception erro){
        throw new RuntimeException("Erro Executar Alterar "+erro.getMessage());
    }
%>