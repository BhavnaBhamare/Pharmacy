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
		List<Stock> ae = bl.viewallm();
		session.setAttribute("list1", ae);
		
		List<Customer> c=bl.viewallcustomer();
		session.setAttribute("list2",c);
	%>
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<b>Order...</b>
				</div>

				
				

				<div class="panel-body">
					<form class="form-horizontal" action="SellMedicineController"
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
							<div class="form-group">
								<label class="col-md-3 control-label" for="name">Medicine
									Name</label>
								<div class="col-md-6">
									<select id="name" name="mname" class="form-control">
									<c:forEach items="${sessionScope.list1}" var="l">
									<option>${l.mname}</option>
									</c:forEach>
										</select>
								</div>
							</div>
							
						<div class="form-group">
								<label class="col-md-3 control-label" for="name">Quantity </label>
								<div class="col-md-6">
									<input id="name" name="q" type="text"
					class="form-control">
								</div>
							</div>
							
							
							<div class="form-group">
								<label class="col-md-3 control-label" for="name">Price </label>
								<div class="col-md-6">
									<input id="name" name="price" type="text"
					class="form-control">
								</div>
							</div>
<!-- Form actions -->
							<div class="col-sm-04"></div>
							<div class="col-sm-04">
								<div class="form-group">
									<div class="col-md-6 widget-right">
										<input type="submit" value="Add Details"
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