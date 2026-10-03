<%@ page import ="dao.EquipamentoDao"%><%
    try{
    int id = Integer.parseInt(request.getParameter("id"));
        EquipamentoDaoDao dao = new EquipamentoDao();
        dao.deletar(id);
        response.sendRedirect("equipamentos.jsp?message=Equipamento deletado com sucesso");
    } catch (Exception e) {
        throw new RuntimeException(e);
    }
%>

