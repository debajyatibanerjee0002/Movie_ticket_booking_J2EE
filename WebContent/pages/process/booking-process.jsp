<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" import="com.connection.*"%>
<%
	String val = request.getParameter("val");
	PreparedStatement psmt;
	try
	{
		Connection conn = OracleConnection.getOracleConnnection();
		String query = "SELECT * FROM MOVIE WHERE NAME=?";
		psmt = conn.prepareStatement(query);
		psmt.setString(1, val);
		
		ResultSet rs = psmt.executeQuery();
		
		if(rs.next())
		{
			String mName = rs.getString("NAME");
			String theatre = rs.getString("THEATRE");
			String query_one = "INSERT INTO MOVIE_CART(NAME, THEATRE) VALUES(?,?)";
			psmt = conn.prepareStatement(query_one);
			psmt.setString(1, mName);
			psmt.setString(2, theatre);
			
			int rn = psmt.executeUpdate();
			if(rn>0)
			{
				response.sendRedirect("../cart.jsp");
			}
			
		}
		
		psmt.close();
		conn.close();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>