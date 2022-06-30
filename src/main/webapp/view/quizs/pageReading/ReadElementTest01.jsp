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
<link src=<c:url value="/assets/imgReading/favicon.ico" /> rel="icon">

<!-- Google Web Fonts -->
<link href="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href=<c:url value="/assets/css/reading.css"/> rel="stylesheet">

<link rel="stylesheet"
	href=<c:url value="/assets/css/templatemo-grad-school.css"/>>
<style>
.circle {
	background: #FFFFFF;
	border-radius: 50%;
	border: 1px solid #999999;
	color: #fff;
	height: 2em;
	position: relative;
	max-width: 2em;
	margin: 15px;
}

.circle-content {
	hyphens: auto;
	margin: 0em;
	margin-top: 0.4em;
	text-align: center;
	line-height: 20px;
	padding-left: 0;
}

/**
 * Enhanced experience
 *
 * Credit: https://skeate.github.io/2015/07/13/Wrapping-Text-to-Fit-Shaped-Containers-with-CSS.html
 */
@
supports (shape-outside: circle(50 %)) { .circle-content {
	/* height: 100%; */ margin:1px;
	
}

.circle::before, .circle-content::before {
	content: "";
	height: 100%;
	width: 50%;
}

.circle::before {
	float: left;
	shape-outside: polygon(0 0, 100% 0, 60% 4%, 40% 10%, 20% 20%, 10% 28.2%, 5% 34.4%, 0
		50%, 5% 65.6%, 10% 71.8%, 20% 80%, 40% 90%, 60% 96%, 100% 100%, 0 100%
		);
}

.circle-content::before {
	float: right;
	shape-outside: polygon(100% 0, 0 0, 40% 4%, 60% 10%, 80% 20%, 90% 28.2%, 95% 34.4%,
		100% 50%, 95% 65.6%, 90% 71.8%, 80% 80%, 60% 90%, 40% 96%, 0 100%,
		100% 100%);
}
}
</style>
</head>

<body>

	<!--HEADER ROW-->
	<jsp:include page="../../Header.jsp"></jsp:include>
	<!-- /HEADER ROW -->

	<!-- content -->
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="titleReading">
					<h4>Practice Full Test TOEIC Reading</h4>
				</div>
				<div class="question">
					<p id="question"></p>
				</div>
				<div class="quiz-result">
					<div class="quizNumber">
						Question
						<sapn class="numberQuiz"></sapn>
						: <span class="quizContent"></span>
					</div>

					<div class="result">
						<ul>
							<li><input type="radio" name="cau" id="cauhoi1"
								onclick="handleClick(this);" value="A"> <label
								for="cauhoi1"> <strong>A.</strong> <sapn id="cau1"></sapn>
							</label></li>
							<li><input type="radio" name="cau" value="B" id="cauhoi2"
								onclick="handleClick(this);"> <label for="cauhoi2">
									<strong>B.</strong> <sapn id="cau2"></sapn>
							</label></li>
							<li><input type="radio" name="cau" value="C" id="cauhoi3"
								onclick="handleClick(this);"> <label for="cauhoi3"><strong>C.</strong>
									<sapn id="cau3"></sapn> </label></li>
							<li><input type="radio" name="cau" value="D" id="cauhoi4"
								onclick="handleClick(this);"> <label for="cauhoi4"><strong>D.</strong>
									<sapn id="cau4"></sapn> </label></li>
						</ul>
					</div>
					<div class="row justify-content-between">
						<div class="col-4">
							<button type="button" class="btn btn-outline-dark btn-sm rounded"
								onclick="backPage()">Back</button>
							<button type="button" class="btn btn-outline-dark btn-sm rounded"
								onclick="nextPage()">Next</button>
						</div>
						<div class="col-4">
							<div class="text-right">
								<button type="button"  data-toggle="modal" data-target="#modal-details" onclick="sendKQ()" class="btn btn-success btn-sm rounded">Submit</button>
							</div>
						</div>
					</div>


				</div>



			</div>
			<div class="col-md-4">
				<div class="totalQuizs border border-dark">
					<div class="row totalQuizs-title">
						<div class="col-md-4">
							Totol:<span id="totalQuizs" class="pl-2">40 sentences</span>
						</div>
						<div class="col-md-4">
							Time: <span id="time"></span>
						</div>
					</div>

					<c:forEach var="i" begin="1" end="40" step="5">
						<div class="row justify-content-md-center totalQuizs-number">
							<c:forEach var="j" begin="0" end="4">
								<div class="col-md-2 circle">
									<button class="circle-content circle-content-${j+ i}"
										onclick="chooseQuestion(${j+ i})"
										style="border: none; background: none">
										<c:out value="${j+ i}" />
									</button>
								</div>
							</c:forEach>
						</div>
					</c:forEach>
				</div>

			</div>
		</div>
		<div id="demo"></div>

		<!-- /content -->
		<!-- Footer Start -->
		<div class="container-fluid py-4 px-sm-3 px-md-5"
			style="background: #111111;">
			<p class="m-0 text-center">
				<i class="fa fa-copyright"></i> Copyright 2020 by Grad School

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
		<script src="lib/easing/easing.min.js"></script>
		<script src="lib/owlcarousel/owl.carousel.min.js"></script>

		<!-- Template Javascript -->
		<script src="js/main.js"></script>
	</div>
	<!-- modal details  --> 
