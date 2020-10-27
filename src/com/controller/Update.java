package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BLManager;
import com.pojo.Stock;


@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	BLManager bl=new BLManager();
	Stock s=new Stock();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String id1=request.getParameter("id");
		int id=Integer.parseInt(id1);
	
		s=bl.serachbyid(id);
		
		HttpSession session=request.getSession();
		session.setAttribute("list",s);
		
		response.sendRedirect("updatemedicine.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String mcompany = request.getParameter("mcompany");
		String mname = request.getParameter("mname");
		String mdescription = request.getParameter("mdescription");
		String quantity = request.getParameter("quantity");
		int q=Integer.parseInt(quantity);
		String price = request.getParameter("price");
		String mdate = request.getParameter("mdate");
		String edate = request.getParameter("edate");
		System.out.println(mcompany);
		Double  p=Double .parseDouble (price);
		s.setMcompany(mcompany);
		s.setMname(mname);
		s.setMdescription(mdescription);
		s.setQuantity(q);
		s.setPrice(p);
		s.setMdate(mdate);
		s.setEdate(edate);

		bl.updatemedicine(s);
		
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Medicine Update Done...');");
		out.println("location='viewallmedicines.jsp';");
		out.println("</script>");
	}

}
