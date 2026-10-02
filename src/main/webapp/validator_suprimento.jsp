<%@ page import="dao.SuprimentoDao" %>
<%@ page import="model.Suprimento" %><%
   String nome = request.getParameter("nome");
   String estoque1 = request.getParameter("estoque");
   String descricao = request.getParameter("descricao");


   if(nome != null && !nome.trim().isEmpty() && estoque1 != null && !estoque1.trim().isEmpty() && descricao != null && !descricao.trim().isEmpty()) {
       try{
           int estoque = Integer.parseInt(estoque1.trim());
           Suprimento suprimento = new Suprimento(nome , estoque , descricao);
           SuprimentoDao dao = new SuprimentoDao();
           dao.inserir(suprimento);
           response.sendRedirect("suprimentos.jsp?message=Suprimento Cadastrado com Sucesso");
           return;
       } catch (Exception e) {
           throw new RuntimeException(e);
       }
   }
%>
