<%@page import="models.Turma"%>
<%@page import="models.Aluno"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%
String nome = request.getParameter("nome");
boolean deletado = false;

for (Aluno a : Turma.getAlunos()) {
	if (a.getNome().equalsIgnoreCase(nome)) {
		deletado = Turma.getAlunos().remove(a);
		break;
	}
}
%>

<head>
	<meta charset="UTF-8">
	<title>gerenciador de alunos</title>
</head>

<body>
	<h1><%=deletado ? "sucesso" : "erro"%> ao deletar aluno</h1>
	<a href="index.jsp">início</a>
</body>

</html>