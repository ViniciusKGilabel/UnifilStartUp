 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Usuario"%>
<%@page import="DAO.DAOUsuario"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Consultar Usuario</h1><br>
        <form action="consultar_usuario.jsp" method="post" accept-charset="iso-8859-1,utf-8">
        <label>Pesquisar por Nome</label> 
        <input type="test" name="nome"/>
        <input type="submit" value="Pesquisar"/>
    </form> <br>
    
    <%
        out.print("<table border='1'>");
            out.print("<tr>");
                out.print("<th>ID</th>");
                out.print("<th>NOME</th>");
                out.print("<th>EMAIL</th>");
                out.print("<th>CPF</th>");
                out.print("<th>SENHA</th>");                
                out.print("<th>ALTERAR</th>");
                out.print("<th>DELETAR</th>");
                
            out.print("</tr>");
            
        DAOUsuario usua = new DAOUsuario();
        
        if(request.getParameter("nome") == "" || request.getParameter("nome") == null){
        
            ArrayList<Usuario> lista = usua.listarUsuario();
            
        for(int i=0;i<lista.size();i++){
            out.print("<tr>");
            out.print("<td>"+lista.get(i).getId()+"</td>");
            out.print("<td>"+lista.get(i).getNome()+"</td>");            
            out.print("<td>"+lista.get(i).getEmail()+"</td>");
            out.print("<td>"+lista.get(i).getCpf()+"</td>");
            out.print("<td>"+lista.get(i).getSenha()+"</td>");
            out.print("<td><a href='alterar_usuario.jsp?id="
            + lista.get(i).getId()
            +"&nome="+lista.get(i).getNome()
            +"&email="+lista.get(i).getEmail()
            +"&cpf="+lista.get(i).getCpf()
            +"&senha="+lista.get(i).getSenha()
            +"'>CLIQUE</a></td>");
                       
            out.print("<td><a href='excluir_usuario.jsp?id="
            + lista.get(i).getId()
            +"&nome="+lista.get(i).getNome()
            +"&email="+lista.get(i).getEmail()
            +"&cpf="+lista.get(i).getCpf()
            +"&senha="+lista.get(i).getSenha()
            +"'>CLIQUE</a></td>");
        out.print("</tr>");
        }
}else{
    ArrayList<Usuario> lista = usua.listarNome(request.getParameter("nome"));
    for(int i=0;i<lista.size();i++){
        out.print("<tr>");
        out.print("<td>"+lista.get(i).getId()+"</td>");
        out.print("<td>"+lista.get(i).getNome()+"</td>");
        out.print("<td>"+lista.get(i).getEmail()+"</td>");
        out.print("<td>"+lista.get(i).getCpf()+"</td>");
        out.print("<td>"+lista.get(i).getSenha()+"</td>");
        out.print("<td><a href='alterar_usuario.jsp?id="
                + lista.get(i).getId()
                + "&nome=" + lista.get(i).getNome()
                + "&email=" + lista.get(i).getEmail()
                + "&cpf=" + lista.get(i).getCpf()
                + "&senha=" + lista.get(i).getSenha()
                +"'>CLIQUE</a></td>");
        out.print("<td><a href='excluir_usuario.jsp?id="
                + lista.get(i).getId()
                + "&nome="+ lista.get(i).getNome()
                + "&email=" + lista.get(i).getEmail()
                + "&cpf=" + lista.get(i).getCpf()
                + "&senha=" + lista.get(i).getSenha()
                +"'>CLIQUE</a></td>");
        out.print("</tr>");
    }
}
out.print("</table>");

%>
<a href="index.jsp">Pagina inicial</a>
    </body>                
    </html>
                
        
    
    
    

    
    
    
        
           
