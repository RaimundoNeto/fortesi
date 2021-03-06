package br.com.fortesi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.fortesi.controller.ConnectionFactory;
import br.com.fortesi.model.Agenda;

public class AgendaDao {
	private Connection conn;
	
		public AgendaDao(){
			this.conn = new ConnectionFactory().getConnection();
		}
		
		public void inserirnaagenda(Agenda agenda){
			String sql = "insert into agenda (cliente,telefone,email) values (?,?,?)";
			
			try{
				PreparedStatement pstm = conn.prepareStatement(sql);
				pstm.setString(1, agenda.getCliente());
				pstm.setString(2, agenda.getTelefone());
				pstm.setString(3, agenda.getEmail());
				pstm.execute();
				pstm.close();
			}catch(SQLException e){
				throw new RuntimeException(e);
			}
		}
		public void removercagenda(Agenda agenda){
			String sql = "delete from agenda where id = ?";
			try{
				PreparedStatement pstm = conn.prepareStatement(sql);
				pstm.setInt(1, agenda.getId());
				pstm.execute();
			}catch(SQLException s){
				throw new RuntimeException(s);
				
			}
		}
		public void editaragenda(Agenda agenda){
			String sqle = "update agenda set telefone = ?, email = ? where id = ?";
			try{
				PreparedStatement pstm = conn.prepareStatement(sqle);
				pstm.setString(1, agenda.getTelefone());
				pstm.setString(2, agenda.getEmail());
				pstm.setInt(3, agenda.getId());
				pstm.execute();
			}catch(SQLException e){
				throw new RuntimeException(e);
			}
		}
}
