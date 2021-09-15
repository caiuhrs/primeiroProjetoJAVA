<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
    </head>
    <body>
    <center>
        <h1>Nova Disciplina</h1>        
        <form method="post" action="executar_inserir_disciplina.jsp">            
            <label for="nomeDisciplina">NOME DA DISCIPLINA</label></br>
            <input type="text" name="nomeDisciplina"/><br>
            <label for="cargaHoraria">CARGA HORÁRIA</label></br>
            <input type="text" name="cargaHoraria"/></br>             
            <input type="submit" value="ENVAR"/></br>            
        </form>  
        <br>  
        <a href="index.jsp">Voltar</a>
    </center>
    </body>
</html>