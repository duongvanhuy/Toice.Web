package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.locks.AbstractQueuedLongSynchronizer.ConditionObject;

import BEAN.ReadQuestions;
import DB.BDConncetion;
import jakarta.servlet.http.HttpServletRequest;

public class ReadQuestionsDAO {
	// connection
	static Connection conn;
	static PreparedStatement ps;
	static ResultSet rs ;
	
	// get all "read questions"
	
	// get one "read question"
	
	// get some ""read question"
	
	public static  List<ReadQuestions> getReadQuestions(HttpServletRequest request, int curElement, int page, int readexeciseID) {
//		curElement: tong so phan tÆ° hien thi tren 1 trang
//		page: trang hiá»‡n thá»�i
		
//		readexeciseID: pháº§n reading nÃ o: test 1, test 2,.... nÄƒng cao , cÆ¡ báº£n cÃ¡c kiá»ƒu
		String sql = "select * from ReadQuestion where readexeciseID = ? ORDER BY readexeciseID OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
		
		List<ReadQuestions> total = new ArrayList<ReadQuestions>();
		try {
			conn = BDConncetion.getSQLSeverConnection();
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, readexeciseID);
			ps.setInt(2, page );
			ps.setInt(3,  curElement);
			rs = ps.executeQuery();
			
			
			// Ä‘Ã¢y lÃ  trang web luyá»‡n thi nÃªn tÃ­nh báº£o máº­t Ä‘Ã¡p Ã¡n khÃ´ng cao láº¯m
			// ta cÃ³ thá»ƒ tráº£ vá»� Ä‘Ã¡p Ã¡n vÃ  lÆ°u nÃ³ á»Ÿ phÃ­a client sau Ä‘Ã³ t sá»­ lÃ½ á»Ÿ client luÃ´n
			while(rs.next()) {
				ReadQuestions question = new ReadQuestions();
				question.setNum(rs.getInt("num"));
				question.setParagraph(rs.getString("paragraph")); // Ä‘á»� bÃ i
				question.setQuestion(rs.getString("question")); // cÃ¢u há»�i
				question.setOption1(rs.getString("option1"));
				question.setOption2(rs.getString("option2"));
				question.setOption3(rs.getString("option3"));
				question.setOption4(rs.getString("option4"));
				question.setCorrectanswer(rs.getString("correctanswer")); // Ä‘Ã¡p Ã¡n
				
				total.add(question);
			}
			return total;
					
		} catch (ClassNotFoundException e) {
			request.setAttribute("mesage", e.getMessage());
		} catch (SQLException e) {
			request.setAttribute("mesage", e.getMessage());
		}
		return null;
		
	}
	
	// tá»•ng sá»‘ cÃ¢u há»�i pháº§n reading
	public static int sumReadQuestion(HttpServletRequest request) {
		String sql = "SELECT COUNT(ReadQuestionID) FROM ReadQuestion";
		
		try {
			conn = BDConncetion.getSQLSeverConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			int countRows = rs.getInt("countRows");
			return countRows;
			
		} catch (ClassNotFoundException e) {
			request.setAttribute("mesage", e.getMessage());
		} catch (SQLException e) {
			request.setAttribute("mesage", e.getMessage());
		}
		
		return 0;
	}
	
	// get
	
	public static  List<ReadQuestions> getReadElementTest(HttpServletRequest request) {
//		curElement: tong so phan tÆ° hien thi tren 1 trang
//		page: trang hiá»‡n thá»�i
		
//		readexeciseID: pháº§n reading nÃ o: test 1, test 2,.... nÄƒng cao , cÆ¡ báº£n cÃ¡c kiá»ƒu
		String sql = "select * from examlnationQuestion";
		
		List<ReadQuestions> total = new ArrayList<ReadQuestions>();
		try {
			conn = BDConncetion.getSQLSeverConnection();
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			
			// Ä‘Ã¢y lÃ  trang web luyá»‡n thi nÃªn tÃ­nh báº£o máº­t Ä‘Ã¡p Ã¡n khÃ´ng cao láº¯m
			// ta cÃ³ thá»ƒ tráº£ vá»� Ä‘Ã¡p Ã¡n vÃ  lÆ°u nÃ³ á»Ÿ phÃ­a client sau Ä‘Ã³ t sá»­ lÃ½ á»Ÿ client luÃ´n
			while(rs.next()) {
				ReadQuestions question = new ReadQuestions();
				question.setNum(rs.getInt("num"));
				question.setParagraph(rs.getString("paragraph")); // Ä‘á»� bÃ i
				question.setQuestion(rs.getString("question")); // cÃ¢u há»�i
				question.setOption1(rs.getString("option1"));
				question.setOption2(rs.getString("option2"));
				question.setOption3(rs.getString("option3"));
				question.setOption4(rs.getString("option4"));
				question.setCorrectanswer(rs.getString("correctanswer")); // Ä‘Ã¡p Ã¡n
				
				total.add(question);
			}
			return total;
					
		} catch (ClassNotFoundException e) {
			request.setAttribute("mesage", e.getMessage());
		} catch (SQLException e) {
			request.setAttribute("mesage", e.getMessage());
		}
		return null;
		
	}
}
