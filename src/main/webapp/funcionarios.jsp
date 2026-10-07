
<%@ page pageEncoding="UTF-8"%>
<%@ page import="dao.FuncionarioDao" %>
<%@ page import="model.Funcionario" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Funcionários - Take Care System</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="body">

    <div class="header-menu d-flex align-items-center justify-content-between">
        <div class="d-flex gap-5 align-items-center">
            <img src="Gemini_Generated_Image_jgdvgtjgdvgtjgdv-removebg-preview.png" width="146" height="80" alt="Logo">
            <a href="pacientes.jsp">Pacientes</a>
            <a href="suprimentos.jsp">Suprimentos</a>
            <a href="equipamentos.jsp">Equipamentos</a>
            <a href="funcionarios.jsp">Funcionários</a>
            <a href="index.jsp">Menu</a>
        </div>
        <div style="width: 35px;"></div>
    </div>

    <div class="container mt-5">

        <div class="d-flex justify-content-between align-items-center mb-4">
            <h1 class="fw-bold">Funcionários</h1>
            <a href="cadastrarFuncionario.jsp" class="btn text-dark fw-bold" style="background-color: #a8dadc;">Novo Cadastro</a>
        </div>

        <%
            String message = request.getParameter("message");
            if (message != null && !message.trim().isEmpty()) {
        %>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <%= message %>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        <%
            }
        %>

        <table class="table table-dark table-striped table-bordered mt-3">
            <thead>
                <tr class="table-light">
                    <th>#</th>
                    <th>Nome</th>
                    <th>Cargo</th>
                    <th>Descrição</th>
                    <th>Cpf</th>
                    <th>Endereço</th>
                    <th>Telefone</th>
                    <th>Data de nascimento</th>
                    <th>Salário</th>
                    <th class="text-center" colspan="2">Ações</th>
                </tr>
            </thead>
            <tbody>
            <%
                try {
                    FuncionarioDao dao = new FuncionarioDao();
                    List<Funcionario> funcionarios = dao.getByFuncionario();


                    if (funcionarios != null && !funcionarios.isEmpty()) {
                        for (Funcionario funcionario : funcionarios) {
            %>
                <tr>
                    <td><%= funcionario.getId() %></td>
                    <td><%= funcionario.getNomeCompleto() %></td>
                    <td><%= funcionario.getCargo() %></td>
                    <td><%= funcionario.getDescricao() %></td>
                    <td><%= funcionario.getCpf() %></td>
                    <td><%= funcionario.getEndereco() %></td>
                    <td><%= funcionario.getTelefone() %></td>
                    <td><%= funcionario.getDataNascimento() %></td>
                    <td><%= funcionario.getSalario() %></td>
                    <td class="text-center">
                        <a href="excluirFuncionario.jsp?id=<%= funcionario.getId() %>"
                            class="btn btn-danger btn-sm"
                            onclick="return confirm('Tem certeza que deseja excluir o funcionário <%= funcionario.getNomeCompleto() %>?');">
                            Excluir
                        </a>
                    </td>
                    <td class="text-center">
                        <a href="atualizarFuncionario.jsp?id=<%= funcionario.getId() %>&nomeCompleto=<%= funcionario.getNomeCompleto() %>&endereco=<%= funcionario.getEndereco()%>&cpf=<%= funcionario.getCpf() %>&telefone=<%= funcionario.getTelefone() %>&dataNascimento=<%= funcionario.getDataNascimento() %>&descricao=<%= funcionario.getDescricao() %>&salario=<%= funcionario.getSalario()%>&cargo=<%= funcionario.getCargo()%>"
                            class="btn btn-primary btn-sm">
                            Atualizar
                        </a>
                    </td>
                </tr>
            <%
                        }
                    } else {
            %>
                <tr>
                    <td colspan="11" class="text-center">Nenhum funcionário encontrado.</td>
                </tr>
            <%
                    }
                } catch (Exception e) {
            %>
                <tr>
                    <td colspan="11" class="text-center text-warning">
                        Erro ao carregar dados: <%= e.getMessage() %>
                    </td>
                </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

