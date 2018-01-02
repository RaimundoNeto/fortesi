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
<title>Editar Cadastro de Processo</title>
<link rel="stylesheet" type="text/css"  href="../Css/estilo.css" />
<link rel="stylesheet" type="text/css"  href="../Css/meucss.css" />


<!-- Jquery Externo -->
<script type="text/javascript" src="../JavaScript/cpf/jquery-1.2.6.pack.js"></script> 
<script type="text/javascript" src="../JavaScript/cpf/jquery.maskedinput-1.1.4.pack.js"></script>

<!-- /#wrapper -->    
    
    <!-- Bootstrap Core CSS -->
    <link href="../Bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../Bootstrap/dist/css/simple-sidebar.css" rel="stylesheet">
 

<!-- Fim -->

<script type="text/javascript" src="../JavaScript/MinhaJs.js"></script> 
</head>
<body class="bodyformularios"> <!-- estilo.css -->
	<%
	HttpSession sessao = request.getSession();
	if(sessao.getAttribute("usuario") == null){
		sessao.invalidate();
		response.sendRedirect("http://localhost:8080/Fortesi/Jsp/Login.jsp");
	}
	//td coluna , tr linha
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
                    <a href="http://localhost:8080/Fortesi/Jsp/ListarClientes.jsp">Listar Cleintes</a>
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

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1>Cadastro de processos</h1>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    <!-- Fim do menu -->
	<form action="http://localhost:8080/Fortesi/ServletProcesso?param=editarprocesso" method="POST" onsubmit="return ValidarFormCadProcesso(this)">
		
		<input type="hidden" name="txtId" value="<%= request.getParameter("id") %>">
		
		<div>
    <label class="desc" id="title1" for="Nprocesso">Cliente:</label>
    <div>
      <input type="text" name="cliente" readonly="readonly" value="<%= request.getParameter("cliente") %>">
    </div>
  		</div>
		
		<div>
    <label class="desc" id="title1" for="Nprocesso">Número do Processo:</label>
    <div>
      <input type="text" name="txtNProcesso" required="required" id="Nprocesso" value="<%=request.getParameter("numprocesso") %>"  pattern="[0-9]+$" maxlength="25" >
    </div>
  		</div>
  		
  		<div>
    <label class="desc" id="title1" for="Nassunto">Assunto:</label>
    <div>
      <input type="text" name="txtAssunto" id="Nassunto" value="<%=request.getParameter("assunto") %>" required="required" pattern="[a-zA-Z\s]+$" >
    </div>
  		</div>
  		
  		<div>
    <label class="desc" id="title1" for="NtipoAcao">Tipo de Ação:</label>
    <div>
      <input type="text" name="txtTipoacao" id="NtipoAcao" pattern="[a-zA-Z\s]+$" value="<%=request.getParameter("tipoacao") %>">
    </div>
  		</div>

  		
  		<div>
    <label class="desc" id="title1" for="NDataCad">Data de Cadastro:</label>
    <div>
      <input type="text" name="txtDataCad" id="NDataCad" value="<%=request.getParameter("datacad") %>" >
    </div>
  		</div>
  		
  		<div>
    <label class="desc" id="title1" for="NDataEnce">Data Encerramento:</label>
    <div>
      <input type="text" name="txtDataEnce" id="NDataEnce" value="<%=request.getParameter("dataencerramento") %>" >
    </div>
  		</div>
  		
  		<div>
    <label class="desc" id="title1" for="NCondProcess">Condição Processual:</label>
    <div>
      <input type="text" name="txtCondProcess" id="NCondProcess" value="<%=request.getParameter("condprocessual") %>" pattern="[a-zA-Z\s]+$">
    </div>
  		</div>
  		
  		<div>
    <label class="desc" id="title1" for="NParteContraria">Parte Contraria:</label>
    <div>
     <input type="text" name="txtParteContraria" id="NParteContraria" value="<%=request.getParameter("partecontraria") %>" pattern="[a-zA-Z\s]+$">
    </div>
  		</div>
  		
  		
  		<div>
    <label class="desc" id="title1" for="NAdvoadoContrario">Tipo de Justiça:</label>
    <div>
      <select name="txtTipoJustica">
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
  		</div>
  
		
		<div>
    <label class="desc" id="title1" for="NCidadeComarca">Cidade/Comarca:</label>
    <div>
      <input type="text" name="txtCidadeComarca" id="NCidadeComarca" value="<%=request.getParameter("cidade_comarca") %>" pattern="[a-zA-Z\s]+$">
    </div>
  		</div>
  		
  		<div>
    <label class="desc" id="title1" for="NForum">Fórum:</label>
    <div>
      <input type="text" name="txtForum" id="NForum" value="<%=request.getParameter("forum") %>" pattern="[a-zA-Z\s]+$">
    </div>
  		</div>
  		
  		<div>
    <label class="desc" id="title1" for="NVara">Vara:</label>
    <div>
      <input type="text" name="txtVara" id="NVara" value="<%=request.getParameter("vara") %>" pattern="[a-zA-Z\s]+$">
    </div>
  		</div>
			
			<div>
				<div>
					<input type="submit" value="Atualizar">
				</div>
			</div>
	</form>

</body>
</html>