<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>gerenciador de alunos</title>
</head>

<body>
	<h1>pesquisar aluno:</h1>
	<form action="r_read_one.jsp" method="get">
		nome: <input name="nome">
		<input type="submit" value="pesquisar">
	</form>
	<a href="index.jsp">início</a>
</body>

</html>