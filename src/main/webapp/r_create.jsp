<%@page import="models.Turma"%>
<%@page import="models.Aluno"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%
String nome = request.getParameter("nome");
String turma = request.getParameter("turma");
String ira = request.getParameter("ira");

boolean sucesso = Turma.inserir(new Aluno(nome, turma, ira));
%>

<head>
	<meta charset="UTF-8">
	<title>gerenciador de alunos</title>
</head>

<body>
	<h1><%=sucesso ? "sucesso" : "erro"%> ao criar aluno</h1>
	<a href="index.jsp">início</a>
</body>

</html>