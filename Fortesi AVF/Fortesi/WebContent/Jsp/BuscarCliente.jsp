<%@page import="java.sql.PreparedStatement"%>
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
<!-- CSS DO MENU -->
<link href="../Bootstrap/dist/css/simple-sidebar.css" rel="stylesheet">

<link href="../Bootstrap/cssEditado/bootstrapeditadocli.min.css" rel="stylesheet">
<link href="../Bootstrap/dist/css/style.css" rel="stylesheet">
<title>Busca de Clientes</title>
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
  <h2>Clientes Cadastrados</h2>
<div class ="row">
<div class="col-md-11 table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Nome</th>
        <th>Cpf</th>
        <th>Rg</th>
        <th>Data Nascimento</th>
        <th>Sexo</th>
        <th>Estado civil</th>
        <th>Cidade</th>
        <th>Opção</th>
      </tr>
	<%
	
	int id;
	String pnome;
	String cpf;
	String rg;
	String dataNascimento;
	String sexo;
	String estadocivil;
	String cidade;
		
		Connection conn = new ConnectionFactory().getConnection();
		String pegandonome = request.getParameter("busca");			
		PreparedStatement pstm = conn.prepareStatement("select * from clientes where nome = ?");
		pstm.setString(1, pegandonome);
		
		ResultSet rs = pstm.executeQuery();
		if(rs.next()){
			id = rs.getInt("id");
			pnome = rs.getString("nome");
			cpf = rs.getString("cpf");
			rg = rs.getString("rg");
			dataNascimento = rs.getString("dataNascimento");
			sexo = rs.getString("sexo");
			estadocivil = rs.getString("estadocivil");
			cidade = rs.getString("cidade");
				%>
			    </thead>
			    <tbody>
			    <tr>
				<td><%=pnome %></td>
				<td><%=cpf %></td>
				<td><%=rg %></td>
				<td><%=dataNascimento %></td>
				<td><%=sexo %></td>
				<td><%=estadocivil %></td>
				<td><%=cidade %></td>
				
				<td><a href="http://localhost:8080/Fortesi/Jsp/EditarCadastroCliente.jsp?id=<%= id %>&nome=<%=pnome %>&cpf=<%=cpf %>&rg=<%=rg %>&dataNascimento=<%=dataNascimento %>&sexo=<%=sexo %>&estadocivil=<%=estadocivil %>&cidade=<%=cidade %>">Editar</a></td>
				<td><a href="http://localhost:8080/Fortesi/ServletClientes?param=excuircliente&id=<%= id%>">Apagar</a></td>
				</tr>
						<%
						}
						rs.close();
						pstm.close();
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