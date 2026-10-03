<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Atualizar Suprimento - Take Care System</title>
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

    <div class="container mt-4 mb-5" style="max-width: 800px;">
        <h2 class="fw-bold mb-4 text-center">Atualizar Suprimento</h2>

        <div class="card card-form text-white shadow" id="card-form">
            <form action="salvarAtualizacaoSuprimento.jsp" method="post">
                <div class="row g-3">
                   <div class="mb-3">
                       <label for="id" class="form-label"> Id </label>
                       <input type="text" id="id" name="id" class="form-control" value="<%= request.getParameter("id")%>">
                   </div>

                    <div class="col-md-8">
                        <label for="nome" class="form-label">Nome</label>
                        <input type="text" class="form-control" id="nome" name="nome"  value="<%= request.getParameter("nome")%>">
                    </div>

                    <div class="col-md-6">
                        <label for="estoque" class="form-label">Estoque</label>
                        <input type="number" class="form-control" id="estoque" name="estoque" value="<%= request.getParameter("estoque")%>">
                    </div>

                    <div class="col-12">
                        <label for="descricao" class="form-label">Descrição / Observações</label>
                        <textarea class="form-control" id="descricao" name="descricao" rows="3" value="<%= request.getParameter("descricao")%>"></textarea>
                    </div>



                    <div class="col-12 d-flex justify-content-end gap-2 mt-4">
                        <a href="suprimentos.jsp" class="btn btn-secondary">Cancelar</a>
                        <button type="submit" class="btn fw-bold text-dark" style="background-color: #a8dadc;">Salvar Suprimento</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>