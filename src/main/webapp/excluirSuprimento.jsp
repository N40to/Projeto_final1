<%@ page import ="dao.SuprimentoDao"%><%
    try{
    int id = Integer.parseInt(request.getParameter("id"));
        SuprimentoDao dao = new SuprimentoDao();
        dao.deletar(id);
        response.sendRedirect("suprimentos.jsp?message=Suprimento deletado com sucesso");
    } catch (Exception e) {
        throw new RuntimeException(e);
    }
%>

