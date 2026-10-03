<%@ page import ="dao.FuncionarioDao"%><%
    try{
    int id = Integer.parseInt(request.getParameter("id"));
        FuncionarioDao dao = new FuncionarioDao();
        dao.deletar(id);
        response.sendRedirect("funcionarios.jsp?message=Funcionário deletado com sucesso");
    } catch (Exception e) {
        throw new RuntimeException(e);
    }
%>

