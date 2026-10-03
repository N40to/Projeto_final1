<%@ page pageEncoding="UTF-8"%>
<%@ page import="dao.EquipamentoDao" %>
<%@ page import="model.Equipamento" %>
<%@ page import="java.sql.Date" %>

<%

    try {
        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String estado = request.getParameter("estado");
        String modelo = request.getParameter("modelo");
        String marca = request.getParameter("marca");
        String observacao = request.getParameter("observacao");

        String dataStr = request.getParameter("dataUltimaManutencao");

        Equipamento equipamento = new Equipamento();
        equipamento.setId(id);
        equipamento.setNome(nome);
        equipamento.setEstado(estado);
        equipamento.setModelo(modelo);
        equipamento.setMarca(marca);
        equipamento.setObservacao(observacao);

        if (dataStr != null && !dataStr.isEmpty()) {
            equipamento.setDataUltimaManutencao(Date.valueOf(dataStr));
        }

        EquipamentoDao dao = new EquipamentoDao();
        dao.atualizar(equipamento);

        response.sendRedirect("equipamentos.jsp?message=Equipamento atualizado com sucesso!");
    } catch (Exception e) {
        response.sendRedirect("equipamentos.jsp?message=Erro ao cadastrar: " + e.getMessage());
    }
%>