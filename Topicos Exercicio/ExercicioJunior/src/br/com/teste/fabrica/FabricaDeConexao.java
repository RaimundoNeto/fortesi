package br.com.teste.fabrica;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class FabricaDeConexao {
	
	public Connection getConnection(){
	try{
	DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	return DriverManager.getConnection("jdbc:mysql://localhost/exerciciojunior", "root", "962510");
	}catch(SQLException e){
		throw new RuntimeException(e);
	}
	}
}
