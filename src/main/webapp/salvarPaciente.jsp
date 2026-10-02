<%@ page pageEncoding="UTF-8"%>
<%@ page import="dao.PacienteDao" %>
<%@ page import="model.Paciente" %>
<%@ page import="java.sql.Date" %>

<%
    request.setCharacterEncoding("UTF-8");

    try {
        String nomeCompleto = request.getParameter("nomeCompleto");
        int idade = Integer.parseInt(request.getParameter("idade"));
        String cpf = request.getParameter("cpf");
        String descricao = request.getParameter("descricao");
        String telefone = request.getParameter("telefone");
        String contatoFamiliar = request.getParameter("contatoFamiliar");
        String endereco = request.getParameter("endereco");
        String tipoSanguinio = request.getParameter("tipoSanguinio");

        String dataStr = request.getParameter("dataNascimento");

        Paciente paciente = new Paciente();
        paciente.setNomeCompleto(nomeCompleto);
        paciente.setIdade(idade);
        paciente.setCpf(cpf);
        paciente.setDescricao(descricao);
        paciente.setTelefone(telefone);
        paciente.setContatoFamiliar(contatoFamiliar);
        paciente.setEndereco(endereco);
        paciente.setTipoSanguinio(tipoSanguinio);


        if (dataStr != null && !dataStr.isEmpty()) {
            paciente.setDataNascimento(Date.valueOf(dataStr));
        }

        PacienteDao dao = new PacienteDao();
        dao.inserir(paciente);

        response.sendRedirect("pacientes.jsp?message=Paciente registrado com sucesso!");
    } catch (Exception e) {
        response.sendRedirect("pacientes.jsp?message=Erro ao cadastrar: " + e.getMessage());
    }
%>