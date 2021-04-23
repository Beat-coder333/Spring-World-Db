<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>City Info</title>
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
		<p>Insert city name to find</p>
		<form action="/get-info-city">
			<input type="text" name="cityname" /> <input type="submit"
				value="find" />
		</form>

	</div>
	<!-- add on: 1 -no city with that name -->
	<div>
		<h1>Selected city information:</h1>
		<table>
			<tr>
				<th>Name</th>
				<th>Country Code</th>
				<th>District</th>
				<th>Population</th>

			</tr>
			<tr>
				<th>${city.name}</th>
				<th>${city.countryCode}</th>
				<th>${city.district}</th>
				<th>${city.population}</th>

			</tr>
		</table>

	</div>
</body>
</html>