<%@page import="models.Turma"%>
<%@page import="models.Aluno"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Gerenciador de Alunos</title>
</head>

<body>
	<main>
		<div>
			<h2>Alunos criados</h2>
			<table border="1">
				<tr>
					<th>#</th>
					<th>Nome</th>
					<th>Turma</th>
					<th>IRA</th>
				</tr>
				<%
				for (Aluno a : Turma.alunos) {
					out.print("<tr>");
					out.print("<td>" + a.getId() + "</td>");
					out.print("<td>" + a.getNome() + "</td>");
					out.print("<td>" + a.getTurma() + "</td>");
					out.print("<td>" + a.getIra() + "</td>");
					out.print("</tr>");
				}
				%>
			</table>
		</div>
		<div>
			<p>
				<a href="index.jsp">Voltar ao início</a> |
				<a href="create.jsp">Criar aluno</a>
			</p>
		</div>
	</main>
</body>

</html>