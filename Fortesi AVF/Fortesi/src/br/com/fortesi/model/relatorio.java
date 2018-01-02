package br.com.fortesi.model;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class relatorio {
public static void  main(String[] args) throws IOException, DocumentException, ClassNotFoundException, SQLException{
	
		Document doc = null;
		OutputStream os = null;

		try{
			
			doc = new Document();
		
			os = new FileOutputStream("WebContent/Relatorios/relatoriosclientes.pdf");
			PdfWriter.getInstance(doc, os);
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/fortesi","root","962510");
			Statement stm = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			ResultSet rs = stm.executeQuery("select * from clientes");
			ResultSetMetaData rsmtd = rs.getMetaData();
			int col = rsmtd.getColumnCount();
			int col1 = rsmtd.getColumnCount();
			rs.first();
			
			doc.open();
			
			PdfPTable table = new PdfPTable(5);
			PdfPCell header = new PdfPCell(new Paragraph("Relatório de clientes"));
			PdfPCell lista = new PdfPCell();
			header.setColspan(col);
			lista.setColspan(col1);
			table.addCell(header); 
			table.addCell(lista);
			table.addCell("Nome");
			table.addCell("Cpf");
			table.addCell("Rg");
			table.addCell("Telefone");
			table.addCell("Email");
			table.addCell(rs.getString(2));
			table.addCell(rs.getString(3));
			table.addCell(rs.getString(4));
			table.addCell(rs.getString(5));
			table.addCell(rs.getString(6));
			doc.add(table);
			
		}finally{
			if(doc != null){
				doc.close();
			}
			if(os != null){
				os.close();
					}	
				}
		}
}