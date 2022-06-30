package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import BEAN.Member;
import DB.BDConncetion;
import jakarta.servlet.http.HttpServletRequest;

public class MemberDAO {
	
	// get one user
	public static Member getOneMember(HttpServletRequest request, int idMember) {
		Connection conn;
		PreparedStatement ps;
		ResultSet rs ;
		String sql = "select * from Member where memberID = "+ idMember;
		
		Member member = new Member();
		
		try {
			conn = BDConncetion.getSQLSeverConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				member.setMemberID(rs.getInt("memberID"));
//				System.out.println("a" );
				member.setEmail(rs.getString("email"));
//				System.out.println("b" );
				member.setCategorymemberID(rs.getInt("categorymemberID"));
//				System.out.println("c" );
				member.setMemberImage(rs.getString("memberImage"));
//				System.out.println("d" );
				member.setMemberName(rs.getString("memberName"));
//				System.out.println("e" );
				member.setMemberPass(rs.getString("memberPass"));
//				System.out.println("g" );
				member.setFullName(rs.getString("fullName"));
//				System.out.println("g" );
				member.setStatus(rs.getInt("status"));
//				System.out.println("i" );
//				
				System.out.println("aaaaaaaaa" + member);
				return member;
			}
			
			System.out.println("getOneMember2" + member );
		} catch (SQLException e) {
			
			request.setAttribute("mesage", e.getMessage());
		} catch (ClassNotFoundException e) {
			
			request.setAttribute("mesage", e.getMessage());
		}
		return null;
	}
	
	//	get id for member
	public static int getIdMember(HttpServletRequest request, Member member) {
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
					return  rs.getInt("memberID");
				}
			}
		} catch (SQLException e) {
			
			request.setAttribute("mesage", e.getMessage());
		} catch (ClassNotFoundException e) {
			
			request.setAttribute("mesage", e.getMessage());
		}
		
		return -1;
	}
}
