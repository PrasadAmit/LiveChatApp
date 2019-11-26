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

<title>LiveChatApp - ${title}</title>
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

	<!-- Navigation Connection  -->
				<%@include file="./shared/navbar.jsp"%>
				
	<!-- Page Content -->
			<div class="content">
	<!-- Loading Home Page Content -->
			<c:if test="${userClickHome == true}">
				<%@include file="home.jsp"%>
			</c:if>
	<!-- Loading About Page Content -->
			<c:if test="${userClickAbout == true}">
				<%@include file="about.jsp"%>
			</c:if>
	<!-- Loading Users Page Content -->
			<c:if test="${userClickUsersInfo== true}">
				<%@include file="usersInfo.jsp"%>
			</c:if>
	<!--Loading Login Page on User Click  -->
			<c:if test="${userClickLogin == true}">
				<%@include file="login.jsp"%>
			</c:if>
	</div>
	</div>
</body>
</html>
