package br.com.fortesi.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import br.com.fortesi.dao.NovoUsuarioDao;
import br.com.fortesi.model.NovoUsuario;
import br.com.fortesi.model.Usuario;


@WebServlet("/ServletPrincipal")
public class ServletPrincipal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ServletPrincipal() {
        super();
        
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		Connection conn = new ConnectionFactory().getConnection();
		
		
		
		//verificar login e senha no banco---------------------------------------------------------------
		//se o parametro for parar = autlogin entra no if
		if(request.getParameter("param").equals("autlogin")){
			
			//recuperando dados digitados
			String pegausuario = request.getParameter("txtUsuario");
			String pegasenha = request.getParameter("txtSenha");
			
			try{
				//sql para verificar usuario e senha digitados(no banco)
				String sqlverificar = "select * from login where usuario = ? and senha = ?";
				PreparedStatement pstm = conn.prepareStatement(sqlverificar);
				pstm.setString(1,pegausuario);
				pstm.setString(2, pegasenha);
				
				//gera um rs para olhar os registros no banco
				ResultSet rs = pstm.executeQuery();
				
				//se encontrar registro no banco de dados criar a sessão
				if(rs.next()){
					HttpSession sessao = request.getSession(); //recupera a sessão com o conteiner
					sessao.setAttribute("usuario", pegausuario); //seta um atributo para usuario
					//manda para página inicial
					response.sendRedirect("http://localhost:8080/Fortesi/Jsp/PaginaInicial.jsp");
				}else{
						response.sendRedirect("http://localhost:8080/Fortesi/Jsp/Login.jsp");
					}
				pstm.close();
				rs.close();
				conn.close();
				}catch(SQLException ex){
					throw new RuntimeException();
				}
			
			
			
			
			//if para encerra sessão-----------------------------------------------------------------------------------
		}else if (request.getParameter("param").equals("sair")){
			//recuperando sessão com meu servidor
			HttpSession sessao = request.getSession();
			//se meu atributo usuario setado no if autlogin for diferente de nulo ele encerra a sessão
			if(sessao.getAttribute("usuario") != null){
			sessao.invalidate();
			response.sendRedirect("http://localhost:8080/Fortesi/Jsp/Login.jsp");
				}		
		
				//if para autenticar super usuario-----------------------------------------------------------------------
			}else if(request.getParameter("param").equals("autloginadm")){
				
				String pegatxtSuperUsuario = request.getParameter("txtSuperUsuario");
				String pegatxtSuperSenha = request.getParameter("txtSuperSenha");
				
				
				String sql = "select * from loginadm where usuario = ? and senha = ?";
				
				try{
					PreparedStatement pstm = conn.prepareStatement(sql);
					pstm.setString(1, pegatxtSuperUsuario);
					pstm.setString(2, pegatxtSuperSenha);
					
					ResultSet rs = pstm.executeQuery();
					
					if(rs.next()){
						HttpSession sessaodois = request.getSession();
						sessaodois.setAttribute("superusuario", pegatxtSuperUsuario);
						response.sendRedirect("http://localhost:8080/Fortesi/Jsp/Administrador.jsp");
					}else{
						response.sendRedirect("http://localhost:8080/Fortesi/Jsp/FormularioAdmerro.jsp");
					}
					
				}catch(SQLException ex){
					out.println("erro no sql "+ex);
					}
				
			
			
			
			
				//if para cadastrar novo usuario para o sistema -------------------------------------------------------
				}else if (request.getParameter("param").equals("cadnovousuario")){
					
					//instanciando minhas classe
					NovoUsuario nu = new NovoUsuario();
					NovoUsuarioDao nud = new NovoUsuarioDao();
					
					
					nu.setUsuario(request.getParameter("txtNovoUsuario"));
					nu.setSenha(request.getParameter("txtNovaSenha"));
					nud.inserirNovoUsuario(nu);
					
					response.sendRedirect("http://localhost:8080/Fortesi/Jsp/Administrador.jsp");
				// if para excluir Usuario do sistema	
				}else if(request.getParameter("param").equals("excluirusuario")){
					if(request.getParameter("id") != null){
						Usuario usu = new Usuario();
						NovoUsuarioDao usudao = new NovoUsuarioDao();
						
						usu.setId(Integer.parseInt(request.getParameter("id")));
						usudao.ExcluirUsuario(usu);
						
						response.sendRedirect("http://localhost:8080/Fortesi/Jsp/ListarUsuario.jsp");
					}
					//if para encerra sessao da área do administrador
				}else if(request.getParameter("param").equals("sairadm")){
					//recuperando sessão com meu servidor
					HttpSession sessao = request.getSession();
					//se meu atributo usuario setado no if autlogin for diferente de nulo ele encerra a sessão
					if(sessao.getAttribute("superusuario") != null){
					sessao.invalidate();
					response.sendRedirect("http://localhost:8080/Fortesi/Jsp/PaginaInicial.jsp");
						}	
				
				}

			}
			
		}
