package model;

public class Suprimento {
    private int id;
    private String nome;
    private int estoque;
    private String descricao;

    public Suprimento(){}

    public Suprimento(String nome, int estoque, String descricao) {
        this.nome = nome;
        this.estoque = estoque;
        this.descricao = descricao;
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

    public int getEstoque() {
        return estoque;
    }

    public void setEstoque(int estoque) {
        this.estoque = estoque;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
