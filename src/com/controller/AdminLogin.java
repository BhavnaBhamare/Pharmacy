package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
		
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String user=request.getParameter("username");
		String pass=request.getParameter("password");
		
		if(user.equals("admin@admin.com") && pass.equals("admin"))
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Welcome To Admin Panel...');");
			out.println("location='PharmacyDashboard.jsp';");
			out.println("</script>");
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Invalid Credentials...');");
			out.println("location='login.html';");
			out.println("</script>");
		}
		
	}

}
