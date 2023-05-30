<%@page import="models.Turma"%>
<%@page import="models.Aluno"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%
int codeRequest = -1;
boolean hasFound = false;
Aluno aluno = new Aluno();

if (request.getParameter("nome") != null) {
	codeRequest = 1;

	String nome = request.getParameter("nome");
	aluno = Turma.select(nome);

	if (aluno != null) {
		hasFound = true;
	}
}
%>
<head>
	<meta charset="UTF-8">
	<title>Gerenciador de Alunos</title>
</head>

<body>
	<main>
		<div>
			<form action="read_one.jsp" method="post">
				<input name="nome" placeholder="Pesquisar aluno" required>
				<button>Pesquisar</button>
			</form>
		</div>
		<div>
			<% if (hasFound) { %>

				<h2>Aluno encontrado...</h2>

				<table border="1">
					<tr>
						<th>#</th>
						<th>Nome</th>
						<th>Turma</th>
						<th>IRA</th>
					</tr>
					<tr>
						<td><%=aluno.getId()%></td>
						<td><%=aluno.getNome()%></td>
						<td><%=aluno.getTurma()%></td>
						<td><%=aluno.getIra()%></td>
					</tr>
				</table>

			<% } else if (codeRequest == 1) { %>

				<h2>Nenhum aluno encontrado...</h2>
				
			<% } %>
		</div>
		<div>
			<p>
				<a href="index.jsp">Voltar ao início</a> |
				<a href="read_all.jsp">Listar todos</a>
			</p>
		</div>
	</main>
</body>

</html>