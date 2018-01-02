	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrador</title>
<link rel="stylesheet" type="text/css"  href="../Css/estilo.css" />
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
	
</body>
</html>