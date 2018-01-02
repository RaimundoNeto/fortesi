package br.com.fortesi.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletBusca
 */
@WebServlet("/ServletBusca")
public class ServletBusca extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletBusca() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = new ConnectionFactory().getConnection();
		
		if(request.getParameter("param").equals("busca")){
				
				try {
					String sql = "select * from clientes";
					PreparedStatement pstm = conn.prepareStatement(sql);
				
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
				
				
			}
	}

}
