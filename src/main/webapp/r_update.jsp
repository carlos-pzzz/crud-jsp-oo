<%@page import="models.Turma"%>
<%@page import="models.Aluno"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%
String nome = request.getParameter("nome");
String novoIra = request.getParameter("novo-ira");
boolean atualizado = false;

for (Aluno a : Turma.getAlunos()) {
	if (a.getNome().equalsIgnoreCase(nome)) {
		a.setIra(novoIra);
		atualizado = true;
		break;
	}
}
%>

<head>
	<meta charset="UTF-8">
	<title>gerenciador de alunos</title>
</head>

<body>
	<h1><%=atualizado ? "sucesso" : "erro"%> ao atualizar aluno</h1>
	<a href="index.jsp">início</a>
</body>

</html>