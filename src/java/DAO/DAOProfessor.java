package DAO;
/*
importar a MODEL - Os metodos get e set do cliente
importar a Connection -> para abrir conexão.
importar o PreparedStatement -> Responsavel pelas instruções SQL, com parametros
importar o Statement -> Responsavel pelas instruções SQL
importar o ResultSet -> Responsavel por receber o resultado da busca do banco de dados.
importar ArrayList -> Responsável por exibir os valores do ResultSet.

*/
import MODEL.Professor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
        
public class DAOProfessor{
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Professor> lista = new ArrayList<>();
    
    //Criar construtor da conexão...
    public DAOProfessor(){
        conn = new Conexao().getConexao();
        
    }
   //Criar o método inserir cliente
    public void inserirProfessor(Professor professor){
        //criar variavel para receber a instrução SQL
        String sql = "INSERT INTO tb_professor (nome_professor, email_professor, senha_professor) VALUES (?,?,?)";
        //abrir try e catch para verificação de erros;
        try{
            //passar a string para o preparedStatement e a conexão.
            stmt = conn.prepareStatement(sql);
            //passar os valores dos parametros
            stmt.setString(1, professor.getNomeProfessor());
            stmt.setString(2, professor.getEmailProfessor());    
            stmt.setString(3, professor.getSenhaProfessor());
            //Execultar instrução
            stmt.execute();
            //Fechar conexão.
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro Inserir Professor: "+erro.getMessage());
        }
        
    }   
    public ArrayList<Professor> listarProfessor(){
        //Criar variável para receber instrução SQL
        String sql =  "SELECT * FROM tb_professor";
        //abrir try catch para verificação de erros
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            //criar uma estrutura de repetição para carregar linha por linha no Array.
            while(rs.next()){
                Professor professor = new Professor();
                professor.setIdProfessor(rs.getInt("id_professor"));
                professor.setNomeProfessor(rs.getString("nome_professor"));
                professor.setEmailProfessor(rs.getString("email_professor"));                
                lista.add(professor);                
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro no Listar Professores: "+erro);
        }
        
        return lista;
    }
    
      public ArrayList<Professor> listarProfessorNome(String valor){
        //Criar variável para receber instrução SQL
        String sql =  "SELECT * FROM tb_professor WHERE nome_professor like '%"+valor+"%' ";
        //abrir try catch para verificação de erros
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            //criar uma estrutura de repetição para carregar linha por linha no Array.
            while(rs.next()){
                Professor professor = new Professor();
                professor.setIdProfessor(rs.getInt("id_professor"));
                professor.setNomeProfessor(rs.getString("nome_professor"));
                professor.setEmailProfessor(rs.getString("email_professor"));
                lista.add(professor);                
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro no Listar Professor: "+erro);
        }
        
        return lista;
    }
    
    // criar metodo de atualizar cliente
    public void atualizarProfessor(Professor professor) {
        //abrir try catch para verificação de erros
        try{
            String sql = "UPDATE tb_professor SET nome_professor = ?, email_professor = ? "+ "WHERE id_professor=?";
            //passar a string para o prepareStatement e a conexão
            stmt = conn.prepareStatement(sql);
            //passar os valores dos parametros
            stmt .setString(1, professor.getNomeProfessor());
            stmt .setString(2, professor.getEmailProfessor());
            stmt .setInt(3, professor.getIdProfessor());
            //execultar instrução
            stmt .execute();
            //Fechar conexão
            stmt .close();        
            
        }catch(Exception erro){
            //caso erro dentro do try ele será exibido abaixo
            throw new RuntimeException("Erro metodo Atualizar Professor "+erro);
        }
    }
    
    //metodo para excluir clientes
    public void excluirProfessor (int valor){
        //abrir try e cath para verificação de erros
        try{
            //criar variável para receber instrução sql
            String sql = "DELETE FROM tb_professor WHERE id_professor = "+valor;
            //passar conexão para o statement
            st = conn.createStatement();
            //execultar instrução sql
            st.execute(sql);
            //fechar conexão
            st.close();          
            
        }catch(Exception erro){
            //caso erro dentro do try, irá exibir abaixo
            throw new RuntimeException("Erro metodo Excluir Professor"+erro);
        }
    }
    
}
