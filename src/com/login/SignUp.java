package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String username=request.getParameter("uname");
		String password1=request.getParameter("Pass");
		String password2=request.getParameter("Password1");
		String date=request.getParameter("date");
		String mnumber=request.getParameter("tel");
		if(username==""|| password1 == "" || password2 == "" || mnumber =="")
		{
			response.sendRedirect("signup1.jsp?");
		}
		SignUpDao y=new SignUpDao();

		try {
			if(password1.equals(password2))
			{
				y.insert(username,password1,mnumber,date);
		        response.sendRedirect("index.jsp?signup=success");
				
			}
			else if(!(password2.equals(password1)))
			{
				PrintWriter out=response.getWriter();
				out.println("write same password");
			}
			else if(!y.check(username))
			{
				PrintWriter out=response.getWriter();
				out.println("same username exist");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("error");
			
		}



}}
