<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" import="com.connection.*"%>
<%
	String val = request.getParameter("val");
	PreparedStatement psmt;
	try
	{
		Connection conn = OracleConnection.getOracleConnnection();
		String query = "DELETE FROM MOVIE_CART WHERE NAME=?";
		psmt = conn.prepareStatement(query);
		psmt.setString(1, val);
		
		int rn = psmt.executeUpdate();
		
		if(rn>0)
		{
			response.sendRedirect("../cart.jsp");		
		}
		
		psmt.close();
		conn.close();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>