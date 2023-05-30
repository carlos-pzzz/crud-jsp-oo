<%@page import="models.Turma"%>
<%@page import="models.Aluno"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%
int codeRequest = -1;
boolean hasDeleted = false;

if (request.getParameter("nome") != null) {
	String nome = request.getParameter("nome");
	hasDeleted = Turma.delete(nome);
	codeRequest = 1;
}

%>

<head>
	<meta charset="UTF-8">
	<title>Gerenciador de Alunos</title>
</head>

<body>
	<main>
		<div>
			<% if (codeRequest > -1) { %>

				<h2><%=hasDeleted ? "Sucesso" : "Erro"%> ao deletar aluno.</h2>

			<% } else { %>

				<h2>Deletar aluno</h2>
				<form action="delete.jsp" method="post">
					<input name="nome" placeholder="Nome" required>
					<button>Deletar</button>
				</form>

			<% } %>
		</div>
		<div>
			<p>
				<a href="index.jsp">Voltar ao início</a> |
				<a href="read_all.jsp">Listar alunos</a>
			</p>
		</div>
	</main>
</body>

</html>