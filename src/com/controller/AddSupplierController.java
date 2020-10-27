package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BLManager;
import com.pojo.Supplier;


@WebServlet("/AddSupplierController")
public class AddSupplierController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	BLManager bl=new BLManager();
	Supplier s=new Supplier();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String sname = request.getParameter("sname");
		String scontact = request.getParameter("scontact");
		String semail = request.getParameter("semail");
		String saddress = request.getParameter("saddress");
		
		s.setSname(sname);
		s.setSmobile(scontact);
		s.setSemail(semail);
		s.setSaddress(saddress);
		
		bl.saveSupplier(s);
		
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Supplier Added Successfully...');");
		out.println("location='addsupplier.jsp';");
		out.println("</script>");
	}

}
