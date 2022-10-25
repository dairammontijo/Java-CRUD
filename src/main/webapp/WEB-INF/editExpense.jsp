<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Edit Expense</title>
</head>
<body>
<div>
<h1 class="text-primary">Edit Expense</h1>
	 	<form:form action="/expense/${expense.id}/update" method="post" modelAttribute="expense">
	 		<input type="hidden" name="_method" value="put">
 			<div class="mb-3">
 				<form:label path="name">Expense name:</form:label>
 				<form:input path="name"/>
 				<form:errors path="name"/>
 			</div>
 			<div class="mb-3">
 				<form:label path="vendor">Vendor name:</form:label>
 				<form:input path="vendor"/>
 				<form:errors path="vendor"/>
 			</div>	
 			<div class="mb-3">
 				<form:label path="amount">Amount:</form:label>
 				<form:input path="amount"/>
 			</div>
 			<div class="mb-3">
 				<form:label path="description">Description:</form:label>
 				<form:input path="description"/>
 				<form:errors path="description"/>
 			</div>	
 			<button class="btn btn-warning">Update</button>
 		</form:form>
 	</div>
 	<a href="/">Go back</a>

</body>
</html>