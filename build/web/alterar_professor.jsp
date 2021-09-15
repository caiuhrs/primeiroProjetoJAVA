<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
    </head>
    <body>
    <center>
        <h1>Formulário de Alteração do Professor</h1>        
        <form method="post" action="executar_alterar_professor.jsp">    
            <label for="id">ID</label></br>
            <input type="text" name="id" value="<%=request.getParameter("id") %>" readonly/><br>
            <label for="nomeProfessor">NOME</label></br>
            <input type="text" name="nomeProfessor" value="<%=request.getParameter("nome") %>"/><br>
            <label for="emailProfessor">EMAIL</label></br>
            <input type="text" name="emailProfessor" value="<%=request.getParameter("email") %>"/></br> 
            <label for="senhaProfessor">SENHA</label></br>
            <input type="text" name="senhaProfessor" value="<%=request.getParameter("senha") %>"/></br>  
            <input type="submit" value="ATUALIZAR"/></br>            
        </form>
            <a href="consultar_professor.jsp">Voltar</a>
    </center>
    </body>
</html>