package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import BEAN.Member;
import DB.BDConncetion;
import jakarta.servlet.http.HttpServletRequest;

public class LoginDAO {
	
	
//	check thông tin tài khoản và mật khẩu
	public static boolean checkLogin(HttpServletRequest request, Member member) {
		Connection conn;
		PreparedStatement ps;
		ResultSet rs ;
		String sql = "select * from Member";
		
		try {
			conn = BDConncetion.getSQLSeverConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			
			while(rs.next()) {
				if(member.getEmail().equalsIgnoreCase(rs.getString("email")) && member.getMemberPass().equals(rs.getString("memberPass"))) {
					return true;
				}
			}
		} catch (SQLException e) {
			
			request.setAttribute("mesage", e.getMessage());
		} catch (ClassNotFoundException e) {
			
			request.setAttribute("mesage", e.getMessage());
		}
		
		return false;
	}
	
//	check phân quyền
//	true: admin
//	false: user
	public static boolean checkOptionMember(HttpServletRequest request, Member member) {
		Connection conn;
		PreparedStatement ps = null;
		ResultSet rs ;
		System.out.print("member"+member);
//		String sql = "select categorymemberID from Member where email = " + "'" + member.getEmail()+ "'" + " and memberPass = "+ "'" + member.getMemberPass()+ "'";
		String sql = "select categorymemberID from Member where email = ? and memberPass = ?";	

		
		try {
			
			conn = BDConncetion.getSQLSeverConnection();
		
			ps = conn.prepareStatement(sql);
			ps.setString(1, member.getEmail());
			ps.setString(2, member.getMemberPass());
			
			rs = ps.executeQuery();
				
			while(rs.next()) {
				if(rs.getInt("categorymemberID") == 2) {
					
					return true;
				}
			}
		} catch (SQLException e) {
			
			request.setAttribute("mesage", e.getMessage());
		} catch (ClassNotFoundException e) {
			
			request.setAttribute("mesage", e.getMessage());
		}
		return false;
	}
}
