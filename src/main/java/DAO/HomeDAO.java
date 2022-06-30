package DAO;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

//import org.apache.poi.hssf.usermodel.HSSFWorkbook;
//import org.apache.poi.poifs.filesystem.POIFSFileSystem;
//import org.apache.poi.ss.usermodel.Row;
//import org.apache.poi.ss.usermodel.Sheet;


import BEAN.Quiz;
import DB.BDConncetion;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HomeDAO {
//	public static void importExcel(HttpServletRequest request, HttpServletResponse response) throws IOException {
//		
//		
//			 try {
//				 FileInputStream file1 = new FileInputStream("D://excel/test.xls");
//					HSSFWorkbook wb = new HSSFWorkbook(new POIFSFileSystem(file1));
//					 Sheet sheet = wb.getSheetAt(0);	 
////				 duyá»‡t háº¿t cÃ¡c hÃ ng
//				 for(int i = 1; i<= sheet.getLastRowNum(); i++) {
////					 lá»±a chá»�n sheet
//					 Row row = sheet.getRow(i);
//					 
////					 trá»� Ä‘áº¿n tá»«ng cá»™t trong tá»«ng hÃ ng. ChÃº Ã½ kiá»ƒu data trong file excel
//					 
//					 int STT = (int) row.getCell(0).getNumericCellValue();
//					 String cauhoi = row.getCell(1).getStringCellValue();
//					 String dapan1 = row.getCell(2).getStringCellValue();
//					 String dapan2 = row.getCell(3).getStringCellValue();
//					 String dapan3 = row.getCell(4).getStringCellValue();
//					 String dapan4 = row.getCell(5).getStringCellValue();
//					
//			
//					 
//					 
//					 Quiz quiz = new Quiz();
//						
//						
//						quiz.setSTT(STT);
//						quiz.setQuestion(cauhoi);
//						quiz.setOption1(dapan1);
//						quiz.setOption2(dapan2);
//						quiz.setOption3(dapan3);
//						quiz.setOption4(dapan4);
//	
//						
//						
//				inserData(quiz, request, response);
//				 }
//				 wb.close();
//			} catch (ServletException e) {
//			
//				request.setAttribute("message", e.getMessage());
//			} catch (IOException e) {
//				
//				request.setAttribute("message", e.getMessage());
//			} 
//		
//	}
	public static void inserData(Quiz quiz, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		Connection conn;
		try {
			conn = BDConncetion.getSQLSeverConnection();
			String sql = "insert into Question(STT, QuestionName, option1, option2, option3, option4) values (?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, quiz.getSTT());
			ps.setString(2, quiz.getQuestion());
			ps.setString(3, quiz.getOption1());
			ps.setString(4, quiz.getOption2());
			ps.setString(5, quiz.getOption3());
			ps.setString(6, quiz.getOption4());

			int rs = ps.executeUpdate();
			if(rs != 0) {
				request.setAttribute("message", "Success");
			}else {
				request.setAttribute("message", "Fail");
			}
			
			
			
			ps.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}
}
