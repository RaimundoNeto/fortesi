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
<link rel="stylesheet" type="text/css"  href="../Css/cssImgFundo.css" />
    
<!-- FIM CSS -->
<title>Cadastro de Processos</title>
</head>
<body class="corpoimg">
		
		
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

<form action="http://localhost:8080/Fortesi/ServletProcesso?param=cadprocesso" method="POST" onsubmit="return ValidarFormCadProcesso(this)">
<div class="form-group">
    <label for="nome">Cliente</label>
    <select name="cliente" class="form-control">  <!-- abertura do combobox para listar os clientes -->
		
		<%						//abertura do codigo java
		String sqli = "select * from clientes";   //comando sql
		Connection conn = new ConnectionFactory().getConnection();  //recuperação da conexao com banco
		Statement stm = conn.createStatement();		//caminho ate o banco
		ResultSet rs = stm.executeQuery(sqli); //aponta os registros no banco
		while(rs.next()){ //enquanto encontrar resultado avança
		%><!-- Fecha o codigo java --> 
			<option value="<%=rs.getString("nome") %>"><%=rs.getString("nome") %></option>	<!-- Mostra na opção do combobox os valores encontrados no resultset -->
		
		<%//abre o codigo java para fecha o while 
		}	//fecha o while
		%> <!-- Fecha o codigo java -->
		
		</select> <!-- Fecha o combobox -->	
  </div>
  <div class="form-group">
    <label for="Nprocesso">Número do Processo</label>
    <input type="text" name="txtNProcesso" required="required" class="form-control" id="Nprocesso" pattern="[0-9]+$" maxlength="25">
  </div>
  <div class="form-group">
    <label for="Nassunto">Assunto</label>
    <input type="text" name="txtAssunto" id="Nassunto" class="form-control" required="required" pattern="[a-zA-Z\s]+$" >
  </div>
  <div class="form-group">
    <label for="NtipoAcao">Tipo de Ação</label>
    <input type="text" name="txtTipoacao" class="form-control" id="NtipoAcao" pattern="[a-zA-Z\s]+$">
  </div>
  <div class="form-group">
    <label for="NDataCad">Data de Cadastro</label>
    <input type="text" name="txtDataCad" class="form-control" id="NDataCad">
  </div>
  <div class="form-group">
    <label for="NDataEnce">Data Encerramento</label>
    <input type="text" name="txtDataEnce" class="form-control" id="NDataEnce">
  </div>
  <div class="form-group">
    <label for="NCondProcess">Condição Processual</label>
    <input type="text" name="txtCondProcess" id="NCondProcess" class="form-control" pattern="[a-zA-Z\s]+$">
  </div>
  <div class="form-group">
    <label for="NParteContraria">Parte Contraria</label>
   <input type="text" name="txtParteContraria" id="NParteContraria" class="form-control" pattern="[a-zA-Z\s]+$">
  </div>
  <div class="form-group">
    <label for="nome">Tipo de Justiça</label>
    <select name="txtTipoJustica" class="form-control">
			<option selected="selected"></option>
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
    <input type="text" name="txtCidadeComarca" class="form-control" id="NCidadeComarca" pattern="[a-zA-Z\s]+$">
  </div>
  <div class="form-group">
    <label for="NForum">Fórum</label>
   <input type="text" name="txtForum" class="form-control" id="NForum" pattern="[a-zA-Z\s]+$">
  </div><div class="form-group">
    <label for="NVara">Vara</label>
    <input type="text" name="txtVara" class="form-control" id="NVara" pattern="[a-zA-Z\s]+$">
  </div>
	
	<!-- css em cssCadCliente -->
	<div class="form-actions">
			<input class="btn btn-large" type="submit" value="Cadastrar">
			<input class="btn btn-large" type="reset" value="limpar">
	</div>

</form>

</body>
</html>