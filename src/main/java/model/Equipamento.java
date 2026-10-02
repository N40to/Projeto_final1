package model;

import java.util.Date;

public class Equipamento {
    private int id;
    private String nome;
    private String estado;
    private String modelo;
    private String marca;
    private Date dataUltimaManutencao;
    private String observacao;

    public Equipamento(){}

    public Equipamento(int id, String nome, String estado, String modelo, String marca, Date dataUltimaManutencao, String observacao) {
        this.id = id;
        this.nome = nome;
        this.estado = estado;
        this.modelo = modelo;
        this.marca = marca;
        this.dataUltimaManutencao = dataUltimaManutencao;
        this.observacao = observacao;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public java.sql.Date getDataUltimaManutencao() {
        return (java.sql.Date) dataUltimaManutencao;
    }

    public void setDataUltimaManutencao(Date dataUltimaManutencao) {
        this.dataUltimaManutencao = dataUltimaManutencao;
    }

    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }
}
