<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<title>Safe Travels Expenses</title>
</head>
<body>
	<div>
		<h1 class="text-primary">Add an Expense</h1>
	 	<form:form action="/expense/create" method="post" modelAttribute="expense">
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
 			<button class="btn btn-primary">Submit</button>
 		</form:form>
 	</div>
 	<div>
 		<table class="table table-striped">
 			<thead>
 				<tr>
 					<td>Expense name</td>
 					<td>Vendor name</td>
 					<td>Amount</td>
 					<td>Description</td>
 				</tr>	
 			</thead>
 			<tbody>
 			<c:forEach var="expense" items="${expenses}" >
 				<tr>
 				<td><a href="/expense/${expense.id}"><c:out value="${expense.name}" /></a></td>
 				<td><c:out value="${expense.vendor}"/></td>
 				<td><c:out value="${expense.amount}" /></td>
 				<td><c:out value="${expense.description}" /></td>
 				<td><a href="/expense/${expense.id}/edit"><button class="btn btn-warning">Edit</button></a> | <a href="/expense/${expense.id}/delete"><button class="btn btn-danger">Delete</button></a></td>
 				</tr>
 			</c:forEach>
 			</tbody>
 			
 		
 		</table>
 	
 	</div>
 	
 	
</body>
</html>