	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrador</title>
<link rel="stylesheet" type="text/css"  href="../Css/estilo.css" />
<link rel="stylesheet" type="text/css"  href="../Css/meucss.css" />
<!-- /#wrapper(MENU) -->    
    
    <!-- Bootstrap Core CSS -->
    <link href="../Bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../Bootstrap/dist/css/simple-sidebar.css" rel="stylesheet">


<!-- Fim -->

<!-- Meu JS -->
<script type="text/javascript" src="../JavaScript/MinhaJs.js" charset="utf-8"></script> 
<!-- Fim -->


</head>
<body class="teste">
	<%
	//recuperando minha sessao	
	HttpSession sessao = request.getSession();
	if(sessao.getAttribute("usuario") == null){
		sessao.invalidate();
		//se o usuario não tiver logado e tentar acessar a pagina direto vai para a página Login
		response.sendRedirect("http://localhost:8080/Fortesi/Jsp/Login.jsp");
	}else if(sessao.getAttribute("superusuario") == null){
		sessao.invalidate();
		response.sendRedirect("http://localhost:8080/Fortesi/Jsp/Login.jsp");
	}
	%>
<div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="http://localhost:8080/Fortesi/Jsp/PaginaInicial.jsp">
                        Página Inicial
                    </a>
                </li>
                <li>
                    <a href="http://localhost:8080/Fortesi/Jsp/NovoUsuario.jsp">Novo Usuário</a>
                </li>
                <li>
                    <a href="http://localhost:8080/Fortesi/Jsp/ListarUsuario.jsp">Listar Usuários</a>
                </li>
                <li>
                    <a href="http://localhost:8080/Fortesi/ServletPrincipal?param=sairadm">Sair</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

    </div>
	<form method="POST" action="http://localhost:8080/Fortesi/ServletPrincipal?param=cadnovousuario">
	<div id="fieldsetNovoUsuario">
		<div>
    <label class="desc" id="title1" for="cNUsuario">Novo Usuário:</label>
    <div>
      <input type="text" name="txtNovoUsuario" id="cNUsuario">
    </div>
  </div>
    
  <div>
    <label class="desc" id="title3" for="Nsenha">Nova Senha:</label>
    <div>
      <input type="password" name="txtNovaSenha" id="Nsenha">
   </div>
  </div>
  </div>
		<div class="centralizarbotaoformadm"> <!-- estilo.css -->
		<input type="submit" value="cadastrar">
		</div>
	</form>
</body>
</html>