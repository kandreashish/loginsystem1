package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SignUpDao {

	public void insert(String username,String password1,String mnumber,String date)
	{
		String url="jdbc:mysql://localhost:3306/db";
		String username1="root";
		String password="1234";
		String sql= "insert into login (uname,password,mnumber,date) values(?,?,?,?)";
		Connection con=null;
		PreparedStatement st=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,username1,password);
			st=con.prepareStatement(sql);
			st.setString(1,username);
			st.setString(2,password1);
			st.setString(3,mnumber);
			st.setString(4,date);
			st.executeUpdate();
		}
		catch(Exception e)
		{
			
		}
		
	}
	public boolean check(String username) throws SQLException
	{
		String url="jdbc:mysql://localhost:3306/db";
		String username1="root";
		String password="1234";
		String sql= "select uname from login where uname=?";
		Connection con=null;
		PreparedStatement st=null;
		ResultSet rs=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,username1,password);
			st=con.prepareStatement(sql);
			st.setString(1,username);
            rs=st.executeQuery();
            
		}
		catch(Exception e)
		{
			System.out.println("duplicate2");
		}
		   if(rs.next())
           {
        	   return false;
           }
           else 
           {
        	return true;   
           }
		
	}
}
