<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- css -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/FindFlights.css">
<link rel="stylesheet" href="css/HomePage.css">
<link rel="stylesheet" href="css/displayFlight.css">
</head>
<body>

	<!-- <h2>Find Flights</h2> -->
	<div class="header_display_flight">

		<div class="container-fluid gx-0">
			<nav class="navbar navbar-expand-lg">
				<div class="container-fluid">
					<div class="navbar-brand" id="quickflight">
						<span class="fa fa-asterisk"></span> <b>quick<span>F</span>LIGHT
						</b>

					</div>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarNav"
						aria-controls="navbarNav" aria-expanded="false"
						aria-label="Toggle navigation" style="background-color: #fff;">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarNav">
						<ul class="navbar-nav ms-auto">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="#">Home</a></li>
							<li class="nav-item"><a class="nav-link" href="findFlights">Book</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Explore</a></li>
							<li class="nav-item"><a class="nav-link" href="#">About
									Us</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Contact</a>
							</li>
							<li class="nav-item"><a class="btn-navbar" href="loginpage">
									<span class="fa fa-user-circle"></span> log in
							</a></li>
							<li class="nav-item"><a class="btn-navbar" href="showReg"><span
									class="fas fa-user-times"></span> sign up</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>

		<div class="container mt-4" style="max-width: 85%;">

			<div class="col-md-12 mt-4">
				<div class="card border border-1 shadow-sm p-3 mb-4"
					style="border-radius: 10px; background: #e8e8ef;">

					<div class="row">
						<div class="col-md-2 text-center">
							<strong>AIRLINES</strong>
						</div>
						<div class="col-md-2 text-center">
							<strong>From</strong>
						</div>
						<div class="col-md-1 text-center">
							<strong>To</strong>
						</div>
						<div class="col-md-2 text-center">
							<strong>Departure Time</strong>
						</div>
						<div class="col-md-2 text-center">
							<strong>Arrival Time</strong>
						</div>
						<div class="col-md-1 text-center">
							<strong>Fare</strong>
						</div>
					</div>
				</div>
			</div>

			<c:forEach items="${flights}" var="flight">
				<div class="mt-2">
					<div class="card border border-1 shadow-sm p-4"
						style="border-radius: 10px; background: #fff;">

						<div class="row">
							<div class="col-md-2">
								<strong>${flight.operatingAirlines}</strong>
							</div>
							<div class="col-md-2 text-center">
								<strong>${flight.departureCity}</strong>
							</div>
							<div class="col-md-1 text-center">
								<strong>${flight.arrivalCity}</strong>
							</div>
							<div class="col-md-2 text-center">
								<strong>${flight.estimatedDepartureTime}</strong>
							</div>
							<div class="col-md-2 text-center">
								<strong>${flight.estimatedDepartureTime}</strong>
							</div>
							<div class="col-md-1 text-center">
								<strong>5000</strong>
							</div>
							<div class="col-md-2 text-center">
								<a id="select_flight" href="showCompleteReservation?flightId=${flight.id}">Select</a>
							</div>
						</div>
					</div>
				</div>

			</c:forEach>
		</div>
	</div>

</body>
</html>