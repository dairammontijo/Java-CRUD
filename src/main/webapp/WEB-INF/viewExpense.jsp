<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<title>View expense</title>
</head>
<body>
	<div class="container-primary">
		<h1 class="text-primary">Expense Details</h1>
			<p>Expense name:<c:out value="${expense.name}" /></p>
			<p>Expense Description: <c:out value="${expense.description}" /> </p>
			<p>Expense Vendor: <c:out value="${expense.vendor}" /></p>
			<p>Expense Price: <c:out value="${expense.amount}" /></p>
	</div>
	 	<a href="/">Go back</a>
	
</body>
</html>