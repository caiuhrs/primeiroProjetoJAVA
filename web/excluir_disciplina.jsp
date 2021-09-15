<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Excluir Disciplina?</title>
    </head>
        <body>
            <center>
        <h1>Excluir Disciplina</h1>        
        <form method="post" action="executar_excluir_disciplina.jsp">    
            <label for="id">ID Disciplina</label></br>
            <input type="text" name="id" value="<%=request.getParameter("id") %>" readonly/><br>
            <label for="nome">NOME Disciplina</label></br>
            <input type="text" name="nome" value="<%=request.getParameter("nome") %>" readonly/><br>                     
            <input type="submit" value="Excluir"/></br>             
        </form> 
            <a href="consultar_disciplina.jsp">Voltar</a>
    </center>
    </body>
</html>