package br.com.fortesi.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fortesi.dao.ClientesDao;
import br.com.fortesi.model.Clientes;


@WebServlet("/ServletClientes")
public class ServletClientes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ServletClientes() {
        super();
        
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
		//se param cadastrarcliente Entra no if
		if(request.getParameter("param").equals("cadastrarcliente")){
			Clientes cl = new Clientes();		
			ClientesDao cld = new ClientesDao();
			
			cl.setNome(request.getParameter("txtNome"));
			cl.setCpf(request.getParameter("txtCpf"));
			cl.setRg(request.getParameter("txtRg"));
			cl.setDataNascimento(request.getParameter("txtData"));
			cl.setSexo(request.getParameter("txtSexo"));
			cl.setEstadocivil(request.getParameter("txtEstadoCivil"));
			cl.setCidade(request.getParameter("txtCidade"));
			
			cld.inserirCliente(cl);
			response.sendRedirect("http://localhost:8080/Fortesi/Jsp/ListarClientes.jsp");

		
		
				//if para editar cliente
			}else if(request.getParameter("param").equals("editarcliente")){
				Clientes cl = new Clientes();
				ClientesDao cld =  new ClientesDao();
				
				cl.setId(Integer.parseInt(request.getParameter("txtId")));
				cl.setNome(request.getParameter("txtNome"));
				cl.setCpf(request.getParameter("txtCpf"));
				cl.setRg(request.getParameter("txtRg"));
				cl.setDataNascimento(request.getParameter("txtData"));
				cl.setSexo(request.getParameter("txtSexo"));
				cl.setEstadocivil(request.getParameter("txtEstadoCivil"));
				cl.setCidade(request.getParameter("txtCidade"));
				
				cld.EditarCliente(cl);
				
				response.sendRedirect("http://localhost:8080/Fortesi/Jsp/ListarClientes.jsp");
			
				
			//if para remover	
			}else if(request.getParameter("param").equals("excuircliente")){
				if(request.getParameter("id") != null){
				Clientes cl = new Clientes();
				ClientesDao cld = new ClientesDao();
				
				cl.setId(Integer.parseInt(request.getParameter("id")));
				cld.ExcluirCliente(cl);		
				
				response.sendRedirect("http://localhost:8080/Fortesi/Jsp/ListarClientes.jsp");
			}
		}
	}
}