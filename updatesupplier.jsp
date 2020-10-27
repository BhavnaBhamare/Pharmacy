<%@ include file="PharmacyHeader.jsp"%>

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



	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<b>Add Supplier Here...</b>
				</div>

				<div style="color: #00b300; text-align: center; font-size: 15px;">${empadd}</div>
				<%
					session.removeAttribute("empadd");
				%>

				<div class="panel-body">
					<form class="form-horizontal" action="UpdateSupplier"
						method="post">
						<fieldset>


							<!-- Name input-->
							<div class="form-group">
								<label class="col-md-3 control-label" for="name">Supplier
									Name</label>
								<div class="col-md-6">
									<input id="name" name="sname" type="text" value="${list.sname}"
										placeholder=" Abbott Laboratories" class="form-control">
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-3 control-label" for="name">Supplier
									Contact Number </label>
								<div class="col-md-6">
									<input id="name" name="scontact" type="text"
										value="${list.smobile}" placeholder="Combiflam"
										class="form-control">
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-3 control-label" for="name">Supplier
									Email ID</label>
								<div class="col-md-6">
									<input id="name" name="semail" type="text"
										value="${list.semail}" placeholder="Descritption Here"
										class="form-control">
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-3 control-label" for="name">Supplier
									Address</label>
								<div class="col-md-6">
									<input id="name" name="saddress" type="text"
										value="${list.saddress}" placeholder="Pune"
										class="form-control">
								</div>
							</div>




							<!-- Form actions -->
							<div class="col-sm-04"></div>
							<div class="col-sm-04">
								<div class="form-group">
									<div class="col-md-6 widget-right">
										<input type="submit" value="Update Details"
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