<%@page import="br.com.fortesi.model.relatorio"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Página Inicial</title>
<link rel="stylesheet" type="text/css"  href="../Css/estilo.css" />
<link rel="stylesheet" type="text/css"  href="../Css/cssImgFundo.css" />
<link rel="stylesheet" type="text/css"  href="../Css/buscarcss.css" />

<!-- Jquery Externo -->
<script type="text/javascript" src="../JavaScript/cpf/jquery-1.2.6.pack.js"></script> 
<script type="text/javascript" src="../JavaScript/cpf/jquery.maskedinput-1.1.4.pack.js"></script>

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
<form action="http://localhost:8080/Fortesi/Jsp/BuscarCliente.jsp" method="POST">
	<%
	//recuperando minha sessao	
	HttpSession sessao = request.getSession();
	if(sessao.getAttribute("usuario") == null){
		sessao.invalidate();
		//se o usuario não tiver logado e tentar acessar a pagina direto vai para a página Login
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
                    <a href="http://localhost:8080/Fortesi/Jsp/CadastroCliente.jsp">Cadastro Cliente</a>
                </li>
                <li>
                    <a href="http://localhost:8080/Fortesi/Jsp/CadastroProcesso.jsp">Cadastro Processo</a>
                </li>
                <li>
                    <a href="http://localhost:8080/Fortesi/Jsp/ListarClientes.jsp">Listar Clientes</a>
                </li>
                <li>
                    <a href="http://localhost:8080/Fortesi/Jsp/ListarProcessos.jsp">Listar Processos</a>
                </li>
                <li>
                    <a href="http://localhost:8080/Fortesi/Jsp/Agenda.jsp">Agenda</a>
                </li>
                <li>
                    <a href="http://localhost:8080/Fortesi/Jsp/ListarAgenda.jsp">Contatos</a>
                </li>
                <li>
                    <a href="http://localhost:8080/Fortesi/Jsp/FormularioAdm.jsp">Área Administrador</a>
                </li>
                <li>
                    <a href="http://localhost:8080/Fortesi/Relatorios/relatorioAjuda.pdf">Ajuda</a>
                </li>
                <li>
                    <a href="http://localhost:8080/Fortesi/ServletPrincipal?param=sair">Sair</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

    </div>
  	
	<div class="containerpn">
	<div class="row">
		<div class="col-md-12">
            <div class="input-group" id="adv-search">
                <input type="text" name="busca" class="form-control" placeholder="Buscar Por Nome" />
                <div class="input-group-btn">
                    <div class="btn-group" role="group">
                        <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                    </div>
                </div>
            </div>
          </div>
                </div>
            </div> 
			<br>        
	</form>
		<form action="http://localhost:8080/Fortesi/Jsp/BuscarProcesso.jsp" method="POST">
             <div class="containerpp">
	<div class="row">
		<div class="col-md-12">
            <div class="input-group" id="adv-search">
                <input type="text" name="buscap" class="form-control" placeholder="Buscar Por Processo" />
                <div class="input-group-btn">
                    <div class="btn-group" role="group">
                        <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                    </div>
                </div>
            </div>
          </div>
                </div>
            </div> 
		</form>
</body>
</html>