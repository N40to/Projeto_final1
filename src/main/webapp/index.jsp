<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<%@ page import="dao.PacienteDao" %>
<%@ page import="dao.FuncionarioDao" %>

<html lang="pt-br">
<body>
<head>
    <meta charset="UTF-8">
    <title> Menu </title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
    <nav class="navbar navbar-expand-lg fixed-top" style="background-color: #b8e3e9;">
      <div class="container-fluid">
        <a class="navbar-brand" href="#"><img src="Gemini_Generated_Image_jgdvgtjgdvgtjgdv-removebg-preview.png" height="80" width="146"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="pacientes.jsp" id="item-list" style="font-size: 30px">Pacientes</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="suprimentos.jsp" id="item-list" style="font-size: 30px">Suprimentos</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="equipamentos.jsp" id="item-list" style="font-size: 30px">Equipamentos</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="#" id="item-list" style="font-size: 30px">Funcionários</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="fundo">
        <p class="text-center" id="text">
            Take care system
        </p>
        <div id="column">
            <div id="row">
                <div class="quadrado"> <p class="inside-text">Pacientes cadastrados: 21 </p> </div>
                <div class="quadrado"> <p class="inside-text">Suprimentos cadastrados: 42 </p> </div>
            </div>
            <div id="row">
                <div class="quadrado1"> <p class="inside-text"> Equipamentos cadastrados: 45 </p> </div>
                <div class="quadrado1"> <p class="inside-text"> Funcionários cadastrados: 43 </p></div>
            </div>

        </div>
    </div>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
   </body>
</html>