package dao;

import config.Conexao;
import model.Funcionario;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FuncionarioDao {
    ResultSet resultado;
    PreparedStatement ps;
    Statement st;
    public List<Funcionario> getByFuncionario(){
        List<Funcionario> funcionarios= new ArrayList<>();
        String sql = "SELECT * FROM funcionario";

        try{
            Connection conn = Conexao.getConnection();
            resultado = conn.createStatement().executeQuery(sql);
            while(resultado.next()){
                Funcionario funcionario = new Funcionario();
                funcionario.setId(resultado.getInt("id"));
                funcionario.setCargo(resultado.getString("cargo"));
                funcionario.setEndereco(resultado.getString("endereco"));
                funcionario.setCpf(resultado.getString("cpf"));
                funcionario.setTelefone(resultado.getString("telefone"));
                funcionario.setDataNascimento(resultado.getDate("dataNascimento"));
                funcionario.setDescricao(resultado.getString("descricao"));
                funcionario.setSalario(resultado.getDouble("salario"));
                funcionario.setNomeCompleto(resultado.getString("nomeCompleto"));

            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return funcionarios;
    }
    public void inserir(Funcionario funcionario){
        String sql = "INSERT INTO funcionario(cargo, endereco, cpf, telefone, dataNascimento, descricao, salario, nomeCompleto) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";

        try{
            Connection conn = Conexao.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1 , funcionario.getCargo());
            ps.setString(2 , funcionario.getEndereco());
            ps.setString(3 , funcionario.getCpf());
            ps.setString(4 , funcionario.getTelefone());
            ps.setDate(5 , funcionario.getDataNascimento());
            ps.setString(6 , funcionario.getDescricao());
            ps.setDouble(7 , funcionario.getSalario());
            ps.setString(8 , funcionario.getNomeCompleto());
            ps.execute();
            ps.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public void atualizar(Funcionario funcionario){
        String sql = "UPDATE funcionario SET cargo=?, endereco=?, cpf=?, telefone=?, dataNascimento=?, descricao=?, salario=?, nomeCompleto=? WHERE id=?";
        try{
            Connection conn = Conexao.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1 , funcionario.getCargo());
            ps.setString(2 , funcionario.getEndereco());
            ps.setString(3 , funcionario.getCpf());
            ps.setString(4 , funcionario.getTelefone());
            ps.setDate(5 , funcionario.getDataNascimento());
            ps.setString(6 , funcionario.getDescricao());
            ps.setDouble(7 , funcionario.getSalario());
            ps.setString(8 , funcionario.getNomeCompleto());
            ps.execute();
            ps.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void deletar(int id){
        String sql = "DELETE FROM funcionario WHERE id="+id;

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

