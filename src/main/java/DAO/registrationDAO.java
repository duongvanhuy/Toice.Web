package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import BEAN.Member;
import DB.BDConncetion;
import jakarta.servlet.http.HttpServletRequest;


public class RegistrationDAO {

	public static boolean insertMember(HttpServletRequest request, Member member) 
	{
		
		Connection conn;
		PreparedStatement ps;
		try {
			conn = BDConncetion.getSQLSeverConnection();
			String sql = "insert into member(email, memberPass, categorymemberID) values (?,?,?)";
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, member.getEmail());
			ps.setString(2, member.getMemberPass());
			ps.setInt(3, 1);
			
			int rs = ps.executeUpdate();
			if(rs >0) {
			//	request.setAttribute("message", "Đăng kí thành công");
				ps.close();
				conn.close();
				return true;
			}else {
				request.setAttribute("message", "Đăng kí không thành công");
				ps.close();
				conn.close();
				return false;
			}
		} catch (ClassNotFoundException e) {
			request.setAttribute("message", e.getMessage());
		} catch (SQLException e) {
			request.setAttribute("message", e.getMessage());
		}
		return false;
		
	}
}
