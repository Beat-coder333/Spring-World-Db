<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Welcome, ${username}</h1>

<div class="navigation">
		<table>
			<tr>
				<th><a href="/citypage">Search City</a></th>
				<th><a href="/countrypage">Search Country</a></th>
				<th><a href="/continent-list">Continents</a></th>
			</tr>
		</table>
	</div>
	
<h3>Continents</h3>

	<c:forEach items="${continents}" var="cont">
		<p><a href="/list_countries?continentValue=${cont}">${cont}</a></p>
	</c:forEach>

</body>
</html>