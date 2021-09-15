<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Professor</title>
    </head>
    <body>
    <center>
        <h1>Confirmar Excluir o Professor?</h1>        
        <form method="post" action="executar_excluir_professor.jsp">    
            <label for="id">ID PROFESSOR</label></br>
            <input type="text" name="id" value="<%=request.getParameter("id") %>" readonly/><br>
            <label for="nome">NOME DO PROFESSOR</label></br>
            <input type="text" name="nome" value="<%=request.getParameter("nome") %>" readonly/><br>                     
            <input type="submit" value="Excluir"/></br>            
        </form>  
         <a href="consultar_professor.jsp">Voltar</a>
            </center>
    </body>
</html>
