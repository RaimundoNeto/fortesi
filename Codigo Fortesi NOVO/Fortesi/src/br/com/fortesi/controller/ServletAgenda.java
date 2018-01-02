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
			
			response.sendRedirect("http://localhost:8080/Fortesi/Jsp/Agenda.jsp");
			
		}
	}

}
