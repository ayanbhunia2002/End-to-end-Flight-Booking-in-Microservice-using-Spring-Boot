<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



<!-- <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Flight Search</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<style>
body {
	width: 95%;
	min-height: 100%;
	background: url('images/pic7.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}

.container {
	max-width: 500px;
	margin-left: 200px;
	padding: 40px;
	background-color: #ffffff;
	border-radius: 8px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.form-group {
	margin-bottom: 20px;
}

.btn-search {
	width: 100%;
	font-size: 16px;
	padding: 12px;
	background-color: #007bff;
	color: #ffffff;
	border-radius: 4px;
	border: none;
}
</style>
</head>
<body>
	<div class="row" style="margin-top: 140px;">
			<div class="col-6"></div>
			<div class="col-6">
			
				<div class="container " style="">
					<h2 class="text-center">Flight Search</h2>
					<form action="searchFlights" method="post">
						<div class="form-group">
							<label for="departure">Departure</label> <input type="text"
								name="from" class="form-control" id="departure"
								placeholder="Enter departure city">
						</div>
						<div class="form-group">
							<label for="arrival">Arrival</label> <input type="text" name="to"
								class="form-control" id="arrival"
								placeholder="Enter arrival city">
						</div>
						<div class="form-group">
							<label for="departure-date">Departure Date</label> <input
								type="date" name="departureDate" class="form-control"
								id="departure-date">
						</div>
						
						<button type="submit" class="btn btn-search">Search
							Flights</button>
					</form>
				</div>
			</div>
			



	</div>









	Javascript 
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"
		integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>

	<form action="searchFlights" method="post">
		From : <input type="text" name="from" /> To : <input type="text"
			name="to" /> Departure Date : <input type="text" name="departureDate" />
		<input type="submit" value="search">
	</form>
</body>
</html> -->




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Flight</title>
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

</head>


<body>

	<div class="header_find_flight">

		<video autoplay loop muted playsinline class="background-video">
			<source src="images/v4.mp4" type="video/mp4">
		</video>

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


			<div class="searching container">
				<div class="change1">
					<div class="container-fluid">
						<div class="change2">

							<form action="searchFlights" method="post">

								<div class="container">

									<div class="row container_form">
										<div class="col-lg-3 col-6 my-2">
											<label style="margin-bottom: 8px;" for="from">Departure
												City</label> <input name="from" type="text" class="input_form"
												id="from">
										</div>

										<div class="col-lg-3 col-6 my-2">
											<label style="margin-bottom: 8px;" for="to">Arrival
												City</label> <input name="to" type="text" class="input_form" id="to">
										</div>

										<div class="col-lg-3 col-10 my-2">
											<label style="margin-bottom: 8px;" for="departureDate">Departure
												Date</label> <input name="departureDate" type="text"
												class="input_form" id="place" placeholder="MM-dd-yyyy">
										</div>

										<div class="col-lg-3 col-12 my-2">
											<button type="submit" class="input_btn_submit">
												Search</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>


			<div class="content_flight_search">
				<p class="lh-sm" style="font-family: Algerian">LET'S MAKE YOUR BEST <br>TRIP EVER 
				</p>
				<button type="submit" class="more_info">MORE INFO</button>
			</div>
		</div>
	</div>
	</div>




	<!-- Javascript  -->
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"
		integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
</body>
</html>