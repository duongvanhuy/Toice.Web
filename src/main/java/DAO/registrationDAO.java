package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import BEAN.Member;
import DB.BDConncetion;
import jakarta.servlet.http.HttpServletRequest;


public class registrationDAO {

	public static void insertMember(HttpServletRequest request, Member member) 
	{
		
		Connection conn;
		PreparedStatement ps;
		try {
			conn = BDConncetion.getSQLSeverConnection();
			String sql = "insert into member(memberName, fullName, memberPass, categorymemberID) values (?,?,?,?)";
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, member.getMemberName());
			ps.setString(2, member.getFullName());
			ps.setString(3, member.getMemberPass());
			ps.setInt(4, 1);
			
			int rs = ps.executeUpdate();
			if(rs >0) {
				request.setAttribute("message", "Đăng kí thành công");
			}else {
				request.setAttribute("message", "Đăng kí không thành công");
			}
			
			
			ps.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			request.setAttribute("message", e.getMessage());
		} catch (SQLException e) {
			request.setAttribute("message", e.getMessage());
		}
		
	}
}
