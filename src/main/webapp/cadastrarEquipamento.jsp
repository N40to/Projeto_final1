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
        <h2 class="fw-bold mb-4 text-center">Cadastro de Equipamento</h2>

        <div class="card card-form text-white shadow" id="card-form">
            <form action="salvarEquipamento.jsp" method="post">
                <div class="row g-3">
                    <div class="col-md-8">
                        <label for="nome" class="form-label">Nome Completo</label>
                        <input type="text" class="form-control" id="nome" name="nome" required>
                    </div>

                    <div class="col-md-4">
                        <label for="estado" class="form-label">Estado</label>
                        <input type="text" class="form-control" id="estado" name="estado" required>
                    </div>

                    <div class="col-md-6">
                        <label for="modelo" class="form-label">Modelo</label>
                        <input type="text" class="form-control" id="modelo" name="modelo" required>
                    </div>

                    <div class="col-md-6">
                         <label for="marca" class="form-label">Marca</label>
                         <input type="text" class="form-control" id="marca" name="marca" required>
                    </div>

                    <div class="col-md-6">
                        <label for="dataUltimaManutencao" class="form-label">Data da última manutenção</label>
                        <input type="date" class="form-control" id="dataUltimaManutencao" name="dataUltimaManutencao" required>
                    </div>

                    <div class="col-md-4">
                          <label for="observacao" class="form-label">Observações</label>
                           <input type="text" class="form-control" id="observacao" name="observacao">
                    </div>


                    <div class="col-12 d-flex justify-content-end gap-2 mt-4">
                        <a href="equipamentos.jsp" class="btn btn-secondary">Cancelar</a>
                        <button type="submit" class="btn fw-bold text-dark" style="background-color: #a8dadc;">Salvar Equipamento</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
