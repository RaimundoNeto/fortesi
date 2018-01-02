<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="br.com.fortesi.controller.ConnectionFactory"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Processos</title>
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
                        P�gina Inicial
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
                    <a href="http://localhost:8080/Fortesi/Jsp/FormularioAdm.jsp">�rea Administrador</a>
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

    </div>
    <!-- Fim do menu -->
	<form action="http://localhost:8080/Fortesi/ServletProcesso?param=cadprocesso" method="POST" onsubmit="return ValidarFormCadProcesso(this)">
		
	<div>
    <label class="desc" id="title1">Cliente:</label>
    <div>
      <select name="cliente">  <!-- abertura do combobox para listar os clientes -->
		
		<%						//abertura do codigo java
		String sqli = "select * from clientes";   //comando sql
		Connection conn = new ConnectionFactory().getConnection();  //recupera��o da conexao com banco
		Statement stm = conn.createStatement();		//caminho ate o banco
		ResultSet rs = stm.executeQuery(sqli); //aponta os registros no banco
		while(rs.next()){ //enquanto encontrar resultado avan�a
		%><!-- Fecha o codigo java --> 
			<option value="<%=rs.getString("nome") %>"><%=rs.getString("nome") %></option>	<!-- Mostra na op��o do combobox os valores encontrados no resultset -->
		
		<%//abre o codigo java para fecha o while 
		}	//fecha o while
		%> <!-- Fecha o codigo java -->
		
		</select> <!-- Fecha o combobox -->	
    </div>
 	 </div>	
		
		<div>
    <label class="desc" id="title1" for="Nprocesso">N�mero do Processo:</label>
    <div>
      <input type="text" name="txtNProcesso" required="required" id="Nprocesso" pattern="[0-9]+$" maxlength="25">
    </div>
  		</div>
		
		<div>
    <label class="desc" id="title1" for="Nassunto">Assunto:</label>
    <div>
     <input type="text" name="txtAssunto" id="Nassunto" required="required" pattern="[a-zA-Z\s]+$" >
    </div>
  		</div>
  		
  		<div>
    <label class="desc" id="title1" for="NtipoAcao">Tipo de A��o:</label>
    <div>
      <input type="text" name="txtTipoacao" id="NtipoAcao" pattern="[a-zA-Z\s]+$">
    </div>
  		</div>

  		
  		<div>
    <label class="desc" id="title1" for="NDataCad">Data de Cadastro:</label>
    <div>
      <input type="text" name="txtDataCad" id="NDataCad">
    </div>
  		</div>
  		
  		 <div>
    <label class="desc" id="title1" for="NDataEnce">Data Encerramento:</label>
    <div>
      <input type="text" name="txtDataEnce" id="NDataEnce">
    </div>
  		</div>
  		
  		 <div>
    <label class="desc" id="title1" for="NCondProcess">Condi��o Processual:</label>
    <div>
      <input type="text" name="txtCondProcess" id="NCondProcess" pattern="[a-zA-Z\s]+$">
    </div>
  		</div>
  		
  		 <div>
    <label class="desc" id="title1" for="NParteContraria">Parte Contraria:</label>
    <div>
      <input type="text" name="txtParteContraria" id="NParteContraria" pattern="[a-zA-Z\s]+$">
    </div>
  		</div>
  		
  		
  		<div>
    <label class="desc" id="title1">Tipo de Justi�a:</label>
    <div>
      <select name="txtTipoJustica">
			<option selected="selected"></option>
			<option value="Justica Comum Estadual">Justi�a Comum - ESTADUAL</option>
			<option value="Justica Comum Federal">Justi�a Comum - FEDERAL</option>
			<option value="Justica Especializada -TRE">Justi�a Especializada -TRE</option>
			<option value="Justica Especializada -TRT">Justi�a Especializada -TRT</option>
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
      <input type="text" name="txtCidadeComarca" id="NCidadeComarca" pattern="[a-zA-Z\s]+$" >
    </div>
  		</div>
  		
  		<div>
    <label class="desc" id="title1" for="NForum">F�rum:</label>
    <div>
      <input type="text" name="txtForum" id="NForum" pattern="[a-zA-Z\s]+$">
    </div>
  		</div>
  		
  		<div>
    <label class="desc" id="title1" for="NVara">Vara:</label>
    <div>
      <input type="text" name="txtVara" id="NVara" pattern="[a-zA-Z\s]+$">
    </div>
  		</div>
		
			<div>
				<div>
					<input type="submit" value="Cadastrar">
					<input type="reset" value="Limpar">
				</div>
			</div>
	</form>
</body>
</html>