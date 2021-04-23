<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Country</title>
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

<div>
<p>Insert Country name and/or</p>
<form action="/country_search">
<input type="text" name="countryname"/>
<p>Continent name to find information about it</p>
<input type="text" name="continentname"/>
<input	type="submit" value="find" />
</form>

</div>
	<div>
		<h1>Information:</h1>
		<table>
			<tr>
				<th>Country Code</th>
				<th>Name</th>
				<th>Continent</th>
				<th>Population</th>
				<th>Surface Area</th>
				<th>Region</th>

			</tr>
			<c:forEach items="${countries}" var="country">
			<tr>
				<th>${country.code}</th>
				<th>${country.name}</th>
				<th>${country.continent}</th>
				<th>${country.population}</th>
				<th>${country.surfaceArea}</th>
				<th>${country.region}</th>

			</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>