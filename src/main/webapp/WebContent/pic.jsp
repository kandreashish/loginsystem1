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
<% Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(url,username,password);
%>
<% String sql= "select photos from login where unmae=values(?)"; 
st=con.prepareStatement(sql);
String sname=request.getParameter("uname");
st.setString(1,sname);
ResultSet rs = st.executeQuery();
%>
</body>
</html>