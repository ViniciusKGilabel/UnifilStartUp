<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOUsuario"%>

<%
try
{
    DAOUsuario cld = new DAOUsuario();
     cld.excluirUsuario(Integer.parseInt(request.getParameter("id")));
         response.sendRedirect("consultar_usuario.jsp");
 
}
catch(Exception erro)
 {
       throw new RuntimeException ("Erro ao executar exclusão: " ,erro);
}

%>

            
