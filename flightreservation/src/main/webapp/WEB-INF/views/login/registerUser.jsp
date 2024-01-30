<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register User</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="css/login.css">

</head>

<body>

	<section class="Form my-5 mx-5">
		<div class="container mx-5">
			<div class="row no-gutters">
				<div class="col-lg-5">
					<img alt="" src="images/signup-image.jpg"
						class="mx-auto d-block img-fluid p-5">
				</div>

				<div class="col-lg-7 px-4">

					<c:if test="${not empty errmsg}">
						<div class="alert alert-danger" role="alert">
							${errmsg}</div>
					</c:if>
					
					<c:remove var="errmsg" scope="request" />
					<c:remove var="sucmsg" scope="request" />
					

					<h1 class="font-weight-bold  hh">Register here</h1>
					<hr>

					<form id="reg-form" action="registerUser" method="post">

						<div class="form-row mb-3">
							<div class="col-lg-7">
								<label for="firstName" class="form-label"><b>First
										Name</b></label> <input name="firstName" type="text" class="form-control"
									id="firstName" placeholder="Enter first name" required="">
							</div>
						</div>

						<div class="form-row mb-3">
							<div class="col-lg-7">
								<label for="lastName" class="form-label"><b>Last
										Name</b></label> <input name="lastName" type="text" class="form-control"
									id="lastName" placeholder="Enter last name" required="">
							</div>
						</div>

						<div class="form-row">
							<div class="col-lg-7 mb-3">
								<label for="exampleInputEmail1" class="form-label"><b>Email
										address</b></label> <input name="email" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="">
								<div id="emailHelp" class="form-text">We'll never share
									your email with anyone else.</div>
							</div>
						</div>


						<div class="form-row mb-4">
							<div class="col-lg-7">
								<label for="exampleInputPassword1" class="form-label"><b>Password</b></label>
								<input name="password" type="password" class="form-control "
									id="exampleInputPassword1" required="">
							</div>
						</div>

						<div class="form-row mb-4">
							<div class="col-lg-7">
								<label for="exampleInputPassword1" class="form-label"><b>Confirm
										Password</b></label> <input name="confirmPassword" type="password"
									class="form-control " id="exampleInputPassword1" required="">
							</div>
						</div>

						<div class="form-row mb-3">
							<div class="col-lg-7">
								<label for="gender" class="form-label"><b class="me-3">Gender
										: </b></label> <input type="radio" id="gender" name="gender" value="male">
								Male <input class="ms-3" type="radio" id="gender" name="gender"
									value="female"> Female
							</div>
						</div>

						<!-- <div class="form-row form-check">
							<div class="col-lg-7 mb-3">
								<label for="exampleCheck1" class="form-check-label">agree terms and condition</label> 
								<input name="check" type="checkbox" class="form-check-input"
									id="exampleCheck1" required="">
								
							</div>
						</div> -->

						<div class="form-row">
							<div class="col-lg-7">
								<button id="submit-btn" type="submit" class="btn1 mt-3 mb-4">Submit</button>
							</div>
						</div>

						<p>
							Already have an account? <a href="loginpage">Log in</a>
						</p>

					</form>
				</div>
			</div>
		</div>
	</section>




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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"
		integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>




</body>