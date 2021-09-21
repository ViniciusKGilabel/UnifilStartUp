
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Iserir novo usuario</h1>
        <form method="post" action="executar_inserir_usuario.jsp" accept-charset="iso-8859-1,utf-8">
            <label for="nome">NOME</label><br>
            <input type="text" name="nome" required /><br>
            
            <label>EMAIL</label><br>
            <input type="text" name="email" required /><br><br>
            
             <label>CPF</label><br>
            <input type="text" name="cpf" required /><br><br>
            
            <label>NOVA SENHA</label><br>
            <input type="password" name="senha" required /><br><br>
           
            
            <button type="submit">Cadastrar</button> 
            </form>
    </body>
</html>
