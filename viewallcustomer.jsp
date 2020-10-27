<%@page import="com.pojo.*"%>
<%@include file="PharmacyHeader.jsp"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.model.BLManager"%>



<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
	<div class="row">
		<ol class="breadcrumb">
			<li><a href="#"><svg class="glyph stroked home">
							<use xlink:href="#stroked-home"></use></svg></a></li>
			<li class="active">Home</li>
		</ol>
	</div>
	<!--/.row-->
	<br>
	<div class="row"></div>
	<!--/.row-->
	<%
		BLManager bl = new BLManager();
		List<Customer> ae = bl.viewallcustomer();
		session.setAttribute("list1", ae);
	%>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">Customers are Here...</div>
				<div class="panel-body">
					<table data-toggle="table" data-url="tables/data1.json"
						data-show-refresh="true" data-show-toggle="true"
						data-show-columns="true" data-search="true"
						data-select-item-name="toolbar1" data-pagination="true"
						data-sort-name="name" data-sort-order="desc">
						<thead>
							<tr>
								<th data-field="state" data-checkbox="true">Sr.No</th>

								<th data-field="id2" data-sortable="true">Customer Name</th>
								
								<th data-field="id7" data-sortable="true">Contact</th>
								
								<th data-field="id9" data-sortable="true">Delete</th>

							</tr>

						</thead>
						<c:forEach items="${sessionScope.list1}" var="l">
							<tr>
								<td data-field="id" data-sortable="true"><c:out
										value="${l.cid} " /></td>
								<td data-field="id1" data-sortable="true"><c:out
										value="${l.cname}" /></td>
								<td data-field="id2" data-sortable="true"><c:out
										value="${l.cmobile} " /></td>
								
								
								<td><a href="DeleteCustomer?cid=${l.cid}" style="color: blue;">Delete</a></td>



							</tr>

						</c:forEach>


					</table>
				</div>
			</div>
		</div>
	</div>
	<!--/.row-->
	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-default"></div>
		</div>
		<div class="col-md-6">
			<div class="panel panel-default">



				<script>
					$(function() {
						$('#hover, #striped, #condensed')
								.click(
										function() {
											var classes = 'table';

											if ($('#hover').prop('checked')) {
												classes += ' table-hover';
											}
											if ($('#condensed').prop('checked')) {
												classes += ' table-condensed';
											}
											$('#table-style')
													.bootstrapTable('destroy')
													.bootstrapTable(
															{
																classes : classes,
																striped : $(
																		'#striped')
																		.prop(
																				'checked')
															});
										});
					});

					function rowStyle(row, index) {
						var classes = [ 'active', 'success', 'info', 'warning',
								'danger' ];

						if (index % 2 === 0 && index / 2 < classes.length) {
							return {
								classes : classes[index / 2]
							};
						}
						return {};
					}
				</script>
			</div>
		</div>
	</div>
	<!--/.row-->


</div>
<!--/.main-->
</body>
</html>
