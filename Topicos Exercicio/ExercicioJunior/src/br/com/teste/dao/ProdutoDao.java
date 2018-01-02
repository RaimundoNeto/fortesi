package br.com.teste.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.teste.fabrica.FabricaDeConexao;
import br.com.teste.model.Produto;

public class ProdutoDao {
	private Connection conn; //variavel privada do tipo connection 
	
	public ProdutoDao(){
		this.conn = new FabricaDeConexao().getConnection(); //recupera a conexao
	}
	public void inserirProduto(Produto produto){ //método para inserir passa como parametro a classe Produto com os getters e setters e passa o produto para representar ela
		String sql = "insert into produto (produto,preco,quantidade) values (?,?,?)"; //comando sql para inserir no banco
		try{
		PreparedStatement pstm = conn.prepareStatement(sql); //caminho até o banco e chama a String sql que está o condigo sql
		pstm.setString(1, produto.getProduto());//seta o valor e atraves de produto acessa a classe Produto e pega o valor
		pstm.setString(2, produto.getPreco());//seta o valor e atraves de produto acessa a classe Produto e pega o valor
		pstm.setString(3, produto.getQuantidade());//seta o valor e atraves de produto acessa a classe Produto e pega o valor
		pstm.execute();//executa o comando
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
}
