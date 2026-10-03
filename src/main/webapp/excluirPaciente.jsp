<%@ page import ="dao.PacienteDao"%><%
    try{
    int id = Integer.parseInt(request.getParameter("id"));
        PacienteDao dao = new PacienteDao();
        dao.deletar(id);
        response.sendRedirect("pacientes.jsp?message=Paciente deletado com sucesso");
    } catch (Exception e) {
        throw new RuntimeException(e);
    }
%>

