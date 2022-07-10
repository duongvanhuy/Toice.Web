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

public class AnswerUser {
	// connection
	static Connection conn;
	static PreparedStatement ps;
	static ResultSet rs;

	public static void saveAnswerUser(HttpServletRequest request, String url, int idExamplnation, int idUser,
			String timeline) {

		String sql = "INSERT INTO Result(time, examlnationID, memberID, cautraloi) VALUES (?, ?, ?, ?)";

		List<ListenQuestion> total = new ArrayList<ListenQuestion>();
		try {
			conn = BDConncetion.getSQLSeverConnection();
			ps = conn.prepareStatement(sql);

			ps.setString(1, timeline);
			ps.setInt(2, idExamplnation);
			ps.setInt(2, idExamplnation);
			ps.setInt(3, idUser);
			ps.setString(4, url);

			rs = ps.executeQuery();
			
			
		} catch (ClassNotFoundException e) {
			request.setAttribute("mesage", e.getMessage());
		} catch (SQLException e) {
			request.setAttribute("mesage", e.getMessage());
		}

	}
}
