package br.com.fortesi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.fortesi.controller.ConnectionFactory;
import br.com.fortesi.model.NovosDados;

public class NovosDadosDao {
	private Connection conn;
	public NovosDadosDao(){
		this.conn = new ConnectionFactory().getConnection();
	}
	public void inserir(NovosDados novodado){
		String sql = "insert into novosdadosprocesso values (?,?,?,?,?,?,?,?,?,?,?,?)";
		try{
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, novodado.getId());
			pstm.setString(2, novodado.getTipoacaon());
			pstm.setString(3, novodado.getCondprocessualn());
			pstm.setString(4, novodado.getPartecontrarian());
			pstm.setString(5, novodado.getAdvcontrarion());
			pstm.setString(6, novodado.getRegiaon());
			pstm.setString(7, novodado.getSecaon());
			pstm.setString(8, novodado.getSubcecaon());
			pstm.setString(9, novodado.getCidade_comarcan());
			pstm.setString(10, novodado.getJuizdireito_espn());
			pstm.setString(11, novodado.getForumn());
			pstm.setString(12, novodado.getVaran());
			pstm.execute();
			
		}catch(SQLException ex){
			throw new RuntimeException(ex);
		}
	}
}
