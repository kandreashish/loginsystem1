
package com.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.WebContent.LoginDao;

@SuppressWarnings("serial")
@WebServlet("/Loginser")
public class Loginser extends HttpServlet 
{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		{   
			String username=request.getParameter("uname");
			String password=request.getParameter("pass");
			LoginDao l=new LoginDao();
			if(username == ""|| password == "")
			{
				response.sendRedirect("index.jsp?field=empty");
			}
			else if(l.check(username,password))
			{
				HttpSession session=request.getSession();
				session.setAttribute("uname",username);
				RequestDispatcher rd=request.getRequestDispatcher("message.jsp?welcome");
				rd.forward(request, response);
			}
			else
			{
				response.sendRedirect("index.jsp?usernam=wrong&passwor=wrong");
			}
		}
		
}
}
