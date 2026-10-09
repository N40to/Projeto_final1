<%@ page pageEncoding="UTF-8"%>
<%@ page import="dao.SuprimentoDao" %>
<%@ page import="model.Suprimento" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Suprimentos - Take Care System</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="body">

    <div class="header-menu d-flex align-items-center justify-content-between">

        <div class="d-flex align-items-center gap-5">
            <img src="Gemini_Generated_Image_jgdvgtjgdvgtjgdv-removebg-preview.png" width="146" height="80" alt="Logo">
            <a href="pacientes.jsp">Pacientes</a>
            <a href="suprimentos.jsp">Suprimentos</a>
            <a href="equipamentos.jsp">Equipamentos</a>
            <a href="funcionarios.jsp">Funcionários</a>
            <a href="index.jsp">Menu</a>
        </div>
        <div style="width: 35px;"></div>
    </div>

    <div class="container-fluid px-4 mt-5">

        <div class="d-flex justify-content-between align-items-center mb-4">
            <h1 class="fw-bold">Suprimentos</h1>
            <a href="cadastrarSuprimento.jsp" class="btn text-dark fw-bold" style="background-color: #a8dadc;">Novo Cadastro</a>
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

        <div class="table-responsive">
            <table class="table table-dark table-striped table-bordered mt-3 align-middle">
                <thead>
                    <tr class="table-light text-nowrap">
                        <th>#</th>
                        <th>Nome</th>
                        <th>Estoque</th>
                        <th>Descrição</th>
                        <th class="text-center" colspan="2">Ações</th>
                    </tr>
                </thead>
                <tbody>
                <%
                    try {
                        SuprimentoDao dao = new SuprimentoDao();
                        List<Suprimento> suprimentos = dao.getBySuprimento();
                        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

                        if (suprimentos != null && !suprimentos.isEmpty()) {
                            for (Suprimento suprimento : suprimentos) {
                %>
                    <tr>
                        <td><%= suprimento.getId() %></td>
                        <td><%= suprimento.getNome() %></td>
                        <td><%= suprimento.getEstoque() %></td>
                        <td><%= suprimento.getDescricao() %></td>
                        <td class="text-center">
                            <a href="excluirSuprimento.jsp?id=<%= suprimento.getId() %>"
                               class="btn btn-danger btn-sm"
                               onclick="return confirm('Tem certeza que deseja excluir o suprimento <%= suprimento.getNome() %>?');">
                               Excluir
                            </a>
                        </td>
                        <td class="text-center">
                            <a href="atualizarSuprimento.jsp?id=<%= suprimento.getId() %>&nome=<%= suprimento.getNome() %>&estoque=<%= suprimento.getEstoque()%>&descricao=<%= suprimento.getDescricao() %>"
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
                        <td colspan="11" class="text-center py-3">Nenhum suprimento encontrado.</td>
                    </tr>
                <%
                        }
                    } catch (Exception e) {
                %>
                    <tr>
                        <td colspan="11" class="text-center text-warning py-3">
                            Erro ao carregar dados: <%= e.getMessage() %>
                        </td>
                    </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>