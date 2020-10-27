package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BLManager;
import com.pojo.*;

@WebServlet("/AddMedicineController")
public class AddMedicineController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BLManager bl = new BLManager();
	Stock s = new Stock();
Supplier sp=new Supplier();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String mcompany = request.getParameter("mcompany");
		String mname = request.getParameter("mname");
		String sname = request.getParameter("sname");
		
		String mdescription = request.getParameter("mdescription");
		String quantity = request.getParameter("quantity");
		String price = request.getParameter("price");
		String mdate = request.getParameter("mdate");
		String edate = request.getParameter("edate");
		System.out.println(mcompany);
		int q=Integer.parseInt(quantity);
		Double p=Double .parseDouble (price);
		
		sp=bl.serachbySupplierName(sname);
		
		s.setMcompany(mcompany);
		s.setMname(mname);
		s.setMdescription(mdescription);
		s.setQuantity(q);
		s.setPrice(p);
		s.setMdate(mdate);
		s.setEdate(edate);
        s.setSupplier(sp);
		bl.savemedicine(s);

		out.println("<script type=\"text/javascript\">");
		out.println("alert('Medicine Added Successfully...');");
		out.println("location='addmedicine.jsp';");
		out.println("</script>");

	}

}
