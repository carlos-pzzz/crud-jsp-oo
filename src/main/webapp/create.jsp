<%@page import="models.Aluno"%>
<%@page import="models.Turma"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%
int codeRequest = -1;
int codeInsertAluno = 0;
request.setCharacterEncoding("UTF-8");

if (request.getParameter("nome") != null && request.getParameter("turma") != null && request.getParameter("ira") != null) {

	String nome = request.getParameter("nome");
	String turma = request.getParameter("turma");
	String ira = request.getParameter("ira");
	codeRequest = 1;
	
	codeInsertAluno = Turma.inserir(new Aluno(nome, turma, ira)) ? 1 : 0;
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
	
				<h2><%=codeInsertAluno == 1 ? "Sucesso" : "Erro"%> ao criar aluno!</h2>
	
			<% } else { %>
	
				<h2>Criar aluno:</h2>
	
				<form action="create.jsp" method="post">
					<input name="nome" placeholder="Nome" required> <br>
					<input name="turma" placeholder="Turma" required> <br>
					<input name="ira" placeholder="IRA" required> <br> <br>
					<button>Criar</button>
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