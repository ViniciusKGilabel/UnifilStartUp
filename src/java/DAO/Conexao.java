package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
    public Connection getConexao(){
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            return DriverManager.getConnection("jdbc:derby://localhost/root", "bruna", "123");
        }catch (Exception erro){
            throw new RuntimeException ("erro conexão: " + erro);
        }
    }
}
        
    

    
    

