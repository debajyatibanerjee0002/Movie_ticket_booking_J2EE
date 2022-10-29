<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" import="com.connection.*"%>
<%
	String email = request.getParameter("email");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	
	PreparedStatement psmt;
	try
	{
		Connection conn = OracleConnection.getOracleConnnection();
		String query = "INSERT INTO MOVIE_USER(EMAIL, NAME, PASSWORD) VALUES(?,?,?)";
		psmt = conn.prepareStatement(query);
		psmt.setString(1, email);
		psmt.setString(2, name);
		psmt.setString(3, password);
		
		int rn = psmt.executeUpdate();
		
		if(rn>0)
		{
			session.setAttribute("email", email);
			session.setAttribute("name", name);
			response.sendRedirect("../home.jsp");
		}
		
		psmt.close();
		conn.close();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>