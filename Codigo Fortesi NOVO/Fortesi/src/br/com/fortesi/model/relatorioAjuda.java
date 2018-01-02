package br.com.fortesi.model;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.SQLException;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

public class relatorioAjuda {
	public static void  main(String[] args) throws IOException, DocumentException, ClassNotFoundException, SQLException{
			
		Document doc = null;
		OutputStream os = null;
		
		doc = new Document();
		
		os = new FileOutputStream("WebContent/Relatorios/relatorioAjuda.pdf");
		PdfWriter.getInstance(doc, os);
		
		doc.open();
		
		Paragraph p = new Paragraph("Bem vindo ao Centro de Ajuda do Fortesi.");
		p.setAlignment(Element.ALIGN_CENTER);
		Paragraph p1 = new Paragraph("1.	Na Tela Principal encontra-se o Menu Principal, o qual cont�m todas as a��es para a execu��o das tarefas, Al�m duas op��es de buscas por nome do cliente e por n�mero do processo");
		Paragraph p2 = new Paragraph("2.	Em Cadastro de Clientes, no Menu Principal, ao clicar na op��o ser� poss�vel adicionar novos Clientes ao sistema;");
		Paragraph p3 = new Paragraph("2.1.	Preencha os campos corretamente conforme os modelos inseridos nos campos, para que o Cadastro do Cliente possa ser realizado com sucesso, clique em Limpar para limpar as informa��es digitadas nos campos, clique em Cadastrar para salvar o Cadastro.");
		Paragraph p4 = new Paragraph("3.	Em Cadastro de Processos, no Menu Principal, o Usu�rio encontrar� os campos necess�rios para criar o Processo e relaciona-lo ao Cliente cadastrado, atrav�s do bot�o de auto sele��o, onde ir� mostrar todos os Clientes cadastrados.");
		Paragraph p5 = new Paragraph("3.1.	Preencha os campos corretamente conforme os modelos inseridos nos campos, para que o Cadastro de Processo possa ser realizado com sucesso, clique em Limpar para limpar as informa��es digitadas nos campos, clique em Cadastrar para salvar o Cadastro.");
		Paragraph p6 = new Paragraph("4.	Na op��o Listar Clientes e Listar Processos, ser� poss�vel visualizar os Clientes e os Processos respectivamente, podendo realizar a a��o de Editar e Apagar.");
		Paragraph p7 = new Paragraph("5.	Agenda de contatos para armazena n�mero e e-mail dos clientes.");
		Paragraph p8 = new Paragraph("6.	Na �rea do Administrador para ter acesso a seu conte�do � preciso ser portador de um nome de Usu�rio e de uma Senha os quais ser�o enviadas para o e-mail do Contratante no ato da assinatura do servi�o.");
		Paragraph p9 = new Paragraph("7.	Ao clicar em Ajuda o Usu�rio ser� redirecionado para uma p�gina onde ter� todas as informa��es de tela e bot�es do sistema.");
		Paragraph p10 = new Paragraph("8.	Em Sair o Usu�rio encerar� a se��o e ser� redirecionado para a Tela de Login.");
		Paragraph p11 = new Paragraph("9.	Em caso de mais alguma duvida,bugs ou sugest�es entrar em contato com a equipe do Fortesi fortesisuporte@hotmail.com");
		doc.add(p);
        doc.add(p1);
        doc.add(p2);
        doc.add(p3);
        doc.add(p4);
        doc.add(p5);
        doc.add(p6);
        doc.add(p7);
        doc.add(p8);
        doc.add(p9);
        doc.add(p10);
        doc.add(p11);
		doc.close();
	}
}
