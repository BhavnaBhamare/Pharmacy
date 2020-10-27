package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BLManager;
import com.pojo.Customer;

/**
 * Servlet implementation class DeleteCustomer
 */
@WebServlet("/DeleteCustomer")
public class DeleteCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   Customer c=new Customer();
   BLManager bl=new BLManager();
    public DeleteCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("cid"));

		c=bl.serachbyCustomerid(id);
		bl.deletecustomer(c);

		out.println("<script type=\"text/javascript\">");
		out.println("alert('Customer Deleted..');");
		out.println("location='viewallcustomer.jsp';");
		out.println("</script>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
