<%@ page pageEncoding="UTF-8"%>
<%@ page import="dao.FuncionarioDao" %>
<%@ page import="model.Funcionario" %>
<%@ page import="java.sql.Date" %>

<%

    try {
        int id = Integer.parseInt(request.getParameter("id"));
        String nomeCompleto = request.getParameter("nomeCompleto");
        String cargo = request.getParameter("cargo");
        double salario = Double.parseDouble(request.getParameter("salario"));
        String cpf = request.getParameter("cpf");
        String descricao = request.getParameter("descricao");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");

        String dataStr = request.getParameter("dataNascimento");

        Funcionario funcionario = new Funcionario();
        funcionario.setId(id);
        funcionario.setNomeCompleto(nomeCompleto);
        funcionario.setSalario(salario);
        funcionario.setCpf(cpf);
        funcionario.setDescricao(descricao);
        funcionario.setTelefone(telefone);
        funcionario.setCargo(cargo);
        funcionario.setEndereco(endereco);

        if (dataStr != null && !dataStr.isEmpty()) {
            funcionario.setDataNascimento(Date.valueOf(dataStr));
        }

        FuncionarioDao dao = new FuncionarioDao();
        dao.atualizar(funcionario);

        response.sendRedirect("funcionarios.jsp?message=Funcionario atualizado com sucesso!");
    } catch (Exception e) {
        response.sendRedirect("funcionarios.jsp?message=Erro ao cadastrar: " + e.getMessage());
    }
%>