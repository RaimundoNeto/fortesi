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
<title>Insert title here</title>
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
                    <a href="http://localhost:8080/Fortesi/Jsp/NovoUsuario.jsp">Novo Usuário</a>
                </li>
                <li>
                    <a href="http://localhost:8080/Fortesi/Jsp/ListarUsuario.jsp">Listar Usuários</a>
                </li>
                <li>
                    <a href="http://localhost:8080/Fortesi/ServletPrincipal?param=sairadm">Sair</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

    </div>


<!-- Fim do Menu -->


<div class="container">
  <h2>Usuários do sistema</h2>
  <div class="table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
      	<th>Id</th>
        <th>Usuário</th>
        <th>Senha</th>
        <th>Opção</th>
      </tr>
      <%
      		int id;
			String usuario;
      		String senha;
			
			Connection conn = new ConnectionFactory().getConnection();
			Statement stm = conn.createStatement();
			ResultSet rs = stm.executeQuery("select * from login");
			while(rs.next()){
			id = rs.getInt("id");
			usuario = rs.getString("usuario");
			senha = rs.getString("senha");
			
			%>
    </thead>
    <tbody>
      <tr>
      	<td><%= id %></td>
       	<td><%=usuario %></td>
		<td><%=senha %></td>
		<td><a href="http://localhost:8080/Fortesi/ServletPrincipal?param=excluirusuario&id=<%=id %>">Excluir</a></td>
      </tr>
      <%
		}
      %>
    </tbody>
  </table>
  </div>
</div>
 
<script src="../Bootstrap/dist/js/jquery.js"></script>
<script src="../Bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>