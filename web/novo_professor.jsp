<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
    </head>    
    <body>
        <center>
        <h1>Cadastrar Professor(a)</h1>        
        <form method="post" action="executar_inserir_professor.jsp">            
            <label for="nomeProfessor">NOME PROFESSOR(A):</label></br>
            <input type="text" name="nomeProfessor"/><br>
            <label for="emailProfessor">EMAIL:</label></br>
            <input type="text" name="emailProfessor"/></br> 
            <label for="senhaProfessor">SENHA:</label><br>
            <input type="text" name="senhaProfessor"/><br>
            <input type="submit" value="FINALIZAR"/></br>            
        </form>  
        <br>  
        <a href="index.jsp">Voltar</a>
        </center>
    </body>
</html>