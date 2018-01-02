<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="../Css/estilo.css">
<link rel="stylesheet" type="text/css" href="../Css/meucss.css"><!-- Obs -->
<script type="text/javascript" src="../JavaScript/MinhaJs.js"></script> 
</head>
<body id=corpologin>

		<div class="centralizar">
		<form method="POST" id="formularioLogin" action="http://localhost:8080/Fortesi/ServletPrincipal?param=autlogin">
			<div id="Bordalogin">	
			<label for="iUsuario" class="labelusuario">Usuario:</label>
			<input type="text" name="txtUsuario" class="campoUsuario" id="iUsuario" >
			<br>
			<br>
			<label for="iSenha" class="labelsenha">Senha:</label>
			<input type="password" name="txtSenha" class="campoSenha" id="iSenha" >
			<br>
			<br>
			<input type="submit" value="Entrar" class="button_entrar">
			</div>
		</form>
	</div>
</body>
</html>