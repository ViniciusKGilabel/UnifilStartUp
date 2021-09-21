<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Usuario"%>
<%@page import="DAO.DAOUsuario"%>
<%
    try{
        Usuario pro = new Usuario();
        DAOUsuario prod =  new DAOUsuario();        
    
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        String senha = request.getParameter("senha");          
      
        pro.setNome(nome);
        pro.setEmail(email);
        pro.setCpf(cpf);
        pro.setSenha(senha);
        prod.inserirUsuario(pro);
        response.sendRedirect("consultar_usuario.jsp");
        
            
        }catch (Exception erro){
            throw new RuntimeException("erro executar_inserir_usuario: " + erro);
        }
%>
 