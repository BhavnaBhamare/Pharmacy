<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="PharmacyHeader.jsp"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.model.BLManager"
import="com.pojo.*"%>


<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
	<div class="row">
		<ol class="breadcrumb">
			<li><a href="#"><svg class="glyph stroked home">
						<use xlink:href="#stroked-home"></use></svg></a></li>
			<li class="active">Home</li>
		</ol>
	</div>
	<!--/.row-->

	<div class="row" style="padding-top: 20px;">
		<div class="col-lg-12">
			<!-- <h1 class="page-header">Widgets</h1> -->
		</div>
	</div>
	<!--/.row-->


<%
BLManager bl = new BLManager();
List<Customer> c=bl.viewallcustomer();
session.setAttribute("list2",c);
	%>
	
	<!-- <script>
											
											function sum() {
											      var txtFirstNumberValue = document.getElementById('q').value;
											      var txtSecondNumberValue = document.getElementById('p').value;
											      var txtthirdNumberValue = document.getElementById('t').value;
											      
											      
											      var result = parseInt(txtFirstNumberValue) * parseInt(txtSecondNumberValue) ;
											     
											         document.getElementById('t').value = result;
											      
										
											
											
											
											}
											</script>
	 -->
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<b>Order...</b>
				</div>

				
				
				
			
				
				
				
				
				
				
				

				
	<div class="panel-body">
					<form class="form-horizontal" action="invoice.jsp"
						method="post">
						<fieldset>


							<!-- Name input-->
							
							
							<div class="form-group">
								<label class="col-md-3 control-label" for="name">Customer
									Name</label>
								<div class="col-md-6">
									<select id="name" name="cname" class="form-control">
									<c:forEach items="${sessionScope.list2}" var="l">
									<option>${l.cname}</option>
									</c:forEach>
										</select>
								</div>
							</div>
							
		<div class="col-sm-04"></div>
							<div class="col-sm-04">
								<div class="form-group">
									<div class="col-md-6 widget-right">
										<input type="submit" value="Generate Bill"
											class="btn btn-default btn-md pull-right">
									</div>
									
									
								</div>
									
							</div>

						</fieldset>
					</form>
				
				</div>
			</div>
		</div>



	</div>
	<!--/.row-->
</div>
<!--/.main-->