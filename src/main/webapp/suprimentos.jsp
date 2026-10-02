
<%@ page pageEncoding="UTF-8"%>
<%@ page import="dao.SuprimentoDao" %>
<%@ page import="model.Suprimento" %>
<%@ page import="java.util.List" %>
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

        <table class="table table-dark table-striped table-bordered mt-3">
            <thead>
                <tr class="table-light">
                    <th>#</th>
                    <th>Nome</th>
                    <th>Estoque</th>
                    <th>Descricao</th>
                </tr>
            </thead>
            <tbody>
            <%
                try {
                    SuprimentoDao dao = new SuprimentoDao();
                    List<Suprimento> suprimentos = dao.getBySuprimento();

                    if (suprimentos != null && !suprimentos.isEmpty()) {
                        for (Suprimento suprimento : suprimentos) {
            %>
                <tr>
                    <td><%= suprimento.getId() %></td>
                    <td><%= suprimento.getNome() %></td>
                    <td><%= suprimento.getEstoque() %></td>
                    <td><%= suprimento.getDescricao() %></td>
                </tr>
            <%
                        }
                    } else {
            %>
                <tr>
                    <td colspan="4" class="text-center">Nenhum suprimento encontrado.</td>
                </tr>
            <%
                    }
                } catch (Exception e) {
            %>
                <tr>
                    <td colspan="4" class="text-center text-warning">
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

