package DAO;
/*
    importar 2 bibliotecas
    1- Connection - Para utilizar recursos de conexão
    2- DriverManager - Gerenciador de drivers de BD.
*/
import java.sql.Connection;
import java.sql.DriverManager;


public class Conexao {
    public Connection getConexao(){
        //try verifica se tem algum erro no código que está dentro dele:
        try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");//onde busca o driver
        return DriverManager.getConnection("jdbc:derby://localhost:1527/BDAvaliacao","root","root");//retorno o caminho da conexão
        }catch(Exception erro){
            throw new RuntimeException("Erro conexão: "+erro);//Exibir o erro de Exception
        }
        
    }
}