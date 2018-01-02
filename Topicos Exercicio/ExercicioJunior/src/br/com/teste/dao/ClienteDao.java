package br.com.teste.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.teste.fabrica.FabricaDeConexao;
import br.com.teste.model.Cliente;

public class ClienteDao {
	private Connection conn;
	
	public ClienteDao(){
		this.conn = new FabricaDeConexao().getConnection();
	}
	public void inserirCliente(Cliente cliente){
		String sql = "insert into cliente (nome,endereco,telefone) values (?,?,?)";
		try{
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, cliente.getNome());
			pstm.setString(2, cliente.getEndereco());
			pstm.setString(3, cliente.getTelefone());
			pstm.execute();
		}catch(SQLException ex){
			throw new RuntimeException(ex);
		}
	}
}
