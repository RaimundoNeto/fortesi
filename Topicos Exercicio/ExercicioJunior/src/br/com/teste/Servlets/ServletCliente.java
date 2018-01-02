package br.com.teste.Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.teste.dao.ClienteDao;
import br.com.teste.model.Cliente;

@WebServlet("/ServletCliente")
public class ServletCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ServletCliente() {
        super();
       
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cliente cli = new Cliente();
		ClienteDao clidao = new ClienteDao();
		
		if(request.getParameter("param").equals("cadcliente")){
			cli.setNome(request.getParameter("txtNomeC"));
			cli.setEndereco(request.getParameter("txtEnderecoC"));
			cli.setTelefone(request.getParameter("txtTelefoneC"));
			clidao.inserirCliente(cli);
			
			response.sendRedirect("http://localhost:8080/ExercicioJunior/Jsp/CadastroCliente.jsp");
		}
	}

}
