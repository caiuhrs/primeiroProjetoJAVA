<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Disciplina</title>
    </head>
    <body> 
    <center>
        
        <h1>Consultar Disciplina</h1>        
        <form action="consultar_disciplina.jsp" method="post">   
            <label>PESQUISAR POR DISCIPLINA</label>
            <input type="text" name="nomeDisciplina" />
            <input type="submit" value="Pesquisar"/>
            
        </form><br>
        
        <%
            out.print("<table border='1'>");            
            out.print("<tr>");
                out.print("<th>ID</th>");
                out.print("<th>DISCIPLINA</th>");
                out.print("<th>CARGA HORÁRIA</th>");
                out.print("<th>EDITAR</th>");
                out.print("<th>EXCLUIR</th>");
            out.print("</tr>");            
            DAODisciplina cli = new DAODisciplina();
            if(request.getParameter("nomeDisciplina") == "" || request.getParameter("nomeDisciplina") == null){
            ArrayList<Disciplina> lista = cli.listarDisciplina();
            for(int i=0;i<lista.size();i++){            
                out.print("<tr>");
                    out.print("<td>"+lista.get(i).getId()+"</td>");
                    out.print("<td>"+lista.get(i).getNomeDisciplina()+"</td>");
                    out.print("<td>"+lista.get(i).getCargaHoraria()+"</td>");                  
                    out.print("<td><a href='alterar_disciplina.jsp?id_disciplina="
                            + lista.get(i).getId()
                            + "&nome="+lista.get(i).getNomeDisciplina()
                            + "&cargaHoraria="+lista.get(i).getCargaHoraria()
                            +"'>CLIQUE</a></td>");
                    
                    out.print("<td><a href='excluir_disciplina.jsp?id="
                            + lista.get(i).getId()
                            + "&nome="+lista.get(i).getNomeDisciplina()
                            + "'>CLIQUE</a></td>");
                out.print("</tr>");
                }
            }else{
                 ArrayList<Disciplina> lista = cli.listarDisciplinaNome(request.getParameter("nomeDisciplina"));
                 for(int i=0;i<lista.size();i++){            
                    out.print("<tr>");
                    out.print("<td>"+lista.get(i).getId()+"</td>");
                    out.print("<td>"+lista.get(i).getNomeDisciplina()+"</td>");
                    out.print("<td>"+lista.get(i).getCargaHoraria()+"</td>");
                    out.print("<td><a href='alterar_disciplina.jsp?id="
                            + lista.get(i).getId()
                            + "&nome="+lista.get(i).getNomeDisciplina()
                            + "&cargaHoraria="+lista.get(i).getCargaHoraria()
                            +"'>CLIQUE</a></td>");
                    
                    out.print("<td><a href='excluir_disciplina.jsp?id="
                            + lista.get(i).getId()
                            + "&nome="+lista.get(i).getNomeDisciplina()
                            + "'>CLIQUE</a></td>");
                out.print("</tr>");
                }
                //aqui vai ser o código de busca por nome.
                
            }  
            out.print("</table>");
              
            
            
        %>   
        <a href="nova_disciplina.jsp">Cadastrar Disciplina</a><br>
        <a href="index.jsp">Página Inicial</a>
    </center>
        
    </body>
</html>