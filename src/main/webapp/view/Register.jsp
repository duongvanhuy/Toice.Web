<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
<link href=<c:url value="/vendor/bootstrap/css/bootstrap.min.css" />
	rel="stylesheet">
<link rel="stylesheet"
	href=<c:url value="/assets/css/fontawesome.css" />>
<link rel="stylesheet" href=<c:url value="/assets/css/login.css" />>
</head>

<body>
	<section class="vh-100">
		<div class="container-fluid h-custom">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-md-9 col-lg-6 col-xl-5">
					<img
						src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
						class="img-fluid" alt="Sample image">
				</div>
				<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
					<form action=<c:url value="/RegisterController" /> method="post">
						<p><%= request.getAttribute("message")!= null? request.getAttribute("message"): " " %></p>
						<div class="divider d-flex align-items-center my-4">
							<p class="text-center fw-bold mx-3 mb-0">Register</p>
						</div>

						<!-- Email input -->
						<div class="form-outline mb-4">
							<input type="email" name="email" id="form3Example3"
								class="form-control form-control-lg"
								placeholder="Enter a valid email address" /> <label
								class="form-label" for="form3Example3">Email address</label>
						</div>

						<!-- Password input -->
						<div class="form-outline mb-3">
							<input type="password" name="password" id="form3Example4"
								class="form-control form-control-lg"
								placeholder="Enter password" /> <label class="form-label"
								for="form3Example4">Password</label>
						</div>

						<!-- Password input -->
						<div class="form-outline mb-3">
							<input type="password" name="password" id="form3Example4"
								class="form-control form-control-lg"
								placeholder="Enter password" /> <label class="form-label"
								for="form3Example4"> Enter the password</label>
						</div>




						<div class="text-center text-lg-start mt-4 pt-2">
							<button type="submit" class="btn btn-primary btn-lg"
								style="padding-left: 2.5rem; padding-right: 2.5rem;">Register</button>
							<p class="small fw-bold mt-2 pt-1 mb-0">
								Are you have an account? <a href="Login.jsp" class="link-danger">Login</a>
							</p>
						</div>

					</form>
				</div>
			</div>
		</div>
		<div
			class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
			<!-- Copyright -->
			<div class="text-white mb-3 mb-md-0">Copyright © 2022. All
				rights reserved by Grad Toice</div>
			<!-- Copyright -->

			<!-- Right -->
			<div>
				<a href="#!" class="text-white mr-4"> <i
					class="fa fa-facebook-f"></i>
				</a> <a href="#!" class="text-white mr-4"> <i class="fa fa-twitter"></i>
				</a> <a href="#!" class="text-white mr-4"> <i class="fa fa-google"></i>
				</a> <a href="#!" class="text-white"> <i class="fa fa-linkedin"></i>
				</a>
			</div>
			<!-- Right -->
		</div>
	</section>
</body>

</html>