<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" import="com.connection.*"%>
<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	PreparedStatement psmt;
	try
	{
		Connection conn = OracleConnection.getOracleConnnection();
		String query = "SELECT * FROM MOVIE_USER WHERE EMAIL=? AND PASSWORD=?";
		psmt = conn.prepareStatement(query);
		psmt.setString(1, email);
		psmt.setString(2, password);
		
		ResultSet rs = psmt.executeQuery();
		
		if(rs.next())
		{
			session.setAttribute("email", email);
			session.setAttribute("name", rs.getString("NAME"));
			response.sendRedirect("../home.jsp");
		}
		else
		{
			response.sendRedirect("../login-error.jsp");
		}
		
		psmt.close();
		conn.close();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>