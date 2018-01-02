package br.com.teste.Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.teste.dao.ProdutoDao;
import br.com.teste.model.Produto;

@WebServlet("/ServletProduto")
public class ServletProduto extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ServletProduto() {
        super();
      
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Produto prod = new Produto(); //instancia a classe Produto a que contém os gets e seters
		ProdutoDao proddao = new ProdutoDao();//instacia a classe ProdutoDao a que contém o metodo inserirProduto
		
		if(request.getParameter("param").equals("cadprod")){
	
		prod.setProduto(request.getParameter("txtNome"));//seta o valor de produto de acordo com o que foi digitado no formulario CadastroCliente.jsp
		prod.setPreco(request.getParameter("txtPreco"));//seta o valor de preco de acordo com o que foi digitado no formulario CadastroCliente.jsp
		prod.setQuantidade(request.getParameter("txtQuant"));//seta o valor de Quantidade de acordo com o que foi digitado no formulario CadastroCliente.jsp
		proddao.inserirProduto(prod); //chama o objeto que representa o ProdutoDao e chama o metodo que contém la inserirProduto e manda o prod onde esta setado tudo que foi digitado e salva no banco
		
		response.sendRedirect("http://localhost:8080/ExercicioJunior/Jsp/CadastroProduto.jsp");  //após salva manda para o cadastrar Novamente.
		
	}
	}
}
