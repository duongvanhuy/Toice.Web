package DB;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class BDConncetion {
	public static Connection getSQLSeverConnection() throws SQLException, ClassNotFoundException{
		String hostName = "localhost";
		String sql_name = "DESKTOP-V3UDUKA\\SQLEXPRESS";
		String databaseName = "WebSiteHocToeic";
		String userName = "sa";
		String passWord = "123456";
		return getSQLSeverConnection(hostName, sql_name, databaseName, userName, passWord);
	}

	private static Connection getSQLSeverConnection(String hostName, String sql_name, String databaseName,
			String userName, String passWord) throws SQLException, ClassNotFoundException {

		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		
		String connectionURL = "jdbc:sqlserver://" + hostName + ":1433"
	             + ";instance=" + sql_name + ";databaseName=" + databaseName;

	     Connection conn =  DriverManager.getConnection(connectionURL, userName,
	    		 passWord);
	     return conn;
	}
}