<div class="modal fade" id="modal-details" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
             <!--header  -->
            <div class="modal-header">
                <h4 class="modal-title">Mock Exam Results</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <!--body  -->
            <div class="modal-body">
                <div class="row gutters-sm">
                   <div class="col-md-4">
                                    <div class="right-wrong">
                                        right-wrong
                                    </div>
                                </div>
                                <div class="col-md-8">
                                   <span id="CountCkecked"></span> /40
                      </div>
                </div>

            </div>
             <!--/body  -->
        </div>
    </div>
</div>
</body>

</html>
<script>
            var readQuestions = null;
            var correctanswer = null;  // đáp án
            var currentPage = 1;
            var CountRightSentence = 0; // tổng số lượng câu đúng
            var CountWrongSentence = 0 // tổng số lượng câu sai
            var CountCkecked =0 ; // tổng số câu đã làm

            var listQuestionResult = [];
            // lưu lại thông tin khi đã checked vào từng câu trả lời
            class QuestionResult {
                constructor(STT, checked, numberQuestionId) {
                    this.STT = STT;
                    this.checked = checked;
                    // id câu mình chon ở input
                    this.numberQuestionId = numberQuestionId;
                }

                // Các phương thức getter-setter
                get getSTT() {
                    return this.STT;
                }
                get getChecked() {
                    return this.checked;
                }
                get getNumberQuestionId() {
                    return this.numberQuestionId;
                }
                set setSTT(STT) {
                    this.STT = STT;
                }
                set setChecked(checked) {
                    this.checked = checked;
                }
                set setNumberQuestionId(numberQuestionId) {
                    this.numberQuestionId = numberQuestionId;
                }
            }

            $(document)
                .ready(
                    function () {
						

                        // số phần tử hiện thị lên 1 trang
                        var curElement = 1
                        // trang hiện tại
                        var page = 0;
                        // chủ đề: test 01, test 02,...
                        var readexeciseID = 1;
                        $
                            .ajax({
                                type: "get",
                                url: "http://localhost:8080/JavaWeb_Toiec/ReadQuestionsController",
                                data: {
                                    curElement: curElement,
                                    page: page,
                                    readexeciseID: readexeciseID
                                },
                                success: function (data) {
                                    readQuestions = JSON
                                        .parse(data.questions)[0]
                                    $("#question").text(
                                        readQuestions.question)
                                    $(".numberQuiz")
                                        .text(readQuestions.num)
                                    $(".quizContent").text(
                                        readQuestions.paragraph)
                                    $("#cau1").text(readQuestions.option1)
                                    $("#cau2").text(readQuestions.option2)
                                    $("#cau3").text(readQuestions.option3)
                                    $("#cau4").text(readQuestions.option4)

                                    correctanswer = readQuestions.correctanswer

                                },
                                error: function (data, textStatus,
                                    errorThrown) {
                                    console.log("error", data)
                                },
                            });
                    })
			// tính từ 1->40
            function chooseQuestion(numberQuiz) {
                currentPage = numberQuiz;
                $(".circle-content").css("color", "black");
                // số thứ tự câu hỏi 1->40
                var nameDOM = ".circle-content-" + numberQuiz
                $(nameDOM).css("color", "red");
                
                    $.ajax({
                        type: "get",
                        url: "http://localhost:8080/JavaWeb_Toiec/ReadQuestionsController",
                        data: {
                            curElement: 1,
                            page: numberQuiz-1,
                            readexeciseID: 1,
                        },
                        success: function (data) {
                            readQuestions = JSON
                                .parse(data.questions)[0]
                            console.log(readQuestions)
                            $("#question").text(
                                readQuestions.question)
                            $(".numberQuiz")
                                .text(currentPage)
                            $(".quizContent").text(
                                readQuestions.paragraph)
                            $("#cau1").text(readQuestions.option1)
                            $("#cau2").text(readQuestions.option2)
                            $("#cau3").text(readQuestions.option3)
                            $("#cau4").text(readQuestions.option4)

                            correctanswer = readQuestions.correctanswer
                        },
                        error: function (data, textStatus,
                            errorThrown) {
                            console.log("error", data)
                        },
                    });
            }
			
         // thay đổi background khi 1 câu đã được trả lời
			function changeBackgroundNumberQuestion(number){
        	 let nameChild = ".circle-content-"+ (number-1)
        	 $(nameChild).closest(".circle ").css({"background": "#808080", "color": "#black"})
         }
        	
			// lựa chọn câu trả lời
            function handleClick(myRadio) {
            	changeBackgroundNumberQuestion(currentPage+1)
            	var idInput = myRadio.id
                var currentValue = myRadio.value;
            	let checked = false;
            	// kiểm ra câu trước đó chọn là câu sai hay câu đúng
            	let checkedWrongSentence = null;
                //console.log("currentValue"+ currentValue)
                var STT = currentPage;
                
                // kiểm tra câu này đã được làm hay chưa, nếu đã đưuọc làm rồi thì sửa làm kết quả
                for (let i = 0; i < listQuestionResult.length; i++) {
                    if (listQuestionResult[i].getSTT == STT) {
                    	//
                    	checkedWrongSentence = listQuestionResult[i].getChecked
                    	
                    	 listQuestionResult[i].setChecked = currentValue
                    	 
                    	 checked = true;
                        break;
                    }
                }
                // nếu chưa thì thêm mới
                // lưu lại các câu đã được check
                let questionResult = new QuestionResult(STT, currentValue, idInput);
                listQuestionResult.push(questionResult)
                
            	// câu này đã được làm trước đó rồi
            	if(checked){
            		if (currentValue == correctanswer) {
                        
                    	// tổng số câu đúng
                        CountRightSentence++;
                        CountWrongSentence --;
                        console.log("CountRightSentence", CountRightSentence)
                        console.log("CountWrongSentence", CountWrongSentence)
                    } else {
                    	// nếu câu chọn trước đó mà đã sai rồi
                    	if(checkedWrongSentence != correctanswer){
                    		return
                    	}
                    	// tổng số câu sai
                        CountWrongSentence++;
                        CountRightSentence--;
                        console.log("CountRightSentence", CountRightSentence)
                        console.log("CountWrongSentence", CountWrongSentence)
                    }
            	}else{
            		CountCkecked ++;
					if (currentValue == correctanswer) {
                        
                    	// tổng số câu đúng
                        CountRightSentence++;
                       
                        console.log("CountRightSentence", CountRightSentence)
                    } else {
                    	// tổng số câu sai
                        CountWrongSentence++;
                        
                        console.log("CountWrongSentence", CountWrongSentence)
                    }
            	}
                
            }
            function backPage() {
            	 if (currentPage >= 1) {
            		 currentPage = currentPage - 1;
            		 chooseQuestion(currentPage)
            		 console.log("currentPage", currentPage)
                     let STT = currentPage;
                     let check = false;
                     // kiểm tra câu này đã được chọn hay chưa

                     for (let i = 0; i < listQuestionResult.length; i++) {
                         // nếu đã chọn rồi thì checked  câu đó
                         if (listQuestionResult[i].getSTT == STT) {
                        	 let nameInput = "#"+listQuestionResult[i].getNumberQuestionId
                             $(nameInput).prop("checked", true);
                             check = true;
                             break;
                         }
                         // nếu không đưuọc chọn thì xóa check
                         else{
                        	 check = false;
                        }
                     }
                     if(!check){
                    	 $(".result input").prop("checked", false);
                     }
                	 
                     
                 }

            }
            function nextPage() {
            	
                if (currentPage <= 40) {
                	  currentPage = currentPage + 1;
                      chooseQuestion(currentPage)
                      
                      
                	 let STT = currentPage;
                     let check = false;
                    // 
                    
                	 for (let i = 0; i < listQuestionResult.length; i++) {
                         // nếu đã chọn rồi thì checked đúng câu đó
                         if (listQuestionResult[i].getSTT == STT) {
                        	 let nameInput = "#"+listQuestionResult[i].getNumberQuestionId
                             $(nameInput).prop("checked", true);
                             check = true;
                             break;
                         }
                         // nếu không đưuọc chọn thì xóa check
                         else{
                        	 check = false;
                        }
                     }
                     if(!check){
                    	 $(".result input").prop("checked", false);
                     }
                  
                }

            }
            
            // gửi kết quả cuối cùng
            function sendKQ(){
            	// kiểm tra còn câu nào chưa làm không thì hiện thị thông báo cho người dùng biết
            	if(CountCkecked<39){
            		 let result = confirm("You have not completed some sentences, Are you sure you want to submit your essay?");
            	        if (result == true) {
            	           $("#CountCkecked").text(CountCkecked)
            	        } else {
            	           return;
            	        }
            	}
            }
        </script>