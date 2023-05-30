<%@page import="models.Turma"%>
<%@page import="models.Aluno"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%
int codeRequest = -1;
boolean hasAtt = false;
Aluno aluno = new Aluno();

if (request.getParameter("nome") != null && request.getParameter("novo-ira") != null) {
	codeRequest = 1;

	String nome = request.getParameter("nome");
	String novoIra = request.getParameter("novo-ira");

	aluno = Turma.select(nome);

	if (aluno != null) {
		aluno.setIra(novoIra);
		hasAtt = true;
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
			<% if (codeRequest > -1) { %>

				<h2><%=hasAtt ? "Sucesso" : "Erro"%> ao atualizar aluno.</h2>

			<% } else { %>

				<h2>Atualizar aluno</h2>
				<form action="update.jsp" method="post">
					<input name="nome" placeholder="Nome" required> <br>
					<input name="novo-ira" placeholder="Novo IRA" required> <br> <br>
					<button>Atualizar</button>
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