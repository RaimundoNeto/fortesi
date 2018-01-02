package br.com.fortesi.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fortesi.dao.NovosDadosDao;
import br.com.fortesi.dao.ProcessoDao;
import br.com.fortesi.model.NovosDados;
import br.com.fortesi.model.Processo;

@WebServlet("/ServletProcesso")
public class ServletProcesso extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public ServletProcesso() {
        super();
       
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//cadastrar novo processo
		if(request.getParameter("param").equals("cadprocesso")){
			Processo proc = new Processo();
			ProcessoDao procdao = new ProcessoDao();
			
			proc.setNumprocesso(request.getParameter("txtNProcesso"));
			proc.setAssunto(request.getParameter("txtAssunto"));
			proc.setTipoacao(request.getParameter("txtTipoacao"));
			proc.setDatacad(request.getParameter("txtDataCad"));
			proc.setDataencerramento(request.getParameter("txtDataEnce"));
			proc.setCondprocessual (request.getParameter("txtCondProcess"));
			proc.setPartecontraria(request.getParameter("txtParteContraria"));
			proc.setTipojust_tribunal(request.getParameter("txtTipoJustica"));
			proc.setCidade_comarca(request.getParameter("txtCidadeComarca"));
			proc.setForum(request.getParameter("txtForum"));
			proc.setVara(request.getParameter("txtVara"));
			proc.setCliente(request.getParameter("cliente"));
			
			procdao.inserirProcesso(proc);
			
			response.sendRedirect("http://localhost:8080/Fortesi/Jsp/ListarProcessos.jsp");
			
			//editar processo
		}else if(request.getParameter("param").equals("editarprocesso")){
			Processo proc = new Processo();
			ProcessoDao procdao = new ProcessoDao();
			
			proc.setId(Integer.parseInt(request.getParameter("txtId")));
			proc.setNumprocesso(request.getParameter("txtNProcesso"));
			proc.setAssunto(request.getParameter("txtAssunto"));
			proc.setTipoacao(request.getParameter("txtTipoacao"));
			proc.setDatacad(request.getParameter("txtDataCad"));
			proc.setDataencerramento(request.getParameter("txtDataEnce"));
			proc.setCondprocessual (request.getParameter("txtCondProcess"));
			proc.setPartecontraria(request.getParameter("txtParteContraria"));
			proc.setTipojust_tribunal(request.getParameter("txtTipoJustica"));
			proc.setCidade_comarca(request.getParameter("txtCidadeComarca"));
			proc.setForum(request.getParameter("txtForum"));
			proc.setVara(request.getParameter("txtVara"));
			
			procdao.editar(proc);
			
			response.sendRedirect("http://localhost:8080/Fortesi/Jsp/ListarProcessos.jsp");
			
			
			
			//Excluir Processo
			}else if (request.getParameter("param").equals("removerprocesso")){
				Processo proc = new Processo();
				ProcessoDao procdao = new ProcessoDao();
				
				proc.setId(Integer.parseInt(request.getParameter("id")));
				procdao.deletarprocesso(proc);
				
				response.sendRedirect("http://localhost:8080/Fortesi/Jsp/ListarProcessos.jsp");
			
			
			//adicionar dados novos ao formulario de cad processo
			}else if(request.getParameter("param").equals("cadnovosdados")){
				NovosDados nvd = new NovosDados();
				NovosDadosDao nvdd = new NovosDadosDao();
				
				nvd.setTipoacaon(request.getParameter("txtTipoacao"));
				nvd.setCondprocessualn(request.getParameter("txtCondProcess"));
				nvd.setPartecontrarian(request.getParameter("txtParteContraria"));
				nvd.setAdvcontrarion(request.getParameter("txtAdvoadoContrario"));
				nvd.setRegiaon(request.getParameter("txtRegiao"));
				nvd.setSecaon(request.getParameter("txtsecao"));
				nvd.setSubcecaon(request.getParameter("txtSubsecao"));
				nvd.setCidade_comarcan(request.getParameter("txtCidadeComarca"));
				nvd.setJuizdireito_espn(request.getParameter("txtJuizDireitoesp"));
				nvd.setForumn(request.getParameter("txtForum"));
				nvd.setVaran(request.getParameter("txtVara"));
				
				nvdd.inserir(nvd);
				
				response.sendRedirect("http://localhost:8080/Fortesi/Jsp/CadastroProcesso.jsp");
			}
		}	
	}		

