<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
<title>Cadastro de Clientes</title>
</head>
<body class="bodyformularios">
		
		
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

<form action="http://localhost:8080/Fortesi/ServletClientes?param=cadastrarcliente" method="POST" onsubmit="return ValidarFormCadCliente(this)">

  <div class="form-group">
    <label for="nome">Nome completo</label>
    <input type="text" class="form-control" id="cNome" name="txtNome" pattern="[a-zA-Z\s]+$">
  </div>

  <div class="form-group">
    <label for="cCpf">CPF</label>
    <input name="txtCpf" type="text" class="form-control" id="cCpf" >  
  </div>

  <div class="form-group">
    <label for="cRg">RG</label>
    <input type="text" class="form-control" id="cRg" name="txtRg" maxlength="13" pattern="[0-9]+$">
  </div>
  
  <div class="form-group">
    <label for="txtData">Data Nascimento</label>
    <input type="text" class="form-control" id="txtData" name="txtData" maxlength="10">
  </div>
  
  <div class="form-group">
    <label for="ccidade">Cidade(Naturalidade)</label>
    <input type="text" class="form-control" id="ccidade" name="txtCidade" pattern="[a-zA-Z\s]+$">
  </div>
  
  <div class="form-group">
    <label for="Field106">Sexo</label>
   <select class="form-control" id="Field106" name="txtSexo">
   		<option selected="selected"></option>
		<option>Masculino</option>
		<option>Feminino</option>
   </select>
  </div>
  
  <div class="form-group">
    <label for="Field106">Estado civil</label>
    <select class="form-control" id="Field106" name="txtEstadoCivil">
    			<option selected="selected"></option>
                <option value="Solteiro">Solteiro(a)</option> 
                <option value="Casado">Casado(a)</option> 
                <option value="Separado">Separado(a)</option>
                <option value="Divorciado">Divorciado(a)</option>
                <option value="Viúvo">Viúvo(a)</option>
    </select>
  </div>
	<!-- css em cssCadCliente -->
	<div class="form-actions">
			<input class="btn btn-large" type="submit" value="Cadastrar">
			<input class="btn btn-large" type="reset" value="limpar">
	</div>
	
</form>
</body>
</html>