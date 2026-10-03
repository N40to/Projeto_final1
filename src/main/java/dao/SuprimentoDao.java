package dao;

import config.Conexao;
import model.Suprimento;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SuprimentoDao {
    ResultSet resultado;
    PreparedStatement ps;
    Statement st;
    public List<Suprimento> getBySuprimento(){
        List<Suprimento> suprimentos= new ArrayList<>();
        String sql = "SELECT * FROM suprimento";

        try{
            Connection conn = Conexao.getConnection();
            resultado = conn.createStatement().executeQuery(sql);
            while(resultado.next()){
                Suprimento suprimento = new Suprimento();
                suprimento.setId(resultado.getInt("id"));
                suprimento.setNome(resultado.getString("nome"));
                suprimento.setEstoque(resultado.getInt("estoque"));
                suprimento.setDescricao(resultado.getString("descricao"));
                suprimentos.add(suprimento);

            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return suprimentos;
    }
    public void inserir(Suprimento suprimento){
        String sql = "INSERT INTO suprimento(nome, estoque, descricao) VALUES(?, ?, ?)";

        try{
            Connection conn = Conexao.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1 , suprimento.getNome());
            ps.setInt(2 , suprimento.getEstoque());
            ps.setString(3 , suprimento.getDescricao());
            ps.execute();
            ps.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public void atualizar(Suprimento suprimento){
        String sql = "UPDATE suprimento SET nome=?, estoque=?, descricao=? WHERE id=?";
        try{
            Connection conn = Conexao.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1 , suprimento.getNome());
            ps.setInt(2 , suprimento.getEstoque());
            ps.setString(3 , suprimento.getDescricao());
            ps.setInt(4 , suprimento.getId());
            ps.execute();
            ps.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void deletar(int id){
        String sql = "DELETE FROM suprimento WHERE id="+id;

        try{
            Connection conn = Conexao.getConnection();
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}


