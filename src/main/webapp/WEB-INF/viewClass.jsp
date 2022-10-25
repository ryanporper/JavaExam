<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formatting (dates) --> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Functions --> 
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <!-- for Bootstrap CSS -->
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <!-- YOUR own local CSS -->
    <link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>View class</title>
</head>
<body>
<div class="container p-1">
<p><a href="/classes" class="btn btn-primary">Back to schedule</a></p>
<h1><c:out value="${yoga.name}"></c:out> with <c:out value="${yoga.user.userName}"></c:out></h1>
<h3 class="p-1">Day: <c:out value="${yoga.weekday}"></c:out></h3>
<h3 class="p-1">Cost: $<c:out value="${yoga.price}"></c:out></h3>
<h3 class="p-1"><c:out value="${yoga.description}"></c:out></h3>
<p>
	<c:if test = "${userId == yoga.user.id}">
		<a href="/classes/edit/${yoga.id}" class="btn btn-warning">Edit</a> 
		<a href="/classes/delete/${yoga.id}" class="btn btn-danger">Delete</a> 
	</c:if>
</p>
</div>
</body>
</html>