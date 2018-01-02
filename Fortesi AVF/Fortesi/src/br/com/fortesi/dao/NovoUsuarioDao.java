package br.com.fortesi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.fortesi.controller.ConnectionFactory;
import br.com.fortesi.model.NovoUsuario;
import br.com.fortesi.model.Usuario;

public class NovoUsuarioDao {
	private Connection conn;
		public NovoUsuarioDao(){
			this.conn = new ConnectionFactory().getConnection();
		}
		public void inserirNovoUsuario(NovoUsuario novousuario){
			String sql = "insert into login (usuario,senha) values (?,?)";
			try{
				PreparedStatement pstm = conn.prepareStatement(sql);
				
				pstm.setString(1, novousuario.getUsuario());
				pstm.setString(2, novousuario.getSenha());
				pstm.execute();
				pstm.close();
			}catch(SQLException ex){
				throw new RuntimeException(ex);
			}
		}
		public void ExcluirUsuario(Usuario usuario){
			String sqldeleteu = "delete from login where id = ?";
			try{
			PreparedStatement pstm = conn.prepareStatement(sqldeleteu);
			pstm.setInt(1, usuario.getId());
			pstm.execute();
			}catch(SQLException ex){
				throw new RuntimeException(ex);
			}
		}
}
