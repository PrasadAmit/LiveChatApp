<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>LiveChat - ${title}</title>

<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}'
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.css" rel="stylesheet">
<%-- <link href="${css}/bootstrap.min.css" rel="stylesheet"> --%>

<!-- Bootstrap superHero theme -->
<link href="${css}/bootstrap-cerulean-theme.css" rel="stylesheet">

<!-- DataTables Bootstrap -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom CSS  -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">
		<!-- Navigation   -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<!-- Brand and toggle get grouped for  better mobile display  -->
				<div class="navbar-header">
					<a class="navbar-brand" href="${contextRoot}/home">Home</a>
				</div>
			</div>
		</nav>

		<!-- Page Content -->
		<div class="content">
			<div class="container">
				<!--This will be display if login credentials are wrong   -->
				<c:if test="${not empty message}">
					<div class="row">
						<div class="col-md-offset-3 col-md-6">
							<div class="alert alert-danger">${message}</div>
						</div>
					</div>
				</c:if>

				<div class="row">
					<div class="col-md-offset-3 col-md-6">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4>Login</h4>
							</div>
							<div class="panel-body">

								<!-- Form Elements -->

								<form action="${contextRoot}/login" method="POST"
									class="form-horizontal" id="loginForm">
									<div class="form-group">
										<label for="username" class="control-label col-md-4">Email:</label>
										<div class="col-md-8">
											<input type="text" name="username" id="username"
												class="form-control" />
										</div>
									</div>

									<div class="form-group">
										<label for="password" class="control-label col-md-4">Password:</label>
										<div class="col-md-8">
											<input type="password" name="password" id="password"
												class="form-control" />
										</div>
									</div>

									<%-- <div class="form-group">
										<div class="col-md-offset-4 col-md-8">
											<input type="submit" value="login" class="btn btn-primary" />
											<input type="hidden" name="${_csrf.parameterName}"
												value="${_csrf.token}" />
										</div>
									</div> --%>
								</form>

							</div>

						</div>
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
</body>
</html>

