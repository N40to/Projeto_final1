package model;

import java.util.Date;

public class Paciente {
    private int id;
    private String nomeCompleto;
    private int idade;
    private String cpf;
    private String descricao;
    private String telefone;
    private String contatoFamiliar;
    private String endereco;
    private String tipoSanguinio;
    private Date dataNascimento;

    public Paciente(){}

    public Paciente(
            String nomeCompleto,
            int idade,
            String cpf,
            String descricao,
            String telefone,
            String contatoFamilar,
            String endereco,
            String tipoSanguinio,
            Date dataNascimento
        )
    {
        this.nomeCompleto = nomeCompleto;
        this.idade = idade;
        this.descricao = descricao;
        this.cpf = cpf;
        this.telefone = telefone;
        this.contatoFamiliar = contatoFamilar;
        this.endereco = endereco;
        this.tipoSanguinio = tipoSanguinio;
        this.dataNascimento = dataNascimento;
    }

    public String getNomeCompleto() {
        return nomeCompleto;
    }

    public void setNomeCompleto(String nomeCompleto) {
        this.nomeCompleto = nomeCompleto;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getContatoFamiliar() {
        return contatoFamiliar;
    }

    public void setContatoFamiliar(String contatoFamiliar) {
        this.contatoFamiliar = contatoFamiliar;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getTipoSanguinio() {
        return tipoSanguinio;
    }

    public void setTipoSanguinio(String tipoSanguinio) {
        this.tipoSanguinio = tipoSanguinio;
    }

    public java.sql.Date getDataNascimento() {
        return (java.sql.Date) dataNascimento;
    }

    public void setDataNascimento(Date dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
