<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="br.com.fortesi.controller.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- começo js -->
<script type="text/javascript" src="../JavaScript/cpf/jquery-1.2.6.pack.js"></script> 
<script type="text/javascript" src="../JavaScript/cpf/jquery.maskedinput-1.1.4.pack.js"></script>
<script type="text/javascript" src="../JavaScript/MinhaJs.js"></script>

    <!-- Bootstrap Core CSS -->
<link rel="stylesheet" type="text/css"  href="../Css/cssCadCliente.css" />    
<link rel="stylesheet" type="text/css"  href="../Css/estilo.css" />
<link href="../Bootstrap/dist/css/simple-sidebar.css" rel="stylesheet">    
    
<!-- FIM CSS -->
<title>Processo</title>
</head>
<body>
		
		
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

<form action="http://localhost:8080/Fortesi/ServletProcesso?param=editarprocesso" method="POST" onsubmit="return ValidarFormCadProcesso(this)">
	<input type="hidden" name="txtId" value="<%= request.getParameter("id") %>">

<div class="form-group">
    <label for="nome">Cliente</label>
		<input type="text" name="cliente" readonly="readonly" class="form-control" id="nome" value="<%= request.getParameter("cliente") %>">
  </div>
  <div class="form-group">
    <label for="Nprocesso">Número do Processo</label>
    <input type="text" name="txtNProcesso" required="required" class="form-control" id="Nprocesso" pattern="[0-9]+$" maxlength="25" value="<%=request.getParameter("numprocesso") %>" >
  </div>
  <div class="form-group">
    <label for="Nassunto">Assunto</label>
    <input type="text" name="txtAssunto" id="Nassunto" class="form-control" required="required" pattern="[a-zA-Z\s]+$" value="<%=request.getParameter("assunto") %>" >
  </div>
  <div class="form-group">
    <label for="NtipoAcao">Tipo de Ação</label>
    <input type="text" name="txtTipoacao" class="form-control" id="NtipoAcao" pattern="[a-zA-Z\s]+$" value="<%=request.getParameter("tipoacao") %>">
  </div>
  <div class="form-group">
    <label for="NDataCad">Data de Cadastro</label>
    <input type="text" name="txtDataCad" class="form-control" id="NDataCad" value="<%=request.getParameter("datacad") %>">
  </div>
  <div class="form-group">
    <label for="NDataEnce">Data Encerramento</label>
    <input type="text" name="txtDataEnce" class="form-control" id="NDataEnce" value="<%=request.getParameter("dataencerramento") %>">
  </div>
  <div class="form-group">
    <label for="NCondProcess">Condição Processual</label>
    <input type="text" name="txtCondProcess" id="NCondProcess" class="form-control" pattern="[a-zA-Z\s]+$" value="<%=request.getParameter("condprocessual") %>">
  </div>
  <div class="form-group">
    <label for="NParteContraria">Parte Contraria</label>
   <input type="text" name="txtParteContraria" id="NParteContraria" class="form-control" pattern="[a-zA-Z\s]+$" value="<%=request.getParameter("partecontraria") %>">
  </div>
  <div class="form-group">
    <label for="nome">Tipo de Justiça</label>
    <select name="txtTipoJustica" class="form-control">
			<option selected="selected"><%=request.getParameter("tipojust_tribunal")%></option>
			<option value="Justica Comum Estadual">Justiça Comum - ESTADUAL</option>
			<option value="Justica Comum Federal">Justiça Comum - FEDERAL</option>
			<option value="Justica Especializada -TRE">Justiça Especializada -TRE</option>
			<option value="Justica Especializada -TRT">Justiça Especializada -TRT</option>
			<option value="STF">STF</option>
			<option value="STJ">STJ</option>
			<option value="TSE">TSE</option>
			<option value="TST">TST</option>
		</select>
  </div>
  <div class="form-group">
    <label for="NCidadeComarca">Cidade/Comarca</label>
    <input type="text" name="txtCidadeComarca" class="form-control" id="NCidadeComarca" pattern="[a-zA-Z\s]+$" value="<%=request.getParameter("cidade_comarca") %>" >
  </div>
  <div class="form-group">
    <label for="NForum">Fórum</label>
   <input type="text" name="txtForum" class="form-control" id="NForum" pattern="[a-zA-Z\s]+$" value="<%=request.getParameter("forum") %>">
  </div><div class="form-group">
    <label for="NVara">Vara</label>
    <input type="text" name="txtVara" class="form-control" id="NVara" pattern="[a-zA-Z\s]+$" value="<%=request.getParameter("vara") %>">
  </div>
	
	<!-- css em cssCadCliente -->
	<div class="form-actions">
			<input class="btn btn-large" type="submit" value="Atualizar">
	</div>

</form>

</body>
</html>