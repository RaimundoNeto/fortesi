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
<link rel="stylesheet" type="text/css"  href="../Css/cssImgFundo.css" />
<link rel="stylesheet" type="text/css" href="../Css/cssCadCliente.css" />
<link rel="stylesheet" type="text/css" href="../Css/estilo.css" />
<link href="../Bootstrap/dist/css/simple-sidebar.css" rel="stylesheet">

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

	<form action="http://localhost:8080/Fortesi/ServletAgenda?param=cadagenda" method="POST" onsubmit="return ValidarFormAgenda(this)">
		<div class="form-group">
			<label for="nome">Cliente</label> <select name="cliente"
				class="form-control">
				<!-- abertura do combobox para listar os clientes -->

				<%
					//abertura do codigo java
					String sqli = "select * from clientes"; //comando sql
					Connection conn = new ConnectionFactory().getConnection(); //recuperação da conexao com banco
					Statement stm = conn.createStatement(); //caminho ate o banco
					ResultSet rs = stm.executeQuery(sqli); //aponta os registros no banco
					while (rs.next()) { //enquanto encontrar resultado avança
				%><!-- Fecha o codigo java -->
				<option value="<%=rs.getString("nome")%>"><%=rs.getString("nome")%></option>
				<!-- Mostra na opção do combobox os valores encontrados no resultset -->

				<%
					//abre o codigo java para fecha o while 
					} //fecha o while
				%>
				<!-- Fecha o codigo java -->

			</select>
			<!-- Fecha o combobox -->
		</div>
		<div class="form-group">
			<label for="txtTelefone">Telefone</label> <input type="text"
				class="form-control" id="txtTelefone" name="ntelefone">
		</div>
		<div class="form-group">
			<label for="txtEmail">Email</label> <input type="email"
				class="form-control" id="txtEmail" name="NEmail">
		</div>

		<!-- css em cssCadCliente -->
		<div class="form-actions">
			<input class="btn btn-large" type="submit" value="Cadastrar">
			<input class="btn btn-large" type="reset" value="limpar">
		</div>

	</form>
</body>
</html>