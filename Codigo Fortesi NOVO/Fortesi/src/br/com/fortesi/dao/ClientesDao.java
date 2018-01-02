package br.com.fortesi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.fortesi.controller.ConnectionFactory;
import br.com.fortesi.model.Clientes;

public class ClientesDao {
	private Connection conn;
		
		public ClientesDao(){
			this.conn = new ConnectionFactory().getConnection();
		}
		
		public void inserirCliente(Clientes cliente){
			String sql = "insert into clientes (nome,cpf,rg,dataNascimento,sexo,estadocivil,cidade) values(?,?,?,?,?,?,?)";
			try{
			PreparedStatement pstm = conn.prepareStatement(sql);
			
			pstm.setString(1, cliente.getNome());
			pstm.setString(2, cliente.getCpf());
			pstm.setString(3, cliente.getRg());
			pstm.setString(4, cliente.getDataNascimento());
			pstm.setString(5, cliente.getSexo());
			pstm.setString(6, cliente.getEstadocivil());
			pstm.setString(7, cliente.getCidade());
			pstm.execute();
			pstm.close();
			}catch(SQLException ex){
				throw new RuntimeException(ex);
			}
			}
		//não ta funcionando
		public List<Clientes>Listar(){
						
				List<Clientes> lista = new ArrayList<>();
				try{
					Statement stm = conn.createStatement();
					ResultSet rs = stm.executeQuery("select * from clientes");
					while(rs.next()){
						Clientes cl = new Clientes();
					   cl.setNome(rs.getString("nome"));
					   cl.setNome(rs.getString("cpf"));
					   cl.setNome(rs.getString("rg"));
					   cl.setNome(rs.getString("dataNascimento"));
					   cl.setNome(rs.getString("sexo"));
					   cl.setNome(rs.getString("estadocivil"));
					   cl.setNome(rs.getString("cidade"));
					   lista.add(cl);
					}
					stm.close();
				}catch(Exception e){
							
				}
				return lista;
			}
		public void EditarCliente(Clientes cliente){
			String sqlupdate = "update clientes set nome = ?,cpf = ?, rg = ?, dataNascimento = ?, sexo = ?, estadocivil = ?, cidade = ? where id = ? ";
			try{
			PreparedStatement pstm = conn.prepareStatement(sqlupdate);
			pstm.setString(1, cliente.getNome());
			pstm.setString(2, cliente.getCpf());
			pstm.setString(3, cliente.getRg());
			pstm.setString(4, cliente.getDataNascimento());
			pstm.setString(5, cliente.getSexo());
			pstm.setString(6, cliente.getEstadocivil());
			pstm.setString(7, cliente.getCidade());
			pstm.setInt(8, cliente.getId());
			pstm.execute();
						
			}catch(SQLException ex){
				throw new RuntimeException(ex);
			}
			}
		public void ExcluirCliente(Clientes cliente){
			String sqldelete = "delete from clientes where id = ?";
			try{
			PreparedStatement pstm = conn.prepareStatement(sqldelete);
			pstm.setInt(1, cliente.getId());
			pstm.execute();
			}catch(SQLException ex){
				throw new RuntimeException(ex);
			}
		}
		}
