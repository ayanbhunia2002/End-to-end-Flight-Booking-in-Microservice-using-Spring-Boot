<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>

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

<link rel="stylesheet" href="css/HomePage.css">

</head>


<body>

	${user.getFirstName()}

	<div class="header">

		<div class="container-fluid gx-0">

			<nav class="navbar navbar-expand-lg">
				<div class="container-fluid">
					<div class="navbar-brand" id="quickflight">
						<!-- <span class="fa fa-asterisk"></span> -->
						<b>quick<span>F</span>LIGHT
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

			<div class="content">

				<pre class="lh-sm" style="font-family: Algerian">LET'S MAKE YOUR BEST <br>TRIP EVER </pre>
				<nav class="imglink">
					<a id="book_fl" href="findFlights">Book Flight</a> <a href="#">
						MORE INFO</a>
				</nav>
			</div>

		</div>
	</div>




	<section id="sec-1" class="py-5" style="background-color: #F1f4f6;">
		<div class="container my-3">
			<div class="row">
				<div class="col-md-4 text-center">
					<span
						class="d-flex align-items-center justify-content-center mx-auto text-white mb-4 circle-icon">
						<i class="far fa-heart fs-3"></i>
					</span>
					<p class="lead fw-bold">Easy to Book</p>
					<p class="fw-light mx-3 lh-lg">
						Say goodbye to complicated bookings<br> and hello to an
						easy-to-book plan.With our <br>user-friendly platform, you
						can create an easy-to-book plan for your dream vacation.
					</p>
				</div>
				<div class="col-md-4 text-center">
					<span
						class="d-flex align-items-center justify-content-center mx-auto text-white mb-4 circle-icon">
						<i class='fas fa-shield-alt' style="font-size: 30px;"></i>
					</span>
					<p class="lead fw-bold">Secure Payment</p>
					<p class="fw-light mx-3 lh-lg">
						Protect your financial information<br> with our top-notch
						payment security measures.<br> Our payment security system
						ensures your transactions are safe and secure.
					</p>
				</div>
				<div class="col-md-4 text-center">
					<span
						class="d-flex align-items-center justify-content-center mx-auto text-white mb-4 circle-icon">
						<i class="fa fa-cogs" style="font-size: 30px;"></i>
					</span>
					<p class="lead fw-bold">Support</p>
					<p class="fw-light mx-3 lh-lg">
						Need assistance? Our 24*7 support team <br>is always ready to
						help you.No matter what time of day it is, our 24*7 support team
						is here to assist you with any queries or concerns.
					</p>
				</div>
			</div>
		</div>
	</section>




	<br>
	<br>
	<br>




	<div class="about_us_title">
		<h1>About Us</h1>
	</div>
	<section id="sec-2" class="py-3">
		<div class="container my-4">
			<div class="row gx-lg-5">


				<div class="col-lg-6">
					<h1>Why Choose us?</h1>
					<p class=" fw-light lh-lg my-4">
						Choosing the right service provider can be tough, but here are
						some reasons why we're the best choice for you.<br> We
						understand that you have many options, but here's why we stand out
						from the crowd. Our commitment to quality, affordability, and
						exceptional service are just a few reasons why you should choose
						us.
					</p>
					<button type="button" class="btn btn-green">Read More</button>
				</div>
				<div class="col-lg-6 mb-5">

					<video autoplay loop muted plays-inline
						style="width: 100%; border-radius: 5px;">
						<source src="images/v3.mp4" type="video/mp4">
					</video>

				</div>
			</div>
		</div>
	</section>





	<br>


	<!-- ======= Contact Section ======= -->
	<section id="contact">
		<div class="container">

			<div class="section-title">
				<h1>Contact</h1>
				<h4 style="color: #6c757d; text-align: center;">We are always
					ready to help you</h4>
				<br>
			</div>

		</div>

		<div class="container">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d37829.33550548072!2d87.49989229679427!3d21.93947478709953!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a1d2c7b57556b0d%3A0x2dd6259913961b8d!2sJahalda%2C%20West%20Bengal%20721443!5e1!3m2!1sen!2sin!4v1682867917937!5m2!1sen!2sin"
				width="100%" height="450" style="border: 0;" allowfullscreen=""
				referrerpolicy="no-referrer-when-downgrade"></iframe>
		</div>

		<div class="container">
			<div class="row mt-5">

				<div class="col-lg-6">

					<div class="row">
						<div class="col-md-12">
							<div class="info-box">
								<i class="fa-solid fa-location-dot"></i>
								<h3 style="color: black;">Our Address</h3>
								<p>Jahalda, Paschim Medinipur, WB, 721443</p>
							</div>
						</div>
						<div class="col-md-6">
							<div class="info-box mt-4">
								<i class="fa-solid fa-envelope"></i>
								<h3 style="color: black;">Email Us</h3>
								<p>
									bhuniaayan2002@gmail.com<br>ayanbhunia@gmail.com
								</p>
							</div>
						</div>
						<div class="col-md-6">
							<div class="info-box mt-4">
								<i class="fa-solid fa-phone-volume"></i>
								<h3 style="color: black;">Call Us</h3>
								<p>
									+91 9883475331<br>+1 6678 254445 41
								</p>
							</div>
						</div>
					</div>

				</div>

				<div class="col-lg-6">
					<form id="form12" action="" method="post" class="">
						<div class="row">
							<div class="col-md-6 form-group">
								<input type="text" name="name" class="form-control" id="name"
									placeholder="Your Name" required="">
							</div>
							<div class="col-md-6 form-group mt-3 mt-md-0">
								<input type="email" class="form-control" name="email" id="email"
									placeholder="Your Email" required="">
							</div>
						</div>
						<div class="form-group mt-3">
							<input type="text" class="form-control" name="subject"
								id="subject" placeholder="Subject" required="">
						</div>
						<div class="form-group mt-3">
							<textarea class="form-control" name="message" rows="7"
								placeholder="Message" required=""></textarea>
						</div>
						<div class="my-5"></div>
						<div class="text-center">
							<button id="btn12" type="submit">Send Message</button>
						</div>
					</form>
				</div>

			</div>

		</div>
	</section>
	<!-- End Contact Section -->

	<br>
	<br>










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
	<!-- <script >
		$(document).ready(function(){
			alert("loaded")
		})
	</script> -->
</body>
</html>