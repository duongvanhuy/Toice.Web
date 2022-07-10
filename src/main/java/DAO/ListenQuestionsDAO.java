package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.ListenQuestion;
import DB.BDConncetion;
import jakarta.servlet.http.HttpServletRequest;

public class ListenQuestionsDAO {
	// connection
		static Connection conn;
		static PreparedStatement ps;
		static ResultSet rs ;
		
		// get all "read questions"
		
		// get one "read question"
		
		// get some ""read question"
		
		public static  List<ListenQuestion> getListenQuestions(HttpServletRequest request, int curElement, int page, int listenEnexeciseID) {
//			curElement: tong so phan tÆ° hien thi tren 1 trang
//			page: trang hiá»‡n thá»�i
			
//			readexeciseID: pháº§n reading nÃ o: test 1, test 2,.... nÄƒng cao , cÆ¡ báº£n cÃ¡c kiá»ƒu
			String sql = "select * from ListenQuestion where ListenexeciseID = ? ORDER BY ListenQuestionID OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
			
			List<ListenQuestion> total = new ArrayList<ListenQuestion>();
			try {
				conn = BDConncetion.getSQLSeverConnection();
				ps = conn.prepareStatement(sql);
				
				ps.setInt(1, listenEnexeciseID);
				ps.setInt(2, page );
				ps.setInt(3,  curElement);
				rs = ps.executeQuery();
				
				
				// Ä‘Ã¢y lÃ  trang web luyá»‡n thi nÃªn tÃ­nh báº£o máº­t Ä‘Ã¡p Ã¡n khÃ´ng cao láº¯m
				// ta cÃ³ thá»ƒ tráº£ vá»� Ä‘Ã¡p Ã¡n vÃ  lÆ°u nÃ³ á»Ÿ phÃ­a client sau Ä‘Ã³ t sá»­ lÃ½ á»Ÿ client luÃ´n
				while(rs.next()) {
					ListenQuestion question = new ListenQuestion();
					
					question.setListenQuestionID(rs.getInt("ListenQuestionID"));
					question.setListenQuestionName(rs.getString("ListenQuestionName"));
					question.setAudiomp3(rs.getString("audiomp3")); // Ä‘á»� bÃ i
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
		public static int sumListenQuestion(HttpServletRequest request) {
			String sql = "SELECT COUNT(ListenQuestionID) FROM ListenQuestion";
			
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
}
