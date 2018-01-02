package br.com.fortesi.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	//método do tipo Connection chamado getConnection
	public Connection getConnection(){
		try{
		DriverManager.registerDriver(new com.mysql.jdbc.Driver()); //registra o driver do mysql
		return DriverManager.getConnection("jdbc:mysql://localhost/fortesi","root","962510"); //retorna a conexao com minha database Fortesi passando usuario e senha
		}catch(SQLException ex){ //lança uma exceção
			throw new RuntimeException(ex); //Trata a Exceção
		}
	}	
}
