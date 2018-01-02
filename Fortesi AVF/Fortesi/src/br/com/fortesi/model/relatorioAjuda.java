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
		Paragraph p1 = new Paragraph("1.	Na Tela Principal encontra-se o Menu Principal, o qual contém todas as ações para a execução das tarefas, Além duas opções de buscas por nome do cliente e por número do processo");
		Paragraph p2 = new Paragraph("2.	Em Cadastro de Clientes, no Menu Principal, ao clicar na opção será possível adicionar novos Clientes ao sistema;");
		Paragraph p3 = new Paragraph("2.1.	Preencha os campos corretamente conforme os modelos inseridos nos campos, para que o Cadastro do Cliente possa ser realizado com sucesso, clique em Limpar para limpar as informações digitadas nos campos, clique em Cadastrar para salvar o Cadastro.");
		Paragraph p4 = new Paragraph("3.	Em Cadastro de Processos, no Menu Principal, o Usuário encontrará os campos necessários para criar o Processo e relaciona-lo ao Cliente cadastrado, através do botão de auto seleção, onde irá mostrar todos os Clientes cadastrados.");
		Paragraph p5 = new Paragraph("3.1.	Preencha os campos corretamente conforme os modelos inseridos nos campos, para que o Cadastro de Processo possa ser realizado com sucesso, clique em Limpar para limpar as informações digitadas nos campos, clique em Cadastrar para salvar o Cadastro.");
		Paragraph p6 = new Paragraph("4.	Na opção Listar Clientes e Listar Processos, será possível visualizar os Clientes e os Processos respectivamente, podendo realizar a ação de Editar e Apagar.");
		Paragraph p7 = new Paragraph("5.	Agenda de contatos para armazena número e e-mail dos clientes.");
		Paragraph p8 = new Paragraph("6.	Na Área do Administrador para ter acesso a seu conteúdo é preciso ser portador de um nome de Usuário e de uma Senha os quais serão enviadas para o e-mail do Contratante no ato da assinatura do serviço.");
		Paragraph p9 = new Paragraph("7.	Ao clicar em Ajuda o Usuário será redirecionado para uma página onde terá todas as informações de tela e botões do sistema.");
		Paragraph p10 = new Paragraph("8.	Em Sair o Usuário encerará a seção e será redirecionado para a Tela de Login.");
		Paragraph p11 = new Paragraph("9.	Em caso de mais alguma duvida,bugs ou sugestões entrar em contato com a equipe do Fortesi fortesisuporte@hotmail.com");
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
