package DAO;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import BEAN.*;
import DB.*;

public class DBDAO {
	
	public static List<SilderBanner> getAllSlideBanner(){
		List<SilderBanner> sliders = new ArrayList<SilderBanner>();
		
		Connection conn;
		PreparedStatement ps;
		ResultSet rs;
		try {
			conn = BDConncetion.getSQLSeverConnection();
			String sql = "select * from SildeBanner";
			 ps = conn.prepareStatement(sql);
			 rs = ps.executeQuery();
			
			
			
			while(rs.next()) {
				SilderBanner slide = new SilderBanner();
				
				
//				slide.setSildeBannerID(rs.getInt("SildeBannerID"));
				slide.setSildeBannerName(rs.getString("SildeBannerName"));
				slide.setSildeBannerContent(rs.getString("SildeBannerContent"));
				slide.setSildeImage(rs.getString("SildeImage"));
				
				
				sliders.add(slide);
				
			}
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sliders;
		
	
	}

}
