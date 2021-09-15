package DAO;

import MODEL.Disciplina;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAODisciplina {
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Disciplina> lista = new ArrayList<>();

    public DAODisciplina(){
        conn = new Conexao().getConexao();

}
        public void inserirDisciplina(Disciplina disciplina){
        //criar variavel para receber a instrução SQL
        String sql = "INSERT INTO tb_disciplina (nome_disciplina, cargahoraria_disciplina) VALUES (?,?)";
        //abrir try e catch para verificação de erros;
        try{
            //passar a string para o preparedStatement e a conexão.
            stmt = conn.prepareStatement(sql);
            //passar os valores dos parametros
            stmt.setString(1, disciplina.getNomeDisciplina());
            stmt.setInt(2, disciplina.getCargaHoraria());            
            //Execultar instrução
            stmt.execute();
            //Fechar conexão.
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro Inserir Disciplina: "+erro.getMessage());
        }
        
    }
        
 public ArrayList<Disciplina> listarDisciplina(){
        //Criar variável para receber instrução SQL
        String sql =  "SELECT * FROM tb_disciplina";
        //abrir try catch para verificação de erros
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            //criar uma estrutura de repetição para carregar linha por linha no Array.
            while(rs.next()){
                Disciplina disciplina = new Disciplina();
                disciplina.setId(rs.getInt("id_disciplina"));
                disciplina.setNomeDisciplina(rs.getString("nome_disciplina"));
                disciplina.setCargaHoraria(rs.getInt("cargahoraria_disciplina"));
                lista.add(disciplina);                
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro no Listar Cliente: "+erro);
        }
        
        return lista;
    }
    
      public ArrayList<Disciplina> listarDisciplinaNome(String valor){
        //Criar variável para receber instrução SQL
        String sql =  "SELECT * FROM tb_disciplina WHERE nome_disciplina like '%"+valor+"%' ";
        //abrir try catch para verificação de erros
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            //criar uma estrutura de repetição para carregar linha por linha no Array.
            while(rs.next()){
                Disciplina disciplina = new Disciplina();
                disciplina.setId(rs.getInt("id_disciplina"));
                disciplina.setNomeDisciplina(rs.getString("nome_disciplina"));
                disciplina.setCargaHoraria(rs.getInt("cargahoraria_disciplina"));
                lista.add(disciplina);                
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro no Listar Disciplina: "+erro);
        }
        
        return lista;
    }
      // criar metodo de atualizar cliente
    public void atualizarDisciplina(Disciplina disciplina) {
        //abrir try catch para verificação de erros
        try{
            String sql = "UPDATE tb_disciplina SET nome_disciplina = ?, cargahoraria_disciplina = ? "+ "WHERE id_disciplina=?";
            //passar a string para o prepareStatement e a conexão
            stmt = conn.prepareStatement(sql);
            //passar os valores dos parametros
            stmt .setString(1, disciplina.getNomeDisciplina());
            stmt .setInt(2, disciplina.getCargaHoraria());
            stmt .setInt(3, disciplina.getId());
            //execultar instrução
            stmt .execute();
            //Fechar conexão
            stmt .close();        
            
        }catch(Exception erro){
            //caso erro dentro do try ele será exibido abaixo
            throw new RuntimeException("Erro metodo Atualizar Cliente "+erro);
        }
    }
    
    //metodo para excluir clientes
    public void excluirDisciplina (int valor){
        //abrir try e cath para verificação de erros
        try{
            //criar variável para receber instrução sql
            String sql = "DELETE FROM tb_disciplina WHERE id_disciplina = "+valor;
            //passar conexão para o statement
            st = conn.createStatement();
            //execultar instrução sql
            st.execute(sql);
            //fechar conexão
            st.close();          
            
        }catch(Exception erro){
            //caso erro dentro do try, irá exibir abaixo
            throw new RuntimeException("Erro metodo Excluir Disciplina"+erro);
        }
    }
}
    
    
