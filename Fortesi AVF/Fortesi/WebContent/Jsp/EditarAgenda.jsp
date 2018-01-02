<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="br.com.fortesi.controller.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- começo js -->
<script type="text/javascript"
	src="../JavaScript/cpf/jquery-1.2.6.pack.js"></script>
<script type="text/javascript"
	src="../JavaScript/cpf/jquery.maskedinput-1.1.4.pack.js"></script>
<script type="text/javascript" src="../JavaScript/MinhaJs.js"></script>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" type="text/css" href="../Css/cssCadCliente.css" />
<link rel="stylesheet" type="text/css" href="../Css/estilo.css" />
<link href="../Bootstrap/dist/css/simple-sidebar.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"  href="../Css/cssImgFundo.css" />

<!-- FIM CSS -->
<title>Agenda</title>
</head>
<body class="teste">
<!-- Começo do Menu -->
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


<!-- Fim do Menu -->

	<form action="http://localhost:8080/Fortesi/ServletAgenda?param=editaragenda" method="POST" onsubmit="return ValidarFormAgenda(this)">
		<input type="hidden" name="id" value="<%= request.getParameter("id") %>">
		
		<div class="form-group">
			<label for="cliente">Cliente</label> <input type="text"
				class="form-control" id="cliente" readonly="readonly" name="cliente" value="<%=request.getParameter("cliente") %>">
		</div>
		
		<div class="form-group">
			<label for="txtTelefone">Telefone</label> <input type="text"
				class="form-control" id="txtTelefone" name="telefone" value="<%=request.getParameter("telefone") %>">
		</div>
		<div class="form-group">
			<label for="txtEmail">Email</label> <input type="email"
				class="form-control" id="txtEmail" name="email" value="<%=request.getParameter("email") %>">
		</div>

		<!-- css em cssCadCliente -->
		<div class="form-actions">
			<input class="btn btn-large" type="submit" value="Atualizar">
		</div>

	</form>
</body>
</html>