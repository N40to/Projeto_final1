<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Paciente - Take Care System</title>
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
        <h2 class="fw-bold mb-4 text-center">Cadastro de Funcionário</h2>

        <div class="card card-form text-white shadow" id="card-form">
            <form action="salvarFuncionario.jsp" method="post">
                <div class="row g-3">
                    <div class="col-md-8">
                        <label for="nomeCompleto" class="form-label">Nome</label>
                        <input type="text" class="form-control" id="nomeCompleto" name="nomeCompleto" required>
                    </div>

                    <div class="col-md-4">
                        <label for="cargo" class="form-label">Cargo</label>
                        <input type="text" class="form-control" id="cargo" name="cargo" required>
                    </div>

                    <div class="col-12">
                        <label for="endereco" class="form-label">Endereço</label>
                        <input type="text" class="form-control" id="endereco" name="endereco" required>
                    </div>


                    <div class="col-12">
                          <label for="cpf" class="form-label">Cpf</label>
                          <input type="text" class="form-control" id="cpf" name="cpf" required>
                    </div>


                    <div class="col-12">
                          <label for="telefone" class="form-label">Telefone</label>
                          <input type="text" class="form-control" id="telefone" name="telefone" required>
                    </div>

                    <div class="col-12">
                          <label for="dataNascimento" class="form-label">Data de nascimento</label>
                          <input type="date" class="form-control" id="dataNascimento" name="dataNascimento" required>
                    </div>

                    <div class="col-12">
                          <label for="descricao" class="form-label">Descrição</label>
                          <textarea class="form-control" id="descricao" name="descricao" rows="3"></textarea>
                    </div>

                    <div class="col-12">
                          <label for="salario" class="form-label">Salário</label>
                          <input type="number" class="form-control" id="salario" name="salario" required>
                    </div>

                    <div class="col-12 d-flex justify-content-end gap-2 mt-4">
                        <a href="funcionarios.jsp" class="btn btn-secondary">Cancelar</a>
                        <button type="submit" class="btn fw-bold text-dark" style="background-color: #a8dadc;">Salvar Funcionário</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>