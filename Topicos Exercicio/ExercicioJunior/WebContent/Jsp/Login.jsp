<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<!-- Envia para a servlet ServletLogin no pacote br.com.teste.Servlets com o parametro param=login -->
	<form method="POST" action="http://localhost:8080/ExercicioJunior/ServletLogin?param=login">
		<input type="text" name="txtUsuario">
		<input type="password" name="txtSenha">
		<input type="submit" value="Entrar">
	</form>
</body>
</html>