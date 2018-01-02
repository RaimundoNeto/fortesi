package br.com.teste.Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletLogin() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//recebe os dados enviados pelo Login.jsp e valida;
		if(request.getParameter("param").equals("login")){
			String usuario = request.getParameter("txtUsuario"); //recupera o que foi digitado no usuario atraves do name txtUsuario;(joga dentro da variavel usuario)
			String senha = request.getParameter("txtSenha");   //recupera o que foi digitado na senha atraves do name txtSenha;(joga dentro da variavel senha)
			if(usuario.equals("lucas") && senha.equals("lucas")) { //se usuario e senha igual a lucas manda para a pagina inicial
				response.sendRedirect("http://localhost:8080/ExercicioJunior/Jsp/PaginaInicial.jsp");
			}
			else{ //se não manda para o login
				response.sendRedirect("http://localhost:8080/ExercicioJunior/Jsp/Login.jsp");
			}
		}
		
		
	}
}
