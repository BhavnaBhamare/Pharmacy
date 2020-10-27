package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;









import org.hibernate.type.Type;

import com.model.BLManager;
import com.pojo.*;
/**
 * Servlet implementation class SellMedicineController
 */
@WebServlet("/SellMedicineController")
public class SellMedicineController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
  BLManager bl=new BLManager();
  Order o1=new Order();
  Stock s1=new Stock();
  Customer c1=new Customer();
    public SellMedicineController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String cname = request.getParameter("cname");
		String mname = request.getParameter("mname");
		String quantity = request.getParameter("q");
		String price = request.getParameter("price");
		int q=Integer.parseInt(quantity);
		Double  p1=Double .parseDouble (price);
        
      
        o1.setQuantity(q);
        c1=bl.serachbyCustomername(cname);
        o1.setCustomer(c1);

        s1=bl.searchbymname(mname);
       
        
	    int q1=s1.getQuantity();
	  Double t=p1*q1;
	    o1.setPrice(p1);
	    o1.setTotal(t);
	    
	   o1.setCustomer(c1);
	   o1.setStock(s1);
	    
	 if(q<q1)
	{
		bl.saveOrder(o1);
		int q3=q1-q;
		s1.setQuantity(q3);
		bl.updatemedicine(s1);
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Order Placed Successfully...');");
		out.println("location='viewallmedicines.jsp';");
		out.println("</script>");
	}                                                         
	 
	 else
    {
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Stock Is Unavailable...');");
		out.println("location='sellmedicine.jsp';");
		out.println("</script>");
	}
}
}
