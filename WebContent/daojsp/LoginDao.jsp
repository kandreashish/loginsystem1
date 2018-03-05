<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.sql.DriverManager"%>
    <%@page import="java.sql.PreparedStatement"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.SQLException" %>
    <%String url="jdbc:mysql://localhost:3306/db";
	String username="root";
	String password="1234"; 
	Connection con=null;
    PreparedStatement st=null;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!public boolean check(String user,String pass)
{
	String url="jdbc:mysql://localhost:3306/db";
	String username="root";
	String password="1234";
	String sql= "select * from login where uname=? and password=?";
	Connection con=null;
	PreparedStatement st=null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url,username,password);
		st=con.prepareStatement(sql);
		st.setString(1,user);
		st.setString(2,pass);
		ResultSet sr=st.executeQuery();
		if(sr.next())
			return true;
		else
			return false;

	} catch (Exception e) 
	{
		e.printStackTrace();
	}
	finally 
	{
		try {
			st.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	return false;
} %>
<% 
String x = request.getParameter("submit");
if(x!=null && x.equals("confirm"))
{ 
        username=request.getParameter("uname");
		password=request.getParameter("pass");
		if(username == ""|| password == "")
		{
			response.sendRedirect("../index.jsp?field=empty");
		}
		else if(check(username,password))
		{
			session.setAttribute("uname",username);
			response.sendRedirect("../message.jsp?welcomeuser");
		}
		else
		{
			response.sendRedirect("../index.jsp?usernam=wrong&passwor=wrong");
		}
}
else
{
	response.sendRedirect("../index.jsp?pleaselogin=first");
}
%>


</body>
</html>