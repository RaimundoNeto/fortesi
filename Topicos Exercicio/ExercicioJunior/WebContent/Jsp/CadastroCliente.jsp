<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro Cliente</title>
</head>
<body>
	<form action="http://localhost:8080/ExercicioJunior/ServletCliente?param=cadcliente" method="POST">
		<label>Nome</label><input type="text" name="txtNomeC">
		<label>Endereço</label><input type="text" name="txtEnderecoC">
		<label>Telefone</label><input type="text" name="txtTelefoneC">
		<input type="submit" value="Cadastrar Cliente">
	</form>
</body>
</html>