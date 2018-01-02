<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de produtos</title>
</head>
<body>
	<form action="http://localhost:8080/ExercicioJunior/ServletProduto?param=cadprod" method="POST"> <!-- Vai manda para a servletProduto com o param=cadprod, está no pacote br.com.teste.servlets -->
	<label>Produto</label><input type="text" name="txtNome">
	<label>Preço</label><input type="text" name="txtPreco">
	<label>Quantidade</label><input type="text" name="txtQuant">
	<input type="submit" value="Cadastrar Produto">
	</form>
</body>
</html>