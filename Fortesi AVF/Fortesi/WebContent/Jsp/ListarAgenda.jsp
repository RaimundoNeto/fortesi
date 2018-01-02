<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="br.com.fortesi.controller.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Lista de Contatos</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<!-- CSS DO MENU -->
<link href="../Bootstrap/dist/css/simple-sidebar.css" rel="stylesheet">

<link href="../Bootstrap/cssEditado/bootstrapeditadocli.min.css" rel="stylesheet">
<link href="../Bootstrap/dist/css/style.css" rel="stylesheet">
</head>
<body>
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


<div class="container">
  <h2>Agenda de contatos</h2>
<div class ="row">
<div class="col-md-11 table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Nome</th>
        <th>Telefone</th>
        <th>Email</th>
        <th>Opção</th>
        <th>Opção</th>
      </tr>
      <%
			int id;
			String cliente;
			String telefone;
			String email;
			
			Connection conn = new ConnectionFactory().getConnection();
			Statement stm = conn.createStatement();
			ResultSet rs = stm.executeQuery("select * from agenda order by cliente;");
			while(rs.next()){
			id = rs.getInt("id");
			cliente = rs.getString("cliente");
			telefone = rs.getString("telefone");
			email = rs.getString("email");
			
			%>
    </thead>
    <tbody>
    		 <tr>
				<td><%=cliente %></td>
				<td><%=telefone %></td>
				<td><%=email %></td>
								
				<td><a href="http://localhost:8080/Fortesi/Jsp/EditarAgenda.jsp?id=<%= id %>&cliente=<%=cliente %>&telefone=<%=telefone %>&email=<%=email %>">Editar</a></td>
				<td><a href="http://localhost:8080/Fortesi/ServletAgenda?param=excuirclienteagenda&id=<%= id%>">Apagar</a></td>
			</tr>
			<%
			}
			rs.close();
			stm.close();
			conn.close();
			%>
    </tbody>
  </table>
  </div>
  </div>
</div>
 
<script src="../Bootstrap/dist/js/jquery.js"></script>
<script src="../Bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>