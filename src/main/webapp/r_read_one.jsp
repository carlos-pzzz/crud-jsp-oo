<%@page import="models.Turma"%>
<%@page import="models.Aluno"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%
String nome = request.getParameter("nome");
boolean encontrado = false;
Aluno aluno = new Aluno();

for (Aluno a : Turma.getAlunos()) {
	if (a.getNome().equalsIgnoreCase(nome)) {
		aluno = a;
		encontrado = true;
		break;
	}
}
%>

<head>
	<meta charset="UTF-8">
	<title>gerenciador de alunos</title>
</head>

<body>
	<% if (!encontrado) { %>

		<h1>aluno não encontrado</h1>

	<% } else { %>

		<h1><%=aluno.getNome()%></h1>
		<p>
			<b>id:</b> <%=aluno.getId()%> <br>
			<b>turma:</b> <%=aluno.getTurma()%> <br>
			<b>ira:</b> <%=aluno.getIra()%>
		</p>

	<% } %>
	<a href="index.jsp">início</a>
</body>

</html>