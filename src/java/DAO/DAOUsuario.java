
package DAO;
import MODEL.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.sql.Statement;
import java.sql.ResultSet;

public class DAOUsuario {
    private Connection conn;
    private PreparedStatement stmt;
    private ResultSet rs;
    private Statement st;
    private ArrayList<Usuario> lista = new ArrayList<>();
    
    public DAOUsuario(){
        conn = new Conexao().getConexao();
    }
    public void inserirUsuario (Usuario usuario){
        String sql = "INSERT INTO tb_usuarios (nome,email,cpf,senha) VALUES (?,?,?,?)";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getEmail());
            stmt.setString(3, usuario.getCpf());
            stmt.setString(4, usuario.getSenha());
            stmt.execute();
            stmt.close();
            
        
    }catch(Exception erro){
        throw new RuntimeException("Erro nova Usuario: ",erro);
    
        
    }
    }
        public void atualizarUsuario(Usuario usuario) {
        String sql = "UPDATE tb_usuarios SET nome=? , email=? , cpf=?, senha=? WHERE id=?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getEmail());
            stmt.setString(3, usuario.getCpf());
            stmt.setString(4, usuario.getSenha());
            stmt.setInt(5, usuario.getId());
            stmt.execute();
            stmt.close();
        }catch (Exception erro) {
            throw new RuntimeException("Erro metodo atualizar usuario: " +erro);
        
        }
        
    }
    
    

    public void excluirUsuario(int valor){
        try {
            String sql = "DELETE FROM tb_usuarios where id = " + valor;
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        }catch (Exception erro) {
            throw new RuntimeException("Erro deletar usuario: " +erro);
        }
    }
        
    public ArrayList<Usuario> listarUsuario(){
       String sql = "SELECT * FROM tb_usuarios";
       try{
           st = conn.createStatement();    
           rs = st.executeQuery(sql);
           while(rs.next()) {
            Usuario usuario = new Usuario();
            usuario.setId(rs.getInt("id"));
            usuario.setNome(rs.getString ("nome"));
            usuario.setEmail(rs.getString ("email"));
            usuario.setCpf(rs.getString ("cpf"));
            usuario.setSenha(rs.getString ("senha"));
            lista.add(usuario);
           }
          }catch(Exception erro){
             throw new RuntimeException("Erro no listar usuario: " + erro);
}
      return lista;
     
}
    public ArrayList<Usuario> listarNome(String nome){
       String sql = "SELECT * FROM tb_usuarios WHERE nome LIKE '%"+nome+"%'";
       try{
           st = conn.createStatement();    
           rs = st.executeQuery(sql);
           while(rs.next()) {
            Usuario usuario = new Usuario();
            usuario.setId(rs.getInt("id"));
            usuario.setNome(rs.getString ("nome"));
            usuario.setEmail(rs.getString ("email"));
            usuario.setSenha(rs.getString ("senha"));
            lista.add(usuario);
           }
          }catch(Exception erro){
             throw new RuntimeException("Erro no listar usuario: " + erro);
}
      return lista;
     
}

    
    
    }




