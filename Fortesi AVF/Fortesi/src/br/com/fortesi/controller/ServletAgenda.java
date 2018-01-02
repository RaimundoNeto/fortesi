package br.com.fortesi.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fortesi.dao.AgendaDao;
import br.com.fortesi.model.Agenda;

@WebServlet("/ServletAgenda")
public class ServletAgenda extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ServletAgenda() {
        super();
      
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("param").equals("cadagenda")){
			String cliente = request.getParameter("cliente");
			String telefone = request.getParameter("ntelefone");
			String email = request.getParameter("NEmail");
			
			Agenda ag = new Agenda();
			AgendaDao agd = new AgendaDao();
			
			ag.setCliente(cliente);
			ag.setTelefone(telefone);
			ag.setEmail(email);
			
			agd.inserirnaagenda(ag);
			
			response.sendRedirect("http://localhost:8080/Fortesi/Jsp/ListarAgenda.jsp");
			
		}
		else if(request.getParameter("param").equals("excuirclienteagenda")){
			String pegaid = request.getParameter("id");
			
			Agenda ag = new Agenda();
			AgendaDao agd = new AgendaDao();
			
			ag.setId(Integer.parseInt(pegaid));
			agd.removercagenda(ag);
			
			response.sendRedirect("http://localhost:8080/Fortesi/Jsp/ListarAgenda.jsp");
		}
		else if(request.getParameter("param").equals("editaragenda")){
			String pegaid = request.getParameter("id");
			String pegatelefone = request.getParameter("telefone"); 
			String pegaemail = request.getParameter("email");
			String pegacliente = request.getParameter("nome");
			
			Agenda ag = new Agenda();
			AgendaDao agd = new AgendaDao();
			
			ag.setId(Integer.parseInt(pegaid));
			ag.setTelefone(pegatelefone);
			ag.setEmail(pegaemail);
			ag.setCliente(pegacliente);
			
			agd.editaragenda(ag);
			
			response.sendRedirect("http://localhost:8080/Fortesi/Jsp/ListarAgenda.jsp");
		}
	}

}
