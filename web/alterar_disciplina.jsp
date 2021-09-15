<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
    </head>
    <body>
    <center>
        <h1>Formulário de Alteração da Disciplina</h1>        
        <form method="post" action="executar_alterar_disciplina.jsp">    
            <label for="id_disciplina">ID DISCIPLINA</label></br>
            <input type="text" name="id_disciplina" value="<%=request.getParameter("id_disciplina") %>" readonly/><br>
            <label for="nome">NOME DA DISCIPLINA</label></br>
            <input type="text" name="nome" value="<%=request.getParameter("nome") %>"/><br>
            <label for="cargaHoraria">CARGA HORÁRIA</label></br>
            <input type="text" name="cargaHoraria" value="<%=request.getParameter("cargaHoraria") %>"/></br>             
            <input type="submit" value="ATUALIZAR"/></br>            
        </form> 
    </center>
    </body>
</html>