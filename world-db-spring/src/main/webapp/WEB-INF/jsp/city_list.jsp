<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Cities</title>
</head>
<body>
	<h1>Hello, ${username}</h1>
	<h3>Cities List</h3>

	<div>
		<h1>Information:</h1>
		<table>
			<tr>
				<th>Country Code</th>
				<th>Name</th>
				<th>District</th>
				<th>Population</th>

			</tr>
			<c:forEach items="${cities}" var="city">
				<tr>
					<th>${city.countryCode}</th>
					<th>${city.name}</th>
					<th>${city.population}</th>
					<th>${city.district}</th>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>