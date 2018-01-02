package br.com.fortesi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.fortesi.controller.ConnectionFactory;
import br.com.fortesi.model.Login;

public class LoginDao {
		
		private Connection conn;
	
	public LoginDao(){
		this.conn = new ConnectionFactory().getConnection();
	}
	public void verificarlogin(Login login){
		String sqlverificar = "select * from login where usuario = ? and senha = ?";
		
		try{
			PreparedStatement pstm = conn.prepareStatement(sqlverificar);
			pstm.setString(1, login.getUsuario());
			pstm.setString(2, login.getSenha());
			pstm.execute();
			pstm.close();
		}catch(SQLException ex){
			throw new RuntimeException();
		}
	}
}
