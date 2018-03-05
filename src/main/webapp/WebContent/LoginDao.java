package main.webapp.WebContent;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {

	public boolean check(String user,String pass)
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
			{
				return true;
			 
			}

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
	}
}
