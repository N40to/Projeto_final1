<%@ page pageEncoding="UTF-8"%>
<%@ page import="dao.SuprimentoDao" %>
<%@ page import="model.Suprimento" %>
<%@ page import="java.sql.Date" %>

<%

    try {
        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        int estoque = Integer.parseInt(request.getParameter("estoque"));
        String descricao = request.getParameter("descricao");

        String dataStr = request.getParameter("dataNascimento");

        Suprimento suprimento = new Suprimento();
        suprimento.setId(id);
        suprimento.setNome(nome);
        suprimento.setEstoque(estoque);
        suprimento.setDescricao(descricao);

        SuprimentoDao dao = new SuprimentoDao();
        dao.atualizar(suprimento);

        response.sendRedirect("suprimentos.jsp?message=Paciente atualizado com sucesso!");
    } catch (Exception e) {
        response.sendRedirect("suprimentos.jsp?message=Erro ao cadastrar: " + e.getMessage());
    }
%>