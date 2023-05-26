<%@page import="models.Turma"%>
<%@page import="models.Aluno"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>gerenciador de alunos</title>
</head>

<body>
	<h1>listar todos:</h1>
	<table border="1">
		<tr>
			<th>#</th>
			<th>nome</th>
			<th>turma</th>
			<th>ira</th>
		</tr>
		<%
		for (Aluno a : Turma.getAlunos()) {
			out.print("<tr>");
			out.print("<td>" + a.getId() + "</td>");
			out.print("<td>" + a.getNome() + "</td>");
			out.print("<td>" + a.getTurma() + "</td>");
			out.print("<td>" + a.getIra() + "</td>");
			out.print("</tr>");
		}
		%>
	</table>
	<a href="index.jsp">início</a>
</body>

</html>