<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">

	<div class="row">

		<div class="col-md-offset-2 col-md-8">
			<div class="panel panel-primary">

				<div class="panel-heading">
					<h4>Lovers Point</h4>
				</div>
				<div class="panel-body">
					<!-- Form Element -->

					<form class="form-horizontal">
						<div class="form-group">
							<label class="control-label col-md-4" for="name">Enter
								First Name:</label>
							<div class="col-md-8">
								<input type="text" name="name" id="name"
									placeholder="Users Name" class="form-control" /> <em
									class="help-block">Please enter First name</em>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="number">Enter
								Last Name:</label>
							<div class="col-md-8">
								<input type="text" name="lname" id="lname"
									placeholder="Users Last Name" class="form-control" /> <em
									class="help-block">Please enter Last Name</em>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="adds">Enter
								Users Adds:</label>
							<div class="col-md-8">
								<input type="text" name="adds" id="adds"
									placeholder="Users Adds" class="form-control" /> <em
									class="help-block">Please enter Users Adds</em>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-md-4" for="number">
								Mobile Number:</label>
							<div class="col-md-8">
								<input type="text" name="number" id="number"
									placeholder="Users Mobile Number" class="form-control" /> <em
									class="help-block">Please enter Users Mobile Number</em>
							</div>
						</div>
						
					<div class="form-group">
							<div class="col-md-offset-4 col-md-8">
								<input type="submit" name="submit" id="submit" value="Submit"
									class="btn btn-primary" />
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- FOOTERS COMES HERE -->
		<%@include file="./shared/footer.jsp"%>

		<!-- JQUERY -->
		<script src="${js}/jquery.js"></script>
		<script src="${js}/jquery-1.10.2.js"></script>

		<!--  JQUERY VALIDATOR PLUGIN-->
		<script src="${js}/jquery.validate.js"></script>

		<!-- BOOTSTRAP CORE JAVASCRIPT -->
		<script src="${js}/bootstrap.js"></script>
		<script src="${js}/bootstrap.min.js"></script>

		<!-- SELF CODED JAVASCRIPT -->
		<script src="${js}/myapp.js"></script>
	
</div>