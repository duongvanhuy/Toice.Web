<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">

<title>Grad School HTML5 Template</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-grad-school.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">
<link rel="stylesheet" href="assets/css/style.css">

</head>

<body>


	<!--header-->
	<header class="main-header clearfix" role="header">
		<div class="logo">
			<a href="#"><em>Grad</em> Toeic</a>
		</div>
		<a href="#menu" class="menu-link"><i class="fa fa-bars"></i></a>
		<nav id="menu" class="main-nav" role="navigation">
			<ul class="main-menu">
				<li><a href="#section1">Home</a></li>
				<li><a href="section2">About Us</a></li>
				<li><a href="#section4">Courses</a></li>
				<!-- <li><a href="#section5">Video</a></li> -->
				<li><a href="#section6">Contact</a></li>
				<li><a href="view/Login.jsp" class="external">Login</a></li>
			</ul>
		</nav>
	</header>

	<!-- ***** Main Banner Area Start ***** -->
	<section class="section main-banner" id="top" data-section="section1">
		<video autoplay muted loop id="bg-video">
			<source src="assets/images/videoToiceMenu.mp4" type="video/mp4" />
		</video>

		<div class="video-overlay header-text">
			<div class="caption">
				<h6>Free English Tests exercises online</h6>
				<h2>
					<em>Your</em> Classroom
				</h2>
				<div class="main-button">
					<div class="scroll-to-section">
						<a href="#section2">Discover more</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ***** Main Banner Area End ***** -->


	<section class="features">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-12">
					<div class="features-post second-features">
						<div class="features-content">
							<div class="content-show">
								<h4>
									<i class="fa fa-graduation-cap"></i>TOICE Reading
								</h4>
							</div>
							<div class="content-hide">
								<p>The Reading section includes three parts, testing how
									well you understand written English. You will read a variety of
									materials and respond at your own pace to 100 questions based
									on the content of the materials provided to you.</p>
								<!-- <div class="scroll-to-section"><a href="reading.html">Details</a></div> -->
								<div>
									<a href="view/quizs/pageReading/pageRead.jsp">Details</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-12">
					<div class="features-post third-features">
						<div class="features-content">
							<div class="content-show">
								<h4>
									<i class="fa fa-book"></i>TOICE Listening
								</h4>
							</div>
							<div class="content-hide">
								<p>The Listening section tests how well you understand
									spoken English. It consists of four parts and contains 100
									questions. You will be asked to answer questions based on a
									variety of statements, questions, conversations, and talks
									recorded in English.</p>
								<!-- <p class="hidden-sm">Curabitur id eros vehicula, tincidunt libero eu, lobortis mi. In mollis eros a
                  posuere imperdiet.</p> -->
								<div>
									<a href="view/quizs/pageListening/PageListen.jsp">Details</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="section why-us" data-section="section2">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading">
						<h2>Why choose Grad Toice?</h2>
					</div>
				</div>
				<div class="col-md-12">
					<div id='tabs'>
						<ul>
							<li><a href='#tabs-1'>Best Documents</a></li>
							<li><a href='#tabs-2'>Top Exercise</a></li>
							<li><a href='#tabs-3'>Best route</a></li>
						</ul>
						<section class='tabs-content' a>
							<article id='tabs-1'>
								<div class="row">
									<div class="col-md-6">
										<img src="assets/images/pexels-pixabay-256417.jpg" alt="">
									</div>
									<div class="col-md-6">
										<h4>Best Documents</h4>
										<p>TOEIC Listening and Reading and TOEIC Speaking and
											Writing tests will provide employers with a reliable
											measurement of all four English-language communication
											skills.</p>
									</div>
								</div>
							</article>
							<article id='tabs-2'>
								<div class="row">
									<div class="col-md-6">
										<img src="assets/images/pexels-pixabay-301926.jpg" alt="">
									</div>
									<div class="col-md-6">
										<h4>Top Exercise</h4>
										<p>Launched in 1979, the TOEIC Listening and Reading test
											has set the standard for assessing English-language listening
											and reading skills needed in the business environment:</p>

									</div>
								</div>
							</article>
							<article id='tabs-3'>
								<div class="row">
									<div class="col-md-6">
										<img
											src="assets/images/pexels-tima-miroshnichenko-5428264.jpg"
											alt="">
									</div>
									<div class="col-md-6">
										<h4>Best route</h4>
										<p>The TOEIC test offers a common standard of measurement
											for comparing the language skills of current and potential
											employees. Test content reflects real-world tasks and
											provides you with the information you need to easily:</p>
									</div>
								</div>
							</article>
						</section>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="section courses" data-section="section4">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading">
						<h2>Choose Your Course</h2>
					</div>
				</div>
				<div class="owl-carousel owl-theme">
					<div class="item">

						<img src="assets/images/pexels-christina-morillo-1181595.jpg"
							alt="Course #1" class="rounded" alt="Cinque Terre" width="304"
							height="180">


						<div class="down-content">
							<h4>Grammar Tests</h4>
							<p>Practice your English grammar efficiently with many topics
								from basic to advanced level.</p>
							<div class="author-image">
								<img src="assets/images/author-01.png" alt="Author 1">
							</div>
							<div class="text-button-pay">
								<a href="view/quizs/grammar/GrammarTest.jsp">Test now <i
									class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
					</div>
					<div class="item">

						<img src="assets/images/courses-02.jpg" alt="Course #2"
							class="rounded" alt="Cinque Terre" width="304" height="180">

						<div class="down-content">
							<h4>Reading Tests</h4>
							<p>Test your reading skills with various reading topics.
								Reading can help you improve</p>
							<div class="author-image">
								<img src="assets/images/author-02.png" alt="Author 2">
							</div>
							<div class="text-button-free">
								<a href="#">Test now <i class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
					</div>
					<div class="item">
						<img src="assets/images/pexels-alesia-kozik-6842434.jpg"
							alt="Course #3" class="rounded" alt="Cinque Terre" width="304"
							height="180">
						<div class="down-content">
							<h4>Vocabulary Tests</h4>
							<p>Test and practice your English vocabulary and enrich it
								efficiently.</p>
							<div class="author-image">
								<img src="assets/images/author-03.png" alt="Author 3">
							</div>
							<div class="text-button-pay">
								<a href="#">Test now <i class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
					</div>
					<div class="item">

						<img src="assets/images/pexels-sound-on-3394659.jpg"
							alt="Course #4" class="rounded" alt="Cinque Terre" width="304"
							height="180">

						<div class="down-content">
							<h4>Listening Tests</h4>
							<p>Improve your listening skill easily with systematical
								listening tests. You can ...
							<div class="author-image">
								<img src="assets/images/author-04.png" alt="Author 4">
							</div>
							<div class="text-button-free">
								<a href="#">Test now <i class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
					</div>
					<div class="item">
						<img src="assets/images/pexels-karolina-grabowska-4476136.jpg"
							alt="" class="rounded" alt="Cinque Terre" width="304"
							height="180">
						<div class="down-content">
							<h4>Speaking Tests</h4>
							<p>Training your pronunciation and speaking skills for
								general speaking test TOEIC</p>
							<div class="author-image">
								<img src="assets/images/author-05.png" alt="">
							</div>
							<div class="text-button-pay">
								<a href="#">Test now <i class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
					</div>
					<div class="item">
						<img src="assets/images/pexels-pixabay-267669.jpg" alt=""
							class="rounded" alt="Cinque Terre" width="304" height="180">
						<div class="down-content">
							<h4>Participation now</h4>
							<p>Take full English tests to know your English level and get
								the highest ranking in the list.</p>
							<div class="author-image">
								<img src="assets/images/author-01.png" alt="">
							</div>
							<div class="text-button-free">
								<a href="#">Test now <i class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
					</div>
					<div class="item">
						<img src="assets/images/pexels-suzy-hazelwood-1333742.jpg" alt=""
							class="rounded" alt="Cinque Terre" width="304" height="180">
						<div class="down-content">
							<h4>Download Tests</h4>
							<p>Download free English tests as .exe format. PDF format is
								aslo available for some kind of tests.</p>
							<div class="author-image">
								<img src="assets/images/author-01.png" alt="">
							</div>
							<div class="text-button-free">
								<a href="#">Dowload now <i class="fa fa-angle-double-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="section video" data-section="section5">
		<div class="container">
			<div class="row">
				<div class="col-md-6 align-self-center">
					<div class="left-content">
						<span>our presentation is for you</span>
						<h4>
							Watch the video to learn more <em>about Grad Toice</em>
						</h4>
						<p>With about 7 million tests administered every year, the
							TOEIC tests are the most widely used around the world, with
							14,000+ organizations across more than 160 countries rely on the
							TOEIC tests to measure English proficiency in the international
							business environment. In Vietnam, the TOEIC test has been used as
							one of graduation requirements at more than 130 universities,
							colleges, vocational schools and as a hiring criterion in nearly
							500 major companies nationwide.</p>
						<div class="main-button">
							<a rel="nofollow" href="https://iigvietnam.com/toeic-test/"
								target="_parent">External URL</a>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<article class="video-item">
						<div class="video-caption">
							<h4>Free English Tests</h4>
						</div>
						<figure>
							<a href="assets/images/istockphoto-1329979606-640_adpp_is.mp4"
								class="play"><img
								src="assets/images/istockphoto-1092112684-1024x1024.jpg"></a>
						</figure>
					</article>
				</div>
			</div>
		</div>
	</section>

	<section class="section contact" data-section="section6">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading">
						<h2>Let’s Keep In Touch</h2>
					</div>
				</div>
				<div class="col-md-6">

					<!-- Do you need a working HTML contact-form script?
                	
                    Please visit https://templatemo.com/contact page -->

					<form id="contact" action="" method="post">
						<div class="row">
							<div class="col-md-6">
								<fieldset>
									<input name="name" type="text" class="form-control" id="name"
										placeholder="Your Name" required="">
								</fieldset>
							</div>
							<div class="col-md-6">
								<fieldset>
									<input name="email" type="text" class="form-control" id="email"
										placeholder="Your Email" required="">
								</fieldset>
							</div>
							<div class="col-md-12">
								<fieldset>
									<textarea name="message" rows="6" class="form-control"
										id="message" placeholder="Your message..." required=""></textarea>
								</fieldset>
							</div>
							<div class="col-md-12">
								<fieldset>
									<button type="submit" id="form-submit" class="button">Send
										Message Now</button>
								</fieldset>
							</div>
						</div>
					</form>
				</div>
				<div class="col-md-6 text-light">
					<h1>Join Courses</h1>
					<p>In aliquam, augue a gravida rutrum, ante nisl fermentum
						nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada,
						finibus tortor fermentum. Etiam eu purus nec eros varius luctus.
						Praesent finibus risus facilisis ultricies. Etiam eu purus nec
						eros varius luctus.</p>
					<div class="contact_info">
						<ul>
							<li class="py-2"><i class="fa fa-map-marker pr-4"
								aria-hidden="true"></i> <span> 278 Lũy Bán Bích, P. Hòa
									Thạnh, Q. Tân Phú, HCM</span></li>
							<li class="py-2"><i class="fa fa-phone pr-4"
								aria-hidden="true"></i> <span>0353133137</span></li>
							<li class="py-2"><i class="fa fa-envelope-o pr-4"
								aria-hidden="true"></i> <span>gradToice@gmail.com</span></li>
						</ul>

					</div>
				</div>
			</div>
		</div>
	</section>

		<!--HEADER ROW-->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- /HEADER ROW 

	<!-- Scripts -->
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="assets/js/isotope.min.js"></script>
	<script src="assets/js/owl-carousel.js"></script>
	<script src="assets/js/lightbox.js"></script>
	<script src="assets/js/tabs.js"></script>
	<script src="assets/js/video.js"></script>
	<script src="assets/js/slick-slider.js"></script>
	<script src="assets/js/custom.js"></script>
	<script>
    //according to loftblog tut
    $('.nav li:first').addClass('active');

    var showSection = function showSection(section, isAnimate) {
      var
        direction = section.replace(/#/, ''),
        reqSection = $('.section').filter('[data-section="' + direction + '"]'),
        reqSectionPos = reqSection.offset().top - 0;

      if (isAnimate) {
        $('body, html').animate({
          scrollTop: reqSectionPos
        },
          800);
      } else {
        $('body, html').scrollTop(reqSectionPos);
      }
    };

    var checkSection = function checkSection() {
      $('.section').each(function () {
        var
          $this = $(this),
          topEdge = $this.offset().top - 80,
          bottomEdge = topEdge + $this.height(),
          wScroll = $(window).scrollTop();
        if (topEdge < wScroll && bottomEdge > wScroll) {
          var
            currentId = $this.data('section'),
            reqLink = $('a').filter('[href*=\\#' + currentId + ']');
          reqLink.closest('li').addClass('active').
            siblings().removeClass('active');
        }
      });
    };

    $('.main-menu, .scroll-to-section').on('click', 'a', function (e) {
      if ($(e.target).hasClass('external')) {
        return;
      }
      e.preventDefault();
      $('#menu').removeClass('active');
      showSection($(this).attr('href'), true);
    });

    $(window).scroll(function () {
      checkSection();
    });
  </script>
</body>

</html>