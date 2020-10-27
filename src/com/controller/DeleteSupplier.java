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

@WebServlet("/DeleteSupplier")
public class DeleteSupplier extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BLManager bl = new BLManager();
	Supplier s = new Supplier();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("id"));

		s = bl.searchbysid(id);

		bl.deletesid(s);

		out.println("<script type=\"text/javascript\">");
		out.println("alert('Supplier Deleted..');");
		out.println("location='viewallsupplier.jsp';");
		out.println("</script>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
