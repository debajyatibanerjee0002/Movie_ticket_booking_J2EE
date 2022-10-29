package com.connection;
import java.sql.*;

public class OracleConnection {

	private static Connection conn=null;
	
	private OracleConnection()
	{}
	
	public static Connection getOracleConnnection()
	{
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String userid = "system";
		String password = "debajyati";
		
		try
		{
			if(conn == null || conn.isClosed())
			{
				Class.forName(driver);
				conn = DriverManager.getConnection(url, userid, password);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return conn;
	}
}
