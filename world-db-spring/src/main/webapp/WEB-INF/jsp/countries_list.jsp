<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Countries List</title>
</head>
<body>
<h1>Hello, ${username}</h1>

<h3>Countries List</h3>

<div>
		<h1>Information:</h1>
		<table>
			<tr>
				<th>Continent</th>
				<th>Country Code</th>
				<th>Name</th>
				<th>Population</th>
				<th>Surface Area</th>
				<th>Region</th>

			</tr>
			<c:forEach items="${countries}" var="country">
			<tr>
				<th>${country.continent}</th>
				<th><a href="/list_cities?codeValue=${country.code}">${country.code}</a></th>
				<th>${country.name}</th>
				<th>${country.population}</th>
				<th>${country.surfaceArea}</th>
				<th>${country.region}</th>

			</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>