<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>BizNews - Free News Website Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<link rel="icon" src=<c:url value="/assets/imgReading/favicon.ico" />>

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link rel="stylesheet" href=<c:url value="/assets/css/reading.css" />>

<link rel="stylesheet"
	href=<c:url value="/assets/css/templatemo-grad-school.css" />>

<link rel="stylesheet" type="text/css"
	href=<c:url value="/assets/css/templatemo-grad-school.css" />>
</head>

<body>
	<!--HEADER ROW-->
	<jsp:include page="../../Header.jsp"></jsp:include>
	<!-- /HEADER ROW -->

	<!-- Main News Slider Start -->
	<jsp:include page="../../NewSilderStart.jsp"></jsp:include>
	<!-- Main News Slider End -->

	<!-- News With Sidebar Start -->
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="row">
						<div class="col-12">
							<div class="section-title">
								<h4 class="m-0 text-uppercase font-weight-bold">Test list</h4>
								<a
									class="text-secondary font-weight-medium text-decoration-none"
									href="">View All</a>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="position-relative mb-3">
								<img class="img-fluid w-100" style="object-fit: cover;"
									src=<c:url
                                        value="/assets/imgReading/news-700x435-3.jpg" />>
								<div class="bg-white border border-top-0 p-4">
									<div class="mb-2">
										<a
											class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
											href="">Full Test</a>
									</div>
									<a
										class="h4 d-block mb-0 text-secondary text-uppercase font-weight-bold"
										href=""> Overall capacity assessment...</a>
								</div>

							</div>
						</div>
						<div class="col-lg-6">
							<div class="position-relative mb-3">
								<img class="img-fluid w-100" style="object-fit: cover;"
									src=<c:url
                                        value="/assets/imgReading/news-700x435-4.jpg" />>
								<div class="bg-white border border-top-0 p-4">
									<div class="mb-2">
										<a
											class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
											href="">Skill Test</a>
									</div>
									<a
										class="h4 d-block mb-0 text-secondary text-uppercase font-weight-bold"
										href=""> objectively evaluate your skills...</a>
								</div>

							</div>
						</div>
						<div class="col-lg-6">
							<div class="d-flex align-items-center bg-white mb-3"
								style="height: 110px;">
								<img class="img-fluid" alt=""
									src=<c:url
                                        value="/assets/imgReading/news-110x110-1.jpg" />>
								<div
									class="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">
									<div class="mb-2">
										<a
											class="badge badge-primary text-uppercase font-weight-semi-bold p-1 mr-2"
											href="ReadElementTest02.jsp">Test now</a>
									</div>
									<a
										class="h6 m-0 text-secondary text-uppercase font-weight-bold"
										href="">TOEIC READING TEST 1</a>
								</div>
							</div>
							<div class="d-flex align-items-center bg-white mb-3"
								style="height: 110px;">
								<img class="img-fluid" alt=""
									src=<c:url
                                        value="/assets/imgReading/news-110x110-2.jpg" />>
								<div
									class="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">
									<div class="mb-2">
										<a
											class="badge badge-primary text-uppercase font-weight-semi-bold p-1 mr-2"
											href="">Test now</a>
									</div>
									<a
										class="h6 m-0 text-secondary text-uppercase font-weight-bold"
										href="">TOEIC READING TEST 2</a>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="d-flex align-items-center bg-white mb-3"
								style="height: 110px;">
								<img class="img-fluid" alt=""
									src=<c:url
                                        value="/assets/imgReading/news-110x110-3.jpg" />>
								<div
									class="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">
									<div class="mb-2">
										<a
											class="badge badge-primary text-uppercase font-weight-semi-bold p-1 mr-2"
											href="">Test now</a>
									</div>
									<a
										class="h6 m-0 text-secondary text-uppercase font-weight-bold"
										href="">TOEIC READING TEST 3</a>
								</div>
							</div>
							<div class="d-flex align-items-center bg-white mb-3"
								style="height: 110px;">
								<img class="img-fluid" alt=""
									src=<c:url
                                        value="/assets/imgReading/news-110x110-4.jpg" />>
								<div
									class="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">
									<div class="mb-2">
										<a
											class="badge badge-primary text-uppercase font-weight-semi-bold p-1 mr-2"
											href="">Test now</a>
									</div>
									<a
										class="h6 m-0 text-secondary text-uppercase font-weight-bold"
										href="">TOEIC READING TEST 4</a>
								</div>
							</div>
						</div>


					</div>
				</div>

				<div class="col-lg-4">


					<!-- Ads Start -->
					<div class="mb-3">
						<div class="section-title mb-0">
							<h4 class="m-0 text-uppercase font-weight-bold">Advertisement</h4>
						</div>
						<div class="bg-white text-center border border-top-0 p-3">
							<a href=""><img class="img-fluid" alt=""
								src=<c:url
                                        value="/assets/imgReading/news-800x500-2.jpg" />></a>
						</div>
					</div>
					<!-- Ads End -->

					<!-- Popular News Start -->
					<div class="mb-3">
						<div class="section-title mb-0">
							<h4 class="m-0 text-uppercase font-weight-bold">Tranding
								News</h4>
						</div>
						<div class="bg-white border border-top-0 p-3">
							<div class="d-flex align-items-center bg-white mb-3"
								style="height: 110px;">
								<img class="img-fluid" alt=""
									src=<c:url
                                        value="/assets/imgReading/news-110x110-1.jpg" />>
								<div
									class="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">

									<a
										class="h6 m-0 text-secondary text-uppercase font-weight-bold"
										href="">The girl got 845 TOEIC score after only 1 practice
										course</a>
								</div>
							</div>

							<div class="d-flex align-items-center bg-white mb-3 "
								style="height: 110px;">
								<img class="img-fluid" alt=""
									src=<c:url
                                        value="/assets/imgReading/news-110x110-4.jpg" />>
								<div
									class="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">

									<a
										class="h6 m-0 text-secondary text-uppercase font-weight-bold "
										href=""> "PERSONAL TALENT" CORNER: FEMALE STUDENT OF
										DIVISION INSTITUTE GET 970 TOEIC AFTER A SUBJECT COURSE</a>
								</div>
							</div>
							<div class="d-flex align-items-center bg-white mb-3"
								style="height: 110px;">
								<img class="img-fluid" alt=""
									src=<c:url
                                        value="/assets/imgReading/news-110x110-5.jpg" />>
								<div
									class="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">

									<a
										class="h6 m-0 text-secondary text-uppercase font-weight-bold"
										href=""> 8X SUPER BUSY SHARE HOW TO GET 990 TOEIC</a>
								</div>
							</div>
						</div>
					</div>
					<!-- Popular News End -->


				</div>
			</div>
		</div>
	</div>
	<!-- News With Sidebar End -->


	<!-- Footer Start -->

	<div class="container-fluid py-4 px-sm-3 px-md-5"
		style="background: #111111;">
		<p class="m-0 text-center">
			<i class="fa fa-copyright"></i> Copyright 2020 by Grad School |
			Design: <a href="https://templatemo.com" rel="sponsored"
				target="_parent">TemplateMo</a><br> Distributed By: <a
				href="https://themewagon.com" rel="sponsored" target="_blank">ThemeWagon</a>
		</p>
	</div>
	<!-- Footer End -->


	<!-- Back to Top -->
	<a href="#" class="btn btn-primary btn-square back-to-top"><i
		class="fa fa-arrow-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>

</body>

</html>