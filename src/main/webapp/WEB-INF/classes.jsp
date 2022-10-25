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
    <title>Project Manager Dashboard</title>
</head>
<body>
<div class="container p-1">
<h1>Welcome to Yoga Course</h1>
<a href="/logout" class="btn btn-danger">Logout</a>
<a href="/new" class="btn btn-success">Create a new class</a>
<h2 class="text-center">Course Schedule</h2>
<table class="table table-striped">
	<thead class="table-dark"> 
		<tr>
			<td>Class Name</td>
			<td>Instructor</td>
			<td>Weekday</td>
			<td>Price</td>
			<td>Actions</td>
		</tr>
	</thead>
    <tbody>
    	<c:forEach var="yoga" items="${yogas}">
			<tr>
				<td><a href="/classes/${yoga.id}"><c:out value="${yoga.name}"></c:out></a></td>
				<td><c:out value="${yoga.user.userName}"></c:out></td>
				<td><c:out value="${yoga.weekday}"></c:out></td>
				<td>$<c:out value="${yoga.price}"></c:out></td>
				<td><a href="/classes/${yoga.id}" class="btn btn-primary">View</a>
					<c:if test = "${userId == yoga.user.id}">
						<a href="/classes/edit/${yoga.id}" class="btn btn-warning">Edit</a> 
						<a href="/classes/delete/${yoga.id}" class="btn btn-danger">Delete</a> 
					</c:if>
				</td>
			</tr>	
		</c:forEach>
    </tbody>
</table>
</div>
</body>
</html>