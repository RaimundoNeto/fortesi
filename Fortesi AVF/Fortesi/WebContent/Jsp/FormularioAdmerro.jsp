<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrador</title>
<link rel="stylesheet" type="text/css"  href="../Css/estilo.css" />
<link rel="stylesheet" type="text/css"  href="../Css/meucss.css" />

<!-- /#wrapper -->    
    
    <!-- Bootstrap Core CSS -->
    <link href="../Bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../Bootstrap/dist/css/simple-sidebar.css" rel="stylesheet">

</head>
	<%
	//recupera sessão, se for nula manda para pagina login
	HttpSession sessao = request.getSession();
	if(sessao.getAttribute("usuario") == null){
		sessao.invalidate();
		response.sendRedirect("http://localhost:8080/Fortesi/Jsp/Login.jsp");
	}else if(sessao.getAttribute("superusuario") != null){
		response.sendRedirect("http://localhost:8080/Fortesi/Jsp/Administrador.jsp");
	}
	%>
<body id="fundoformadmerro">
<!-- Começo menu -->
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
	
	<form action="http://localhost:8080/Fortesi/ServletPrincipal?param=autloginadm" method="POST">
<div id="fieldsetformadmerro"> <!-- estilo.css -->
		
	<div>
    <label class="desc" id="title1" for="cNome">Usuário:</label>
	    <div>
	      <input type="text" name="txtSuperUsuario" id="cNome">
	    </div>
  	</div>
  	
  	<div>
    <label class="desc" id="title1" for="cNome">Senha:</label>
	    <div>
	      <input type="password" name="txtSuperSenha" id="cNome">
	    </div>
  	</div>
  	
		</div>		
			
		<div class="centralizarbotaoformadm"> <!-- estilo.css -->
		<input type="submit" value="Entrar">
		</div>	
		<div id="centralizarbotaoformadmerro">
		<span>Erro Ao Digitar Login ou Senha</span>
		</div>
			
	</form>
	
</body>
</html>