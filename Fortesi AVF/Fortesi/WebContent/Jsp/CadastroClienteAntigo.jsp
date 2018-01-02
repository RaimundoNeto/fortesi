<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"  href="../Css/meucss.css" />
<link rel="stylesheet" type="text/css"  href="../Css/estilo.css" />

<!-- Jquery Externo -->
<script type="text/javascript" src="../JavaScript/cpf/jquery-1.2.6.pack.js"></script> 
<script type="text/javascript" src="../JavaScript/cpf/jquery.maskedinput-1.1.4.pack.js"></script>

<!-- /#wrapper -->    
    
    <!-- Bootstrap Core CSS -->
    <link href="../Bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../Bootstrap/dist/css/simple-sidebar.css" rel="stylesheet">	
 

<!-- Fim -->

<!-- Meu JS -->
<script type="text/javascript" src="../JavaScript/MinhaJs.js"></script> 
<!-- Fim -->

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de cliente</title>
</head>
<body class="bodyformularios">


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
                        <h1>Cadastro de clientes</h1>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    <!-- Fim do menu -->
    
<form action="http://localhost:8080/Fortesi/ServletClientes?param=cadastrarcliente" method="POST" onsubmit="return ValidarFormCadCliente(this)" >
  
  <div>
    <label class="desc" id="title1" for="cNome">Nome:</label>
    <div>
      <input type="text" tabindex="1" placeholder="Nome do Cliente" name="txtNome" id="cNome" pattern="[a-zA-Z\s]+$" title="exemplo José Lucas">
    </div>
  </div>
    
  <div>
    <label class="desc" id="title3" for="cCpf">Cpf:</label>
    <div>
      <input name="txtCpf" type="text" tabindex="2" id="cCpf">
   </div>
  </div>
    
  <div>
    <label class="desc" id="title4" for="cRg">Rg:</label>
    <div>
      <input type="text" tabindex="3" placeholder="Digite o Rg" name="txtRg" id="cRg" maxlength="13" pattern="[0-9]+$">
    </div>
  </div>
  
  <div>
    <label class="desc" id="title4" for="txtData">Data Nascimento:</label>
    <div>
      <input type="text" id="txtData" maxlength="10" tabindex="6" name="txtData">
    </div>
 </div>   

  <div>
    <label class="desc" id="title4" for="ccidade">Cidade(Naturalidade):</label>
    <div>
      <input type="text" name="txtCidade" tabindex="7" id="ccidade" pattern="[a-zA-Z\s]+$">
    </div>
 </div> 
 
  <div>
    <label class="desc" id="title4" for="Field106">Sexo:</label>
    <div>
    <select tabindex="8" id="Field106" name="txtSexo" class="field select medium" tabindex="11"> 
    			<option selected="selected"></option>
				<option value="Masculino">Masculino</option>
				<option value="Feminino">Feminino</option>
    </select>
    </div>
  </div>
  
    <div>
    <label class="desc" id="title106" for="Field106">Estado Civil:</label>
    <div>
    <select tabindex="9" id="Field106" name="txtEstadoCivil" class="field select medium" tabindex="11"> 
    			<option selected="selected"></option>
                <option value="Solteiro">Solteiro(a)</option> 
                <option value="Casado">Casado(a)</option> 
                <option value="Separado">Separado(a)</option>
                <option value="Divorciado">Divorciado(a)</option>
                <option value="Viúvo">Viúvo(a)</option>
    </select>
    </div>
  </div>	
  		
  <div>
		<div>
  			<input type="hidden" value="Voltar"  onclick="Botaovoltartelainicial();">
			<input type="submit" value="Cadastrar">
			<input type="reset" value="limpar">
    </div>
	</div>
  
</form>
 <!-- Menu Toggle Script -->
  
</body>
</html>