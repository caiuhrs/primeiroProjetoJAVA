<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar</title>
    </head>
    <body> 
    <center>
        <h1>Consultar Professor</h1>        
        <form action="consultar_professor.jsp" method="post">   
            <label>Pesquisar por nome</label>
            <input type="text" name="nomeProfessor" />
            <input type="submit" value="Pesquisar"/>
            
        </form><br>
        
        <%
            out.print("<table border='1'>");
            out.print("<tr>");
                out.print("<th>ID</th>");
                out.print("<th>NOME</th>");
                out.print("<th>EMAIL</th>");
                out.print("<th>SENHA</th>");
                out.print("<th>EDITAR</th>");
                out.print("<th>EXCLUIR</th>");
            out.print("</tr>");            
            DAOProfessor cli = new DAOProfessor();
            if(request.getParameter("nomeProfessor") == "" || request.getParameter("nomeProfessor") == null){
            ArrayList<Professor> lista = cli.listarProfessor();
            for(int i=0;i<lista.size();i++){            
                out.print("<tr>");
                    out.print("<td>"+lista.get(i).getIdProfessor()+"</td>");
                    out.print("<td>"+lista.get(i).getNomeProfessor()+"</td>");
                    out.print("<td>"+lista.get(i).getEmailProfessor()+"</td>");
                    out.print("<td>"+lista.get(i).getSenhaProfessor()+"</td>");
                    out.print("<td><a href='alterar_professor.jsp?id="
                            + lista.get(i).getIdProfessor()
                            + "&nome="+lista.get(i).getNomeProfessor()
                            + "&email="+lista.get(i).getEmailProfessor()
                            +"&senha="+lista.get(i).getSenhaProfessor()
                            +"'>CLIQUE</a></td>");
                    
                    out.print("<td><a href='excluir_professor.jsp?id="
                            + lista.get(i).getIdProfessor()
                            + "&nome="+lista.get(i).getNomeProfessor()
                            + "'>CLIQUE</a></td>");
                out.print("</tr>");
                }
            }else{
                 ArrayList<Professor> lista = cli.listarProfessorNome(request.getParameter("nome_professor"));
                 for(int i=0;i<lista.size();i++){            
                    out.print("<tr>");
                    out.print("<td>"+lista.get(i).getIdProfessor()+"</td>");
                    out.print("<td>"+lista.get(i).getNomeProfessor()+"</td>");
                    out.print("<td>"+lista.get(i).getEmailProfessor()+"</td>");
                    out.print("<td>"+lista.get(i).getSenhaProfessor()+"</td>");
                    out.print("<td><a href='alterar_Professor.jsp?id="
                            + lista.get(i).getIdProfessor()
                            + "&nome="+lista.get(i).getNomeProfessor()
                            + "&email="+lista.get(i).getEmailProfessor()
                            +"&senha="+lista.get(i).getSenhaProfessor()
                            +"'>CLIQUE</a></td>");
                    
                    out.print("<td><a href='excluir_professor.jsp?id="
                            + lista.get(i).getIdProfessor()
                            + "&nome="+lista.get(i).getNomeProfessor()
                            + "'>CLIQUE</a></td>");
                out.print("</tr>");
                }
                //aqui vai ser o código de busca por nome.
                
            }  
            out.print("</table>");
              
            
            
        %>   
        <a href="novo_professor.jsp">Cadastrar Professor</a><br>
        <a href="index.jsp">Página Inicial</a>
        </center>
    </body>
</html>
