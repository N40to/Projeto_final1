<%@ page pageEncoding="UTF-8"%>
<%@ page import="dao.EquipamentoDao" %>
<%@ page import="model.Equipamento" %>
<%@ page import="java.sql.Date" %>

<%
    request.setCharacterEncoding("UTF-8");

    try {
        String nome = request.getParameter("nome");
        String estado = request.getParameter("estado");
        String modelo = request.getParameter("modelo");
        String marca = request.getParameter("marca");
        String observacao = request.getParameter("observacao");

        String dataStr = request.getParameter("dataUltimaManutencao");

        Equipamento equipamento = new Equipamento();
        equipamento.setNome(nome);
        equipamento.setEstado(estado);
        equipamento.setModelo(modelo);
        equipamento.setMarca(marca);
        equipamento.setObservacao(observacao);



        if (dataStr != null && !dataStr.isEmpty()) {
            equipamento.setDataUltimaManutencao(Date.valueOf(dataStr));
        }

        EquipamentoDao dao = new EquipamentoDao();
        dao.inserir(equipamento);

        response.sendRedirect("equipamentos.jsp?message=Equipamento registrado com sucesso!");
    } catch (Exception e) {
        response.sendRedirect("equipamentos.jsp?message=Erro ao cadastrar: " + e.getMessage());
    }
%>