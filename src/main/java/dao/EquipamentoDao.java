package dao;

import config.Conexao;
import model.Equipamento;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EquipamentoDao {
    ResultSet resultado;
    PreparedStatement ps;
    Statement st;
    public List<Equipamento> getByEquipamento(){
        List<Equipamento> equipamentos= new ArrayList<>();
        String sql = "SELECT * FROM equipamento";

        try{
            Connection conn = Conexao.getConnection();
            resultado = conn.createStatement().executeQuery(sql);
            while(resultado.next()){
                Equipamento equipamento = new Equipamento();
                equipamento.setId(resultado.getInt("id"));
                equipamento.setNome(resultado.getString("nome"));
                equipamento.setEstado(resultado.getString("estado"));
                equipamento.setModelo(resultado.getString("modelo"));
                equipamento.setMarca(resultado.getString("marca"));
                equipamento.setDataUltimaManutencao(resultado.getDate("dataUltimaManutencao"));
                equipamento.setObservacao(resultado.getString("observacao"));
                equipamentos.add(equipamento);

            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return equipamentos;
    }
    public void inserir(Equipamento equipamento){
        String sql = "INSERT INTO equipamento(nome, estado, modelo, marca, dataUltimaManutencao, observacao) VALUES(?, ?, ?, ?, ?, ?)";

        try{
            Connection conn = Conexao.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1 , equipamento.getNome());
            ps.setString(2 , equipamento.getEstado());
            ps.setString(3 , equipamento.getModelo());
            ps.setString(4 , equipamento.getMarca());
            ps.setDate(5 , equipamento.getDataUltimaManutencao());
            ps.setString(6 , equipamento.getObservacao());
            ps.execute();
            ps.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public void atualizar(Equipamento equipamento){
        String sql = "UPDATE equipamento SET nome=?, estado=?, modelo=?, marca=?, dataUltimaManutencao=?, observacao=? WHERE id=?";
        try{
            Connection conn = Conexao.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1 , equipamento.getNome());
            ps.setString(2 , equipamento.getEstado());
            ps.setString(3 , equipamento.getModelo());
            ps.setString(4 , equipamento.getMarca());
            ps.setDate(5 , equipamento.getDataUltimaManutencao());
            ps.setString(5 , equipamento.getObservacao());
            ps.execute();
            ps.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void deletar(int id){
        String sql = "DELETE FROM equipamento WHERE id="+id;

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



