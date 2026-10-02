package dao;

import config.Conexao;
import model.Paciente;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PacienteDao {
    ResultSet resultado;
    PreparedStatement ps;
    Statement st;
    public List<Paciente> getByPaciente(){
        List<Paciente> pacientes = new ArrayList<>();
        String sql = "SELECT * FROM paciente";

        try{
            Connection conn = Conexao.getConnection();
            resultado = conn.createStatement().executeQuery(sql);
            while(resultado.next()){
                Paciente paciente = new Paciente();
                paciente.setId(resultado.getInt("id"));
                paciente.setIdade(resultado.getInt("idade"));
                paciente.setCpf(resultado.getString("cpf"));
                paciente.setDescricao(resultado.getString("descricao"));
                paciente.setTelefone(resultado.getString("telefone"));
                paciente.setContatoFamiliar(resultado.getString("contatoFamiliar"));
                paciente.setEndereco(resultado.getString("endereco"));
                paciente.setTipoSanguinio(resultado.getString("tipoSanguinio"));
                paciente.setDataNascimento(resultado.getDate("dataNascimento"));
                paciente.setNomeCompleto(resultado.getString("nomeCompleto"));
                pacientes.add(paciente);

            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return pacientes;
    }
    public void inserir(Paciente paciente){
        String sql = "INSERT INTO paciente(idade, cpf, descricao, telefone, contatoFamiliar, endereco, tipoSanguinio, dataNascimento, nomeCompleto) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try{
            Connection conn = Conexao.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1 , paciente.getIdade());
            ps.setString(2 , paciente.getCpf());
            ps.setString(3 , paciente.getDescricao());
            ps.setString(4, paciente.getTelefone());
            ps.setString(5, paciente.getContatoFamiliar());
            ps.setString(6 , paciente.getEndereco());
            ps.setString(7, paciente.getTipoSanguinio());
            ps.setDate(8 , paciente.getDataNascimento());
            ps.setString(9, paciente.getNomeCompleto());
            ps.execute();
            ps.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public void atualizar(Paciente paciente){
        String sql = "UPDATE paciente SET idade=?, cpf=?, descricao=?, telefone=?, contatoFamiliar=?, endereco=?, tipoSanguinio=?, dataNascimento=?, nomeCompleto=? WHERE id=?";
        try{
            Connection conn = Conexao.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1 , paciente.getIdade());
            ps.setString(2 , paciente.getCpf());
            ps.setString(3 , paciente.getDescricao());
            ps.setString(4, paciente.getTelefone());
            ps.setString(5, paciente.getContatoFamiliar());
            ps.setString(6 , paciente.getEndereco());
            ps.setString(7, paciente.getTipoSanguinio());
            ps.setDate(8 , paciente.getDataNascimento());
            ps.setString(9, paciente.getNomeCompleto());
            ps.execute();
            ps.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void deletar(int id){
        String sql = "DELETE FROM paciente WHERE id="+id;

        try{
            Connection conn = Conexao.getConnection();
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public int num_pacientes(){
        String sql ="SELECT COUNT(*) FROM paciente";
        int total = 0;
        try{
            Connection conn = Conexao.getConnection();
            ps = conn.prepareStatement(sql);
            resultado = ps.executeQuery();
            if(resultado.next()){
                total = resultado.getInt(1);
            }
        } catch (SQLException e) {
            throw new RuntimeException("Erro ao buscar total de pacientes");
        }
        return total;
    }

}
