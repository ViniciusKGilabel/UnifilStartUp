<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Usuario"%>
<%@page import="DAO.DAOUsuario"%>

<%
    
    try{
        Usuario Usua = new Usuario();
        DAOUsuario usu =  new DAOUsuario();
        Usua.setId(Integer.parseInt(request.getParameter("id")));
        Usua.setNome(request.getParameter("nome"));
        Usua.setEmail(request.getParameter("email"));
        Usua.setCpf(request.getParameter("cpf"));
        Usua.setSenha(request.getParameter("senha"));
        usu.atualizarUsuario(Usua);
        response.sendRedirect("consultar_usuario.jsp");
    }catch(Exception erro){
        throw new RuntimeException("Erro executar alterar usuario" +erro);
    } 
        %>
        
    
        
        
        
            
  