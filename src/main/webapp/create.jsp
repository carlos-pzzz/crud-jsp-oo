<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>gerenciador de alunos</title>
</head>

<body>
	<h1>criar aluno:</h1>
	<form action="r_create.jsp" method="get">
		nome: <input name="nome"> <br>
		turma: <input name="turma"> <br>
		ira: <input name="ira"> <br>
		<input type="submit" value="criar">
	</form>
	<a href="index.jsp">início</a>
</body>

</html>