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

<link rel="stylesheet" href=<c:url value="/assets/css/elementTest.css"/>>

<!-- Customized Bootstrap Stylesheet -->
<link rel="stylesheet" href=<c:url value="/assets/css/reading.css" />>

<link rel="stylesheet"
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

				<div class="col-lg-8 bg-light">
					<h1>TOEIC SPEAKING test 1</h1>
					<div class="row  justify-content-md-center">
						<c:forEach var="i" begin="1" end="5">
							<div class="col-md-2">
								<div class="btn mb-2 text-dark px-1" onclick="numQuestion(${i})"
									style="background: #EEEEEE;">Question ${i}</div>
							</div>

						</c:forEach>
					</div>

					<div class="row">
						<c:forEach var="i" begin="6" end="10">
							<div class="col-md-2">
								<div class="btn mb-2 text-dark px-1" onclick="numQuestion(${i})"
									style="background: #EEEEEE;">Question ${i}</div>
							</div>
						</c:forEach>



					</div>


					<!-- câu hỏi -->
					<div class="question">
						<p id="question"></p>
					</div>

					<div class="questionRead"></div>


					<div class="audio my-5">
						<div class="row justify-content-md-center micro">
							<div class="col-md-2 pr-0 text-right pt-1">
								<i class="fas fa-microphone"></i>
							</div>
							<div class="col-md-3 mx-3">
								<div class="btn btn-success rounded " id="startRecordingButton">
									Record</div>
							</div>
							<div class="col-md-3">
								<div class="btn  btn-danger rounded " id="stopRecordingButton">
									Stop</div>
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


		<!--HEADER ROW-->
	<jsp:include page="../../Footer.jsp"></jsp:include>
	<!-- /HEADER ROW -->

	<!-- Back to Top -->
	<a href="#" class="btn btn-primary btn-square back-to-top"><i
		class="fa fa-arrow-up"></i></a>
	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<script src=<c:url value="/assets/js/reading/record.js" />></script>
<script>

var listParagraph = []
$(document)
.ready(
	function() {
		$
			.ajax({
				type: "get",
				url: "http://localhost:8080/JavaWeb_Toiec/ReadingElement",
				
				success: function(data) {
					console.log(data)
					// readQuestions = JSON.parse(data)
					 let i = 0;
					while( i < data.length){
						listParagraph.push(data[i].paragraph)
						i ++;
					}
					$("#question").html(data[0].question)
					$(".questionRead").html(listParagraph[0])
				

				},
				error: function(data, textStatus,
					errorThrown) {
					console.log("error", data)
				},
			});
	})
	
	
	// 
	function numQuestion(number){
		$(".questionRead").html("");
		for(let i  = 0; i <listParagraph.length; i++){
			if(number == i) {
				$(".questionRead").html(listParagraph[i])
				return;
			}
		}
		
	}
</script>