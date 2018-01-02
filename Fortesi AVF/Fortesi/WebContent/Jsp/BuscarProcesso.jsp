<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
<title>Processos</title>
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


	<div class="container">
  <h2>Processos</h2>
<div class ="row">
<div class="col-md-11 table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Cliente</th>
        <th>Número do Processo</th>
        <th>Assunto</th>
        <th>Tipo de Ação</th>
        <th>Data do Cadastro</th>
        <th>Data de Encerramento</th>
        <th>Condição Processual</th>
        <th>Parte Contraria</th>
        <th>Tipo de Justiça/Tribunal</th>
        <th>Cidade/Comarca</th>
        <th>Fórum</th>
        <th>Vara</th>
        <th>Opção</th>
      </tr>
	<%
	
	int id;
	String cliente;
	String numprocesso;
	String assunto;
	String tipoacao;
	String valor_hora;
	String datacad;
	String dataencerramento;
	String condprocessual;
	String partecontraria;
	String advcontrario;
	String tipojust_tribunal;
	String regiao;
	String secao;
	String subcecao;
	String cidade_comarca;
	String forum;
	String vara;
		
		Connection conn = new ConnectionFactory().getConnection();
		String pegandonome = request.getParameter("buscap");			
		PreparedStatement pstm = conn.prepareStatement("select * from processos where numprocesso = ?");
		pstm.setString(1, pegandonome);
		
		ResultSet rs = pstm.executeQuery();
		if(rs.next()){
			id = rs.getInt("id");
			cliente = rs.getString("cliente");
			numprocesso = rs.getString("numprocesso");
			assunto = rs.getString("assunto");
			tipoacao = rs.getString("tipoacao");
			datacad = rs.getString("datacad");
			dataencerramento = rs.getString("dataencerramento");
			condprocessual = rs.getString("condprocessual");
			partecontraria = rs.getString("partecontraria");
			tipojust_tribunal = rs.getString("tipojust_tribunal");
			cidade_comarca = rs.getString("cidade_comarca");
			forum = rs.getString("forum");
			vara = rs.getString("vara");
				%>
			    </thead>
			    <tbody>
			    <tr>
			    <td><%=cliente %></td>
			    <td><%=numprocesso %></td>
				<td><%=assunto %></td>
				<td><%=tipoacao %></td>
				<td><%=datacad %></td>
				<td><%=dataencerramento %></td>
				<td><%=condprocessual %></td>
				<td><%=partecontraria %></td>
				<td><%=tipojust_tribunal %></td>
				<td><%=cidade_comarca %></td>
				<td><%=forum %></td>
				<td><%=vara %></td>
				
				<td><a href="http://localhost:8080/Fortesi/Jsp/EditarCadastroProcesso.jsp?cliente=<%=cliente %>&id=<%= id%>&numprocesso=<%=numprocesso %>&assunto=<%= assunto%>&tipoacao=<%=tipoacao %>&datacad=<%=datacad %>&dataencerramento=<%= dataencerramento %>&condprocessual=<%=condprocessual %>&partecontraria=<%=partecontraria %>&tipojust_tribunal=<%=tipojust_tribunal %>&cidade_comarca=<%=cidade_comarca %>&forum=<%=forum %>&vara=<%=vara %>">Editar</a></td>
				<td><a href="http://localhost:8080/Fortesi/ServletProcesso?param=removerprocesso&id=<%= id%>">Apagar</a></td>
				
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