package br.com.fortesi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.fortesi.controller.ConnectionFactory;
import br.com.fortesi.model.Processo;

public class ProcessoDao{
	
	private Connection conn;
	
	public ProcessoDao(){
			this.conn = new ConnectionFactory().getConnection();
		}
	
	public void inserirProcesso(Processo processo){
		String sql = "insert into processos (numprocesso,assunto,tipoacao,datacad,dataencerramento,condprocessual,partecontraria,tipojust_tribunal,cidade_comarca,forum,vara,cliente) values (?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try{
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, processo.getNumprocesso());
		pstm.setString(2, processo.getAssunto());
		pstm.setString(3, processo.getTipoacao());
		pstm.setString(4, processo.getDatacad());
		pstm.setString(5, processo.getDataencerramento());
		pstm.setString(6, processo.getCondprocessual());
		pstm.setString(7, processo.getPartecontraria());
		pstm.setString(8, processo.getTipojust_tribunal());
		pstm.setString(9, processo.getCidade_comarca());
		pstm.setString(10, processo.getForum());
		pstm.setString(11, processo.getVara());
		pstm.setString(12, processo.getCliente());
		pstm.execute();
		pstm.close();
	
		}catch(SQLException ex){
			throw new RuntimeException(ex);
		}
	
	}
	public void editar(Processo processo){
		String sqlupdate = "update processos set numprocesso = ?, assunto = ?, tipoacao = ?, datacad = ?,dataencerramento = ?,condprocessual = ?, partecontraria= ?, tipojust_tribunal = ?, cidade_comarca = ?, forum = ?, vara = ? where id = ?"; 
		try{
		PreparedStatement pstm = conn.prepareStatement(sqlupdate);
		pstm.setString(1, processo.getNumprocesso());
		pstm.setString(2, processo.getAssunto());
		pstm.setString(3, processo.getTipoacao());
		pstm.setString(4, processo.getDatacad());
		pstm.setString(5, processo.getDataencerramento());
		pstm.setString(6, processo.getCondprocessual());
		pstm.setString(7, processo.getPartecontraria());
		pstm.setString(8, processo.getTipojust_tribunal());
		pstm.setString(9, processo.getCidade_comarca());
		pstm.setString(10, processo.getForum());
		pstm.setString(11, processo.getVara());
		pstm.setInt(12, processo.getId());
		pstm.execute();
		
		}catch(SQLException ex){
			throw new RuntimeException(ex);
		}
		
	}
	public void deletarprocesso(Processo processo){
		String sqldelete = "delete from processos where id = ?";
		try{
			PreparedStatement pstm = conn.prepareStatement(sqldelete);
			pstm.setInt(1, processo.getId());
			pstm.execute();
		}catch(SQLException ex){
			throw new RuntimeException(ex);
		}
	}
}