
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastro Novo Usuario</h1>
        <form method="post" action="executar_inserir_usuario.jsp" accept-charset="iso-8859-1,utf-8">
            <label for="nome">NOME</label><br>
            <input type="text" name="nome" required/><br>
            
            <label for="nome">EMAIL</label><br>
            <input type="text" name="email" required/><br>
            
            <label for="cpf">CPF</label><br>
            <input type="text" name="cpf" required/><br>
            
             <label for="senha">SENHA</label><br>
            <input type="text" name="senha" required/><br>
            
            <button type="submit">Cadastrar</button> 
            </form>
    </body>
</html>
