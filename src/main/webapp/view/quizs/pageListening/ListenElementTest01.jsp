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

<!-- Customized Bootstrap Stylesheet -->
<link href=<c:url value="/assets/css/reading.css"/> rel="stylesheet">

<link rel="stylesheet"
	href=<c:url value="/assets/css/templatemo-grad-school.css"/>>
<link rel="stylesheet" href=<c:url value="/assets/css/elementTest.css"/>>
<style>
button.circle-content {
	outline: none !important;
}

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
	margin: -0.2em;
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
		<div class="row py-5">
			<div class="col-md-8">
				<div class="titleReading">
					<h4>Practice Full Test TOEIC Listening</h4>
				</div>
				<div class="question">
					<p id="question"></p>
					<div id="audioQuestion">
						<audio controls></audio>
					</div>
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
								for="cauhoi1" class="cauhoi1"> <strong>A.</strong> <sapn
										id="cau1"></sapn>
							</label></li>
							<li><input type="radio" name="cau" value="B" id="cauhoi2"
								onclick="handleClick(this);"> <label for="cauhoi2"
								class="cauhoi2"> <strong>B.</strong> <sapn id="cau2"></sapn>
							</label></li>
							<li><input type="radio" name="cau" value="C" id="cauhoi3"
								onclick="handleClick(this);"> <label for="cauhoi3"
								class="cauhoi3"><strong>C.</strong> <sapn id="cau3"></sapn>
							</label></li>
							<li><input type="radio" name="cau" value="D" id="cauhoi4"
								onclick="handleClick(this);"> <label for="cauhoi4"
								class="cauhoi4"><strong>D.</strong> <sapn id="cau4"></sapn>
							</label></li>
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
								<button type="button" data-toggle="modal"
									data-target="#modal-details" onclick="sendKQ()"
									class="btn btn-success btn-sm rounded">Submit</button>
							</div>
						</div>
					</div>


				</div>



			</div>
			<div class="col-md-4">
				<div class="totalQuizs border border-dark">
					<div class="row totalQuizs-title">

						<div class="timeline">

							<span id="time"> <jsp:include page="../../TimeLine.jsp"></jsp:include>

							</span>
						</div>

						<div class="totol-title">
							Totol:<span id="totalQuizs" class="pl-2">40 sentences</span>
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


		<!-- Back to Top -->
		<a href="#" class="btn btn-primary btn-square back-to-top"><i
			class="fa fa-arrow-up"></i></a>



	</div>
	<!-- modal details  -->
	<div class="modal fade" id="modal-details" data-backdrop="static">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<!--header  -->
				<div class="modal-header">
					<h4 class="modal-title">Mock Exam Results</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<!--body  -->
				<div class="modal-body">
					<div class="row gutters-sm">
						<div class="col-md-4">
							<div class="right-wrong">Right-wrong</div>
						</div>
						<div class="col-md-8">
							<div class="block">
								<span id="right-wrong"></span> /40
							</div>

						</div>
					</div>
					<div class="row gutters-sm">
						<div class="col-md-4">
							<div class="right-wrong">Undone sentence</div>
						</div>
						<div class="col-md-8">
							<div class="block">
								<span id="undone-sentence"></span> /40
							</div>
						</div>
					</div>
					<div class="row gutters-sm">
						<div class="col-md-4">
							<div class="right-wrong">Total score</div>
						</div>
						<div class="col-md-8">
							<div class="block">
								<span id="total-score"></span>
							</div>
						</div>
					</div>
					<div class="sendKD">
						<p>* Submit your test results here to receive advice from us
							on your learning path</p>
					</div>
					<div class="row justify-content-between">
						<div class="col-4"></div>
						<div class="col-4">
							<div class="text-right">

								<button type="button" onclick="showKQ()"
									class="btn btn-success rounded">See the answer</button>

							</div>
						</div>
					</div>

				</div>
				<!--/body  -->
			</div>
		</div>
	</div>
	<!--HEADER ROW-->
	<jsp:include page="../../Footer.jsp"></jsp:include>
	<!-- /HEADER ROW -->
</body>

</html>
<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script>
var listenQuestions = null;
var correctanswer = null;  // ????p ??n
var currentPage = 1;
var CountRightSentence = 0; // t???ng s??? l?????ng c??u ????ng
var CountWrongSentence = 0 // t???ng s??? l?????ng c??u sai
var CountCkecked =0 ; // t???ng s??? c??u ???? l??m
// t???t c??? s??? c??u ch??a l??m
var listDoNot = [];
// y??u c???u hi???n th??? ????p ??n ????ng sai sau khi xem ????p ??n
var sendDA = false;

var listQuestionResult = [];
// l??u l???i th??ng tin khi ???? checked v??o t???ng c??u tr??? l???i
 // l??u l???i k???t qu??? c???a 40 c??u
            var listAll = []
class QuestionResult {
    constructor(STT, checked, numberQuestionId) {
        this.STT = STT;
        this.checked = checked;
        // id c??u m??nh chon ??? input
        this.numberQuestionId = numberQuestionId;
    }

    // C??c ph????ng th???c getter-setter
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
			

            // s??? ph???n t??? hi???n th??? l??n 1 trang
            var curElement = 1
            // trang hi???n t???i
            var page = 0;
            // ch??? ?????: test 01, test 02,...
            var listenEnexeciseID = 1;
            $
                .ajax({
                    type: "get",
                    url: "http://localhost:8080/JavaWeb_Toiec/ListenQuestionsController",
                    data: {
                        curElement: curElement,
                        page: page,
                        listenEnexeciseID: listenEnexeciseID
                    },
                    success: function (data) {
                        listenQuestions = JSON
                            .parse(data.questions)[0]
                        $("#question").text(
                        		listenQuestions.ListenQuestionName)
                        		
         	                                    		

                        		$("#audioQuestion audio").attr("src", '<c:url value="/assets/radio/'+listenQuestions.audiomp3+'"/>')
                        $(".numberQuiz")
                            .text(listenQuestions.listenQuestionID)
                        $(".quizContent").text(
                        		listenQuestions.question)
                        $("#cau1").text(listenQuestions.option1)
                        $("#cau2").text(listenQuestions.option2)
                        $("#cau3").text(listenQuestions.option3)
                        $("#cau4").text(listenQuestions.option4)

                        correctanswer = listenQuestions.correctanswer

                    },
                    error: function (data, textStatus,
                        errorThrown) {
                        console.log("error", data)
                    },
                });
        })
// t??nh t??? 1->40
function chooseQuestion(numberQuiz) {
    currentPage = numberQuiz;
    $(".circle-content").css("color", "black");
    // s??? th??? t??? c??u h???i 1->40
    var nameDOM = ".circle-content-" + numberQuiz
    $(nameDOM).css("color", "red");
    
        $.ajax({
            type: "get",
            url: "http://localhost:8080/JavaWeb_Toiec/ListenQuestionsController",
            data: {
                curElement: 1,
                page: numberQuiz-1,
                listenEnexeciseID: 1,
            },
            success: function (data) {
            	 listenQuestions = JSON
                 .parse(data.questions)[0]
             $("#question").text(
             		listenQuestions.ListenQuestionName)
                     $("#audioQuestion audio").attr("src", '<c:url value="/assets/radio/'+listenQuestions.audiomp3+'"/>')
                $(".numberQuiz")
                    .text(currentPage)
                    $(".quizContent").text(
                    		listenQuestions.question)
                    $("#cau1").text(listenQuestions.option1)
                    $("#cau2").text(listenQuestions.option2)
                    $("#cau3").text(listenQuestions.option3)
                    $("#cau4").text(listenQuestions.option4)

                    correctanswer = listenQuestions.correctanswer
            },
            error: function (data, textStatus,
                errorThrown) {
                console.log("error", data)
            },
        });
        checkedQuestion()
        if(sendDA){
        	showKQ()
        }
}

// thay ?????i background khi 1 c??u ???? ???????c tr??? l???i
function changeBackgroundNumberQuestion(number){
 let nameChild = ".circle-content-"+ (number-1)
 $(nameChild).closest(".circle ").css({"background": "#808080", "color": "#black"})
}

// l???a ch???n c??u tr??? l???i
function handleClick(myRadio) {
	changeBackgroundNumberQuestion(currentPage+1)
	var idInput = myRadio.id
    var currentValue = myRadio.value;
	let checked = false;
	// ki???m ra c??u tr?????c ???? ch???n l?? c??u sai hay c??u ????ng
	let checkedWrongSentence = null;
    //console.log("currentValue"+ currentValue)
    var STT = currentPage;
    
    // ki???m tra c??u n??y ???? ???????c l??m hay ch??a, n???u ???? ????u???c l??m r???i th?? s???a l??m k???t qu???
    for (let i = 0; i < listQuestionResult.length; i++) {
        if (listQuestionResult[i].getSTT == STT) {
        	//
        	checkedWrongSentence = listQuestionResult[i].getChecked
        	
        	 listQuestionResult[i].setChecked = currentValue
        	 
        	 checked = true;
            break;
        }
    }
    // n???u ch??a th?? th??m m???i
    // l??u l???i c??c c??u ???? ???????c check
    let questionResult = new QuestionResult(STT, currentValue, idInput);
    listQuestionResult.push(questionResult)
    
	// c??u n??y ???? ???????c l??m tr?????c ???? r???i
	if(checked){
		if (currentValue == correctanswer) {
            
        	// t???ng s??? c??u ????ng
            CountRightSentence++;
            CountWrongSentence --;
            console.log("CountRightSentence", CountRightSentence)
            console.log("CountWrongSentence", CountWrongSentence)
        } else {
        	// n???u c??u ch???n tr?????c ???? m?? ???? sai r???i
        	if(checkedWrongSentence != correctanswer){
        		return
        	}
        	// t???ng s??? c??u sai
            CountWrongSentence++;
            CountRightSentence--;
            console.log("CountRightSentence", CountRightSentence)
            console.log("CountWrongSentence", CountWrongSentence)
        }
	}else{
		CountCkecked ++;
		if (currentValue == correctanswer) {
            
        	// t???ng s??? c??u ????ng
            CountRightSentence++;
           
            console.log("CountRightSentence", CountRightSentence)
        } else {
        	// t???ng s??? c??u sai
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
        
        
         // ki???m tra c??u n??y ???? ???????c ch???n hay ch??a
         checkedQuestion()   
     }
	 if(sendDA){
			showKQ()
		}
}

// ki???m tra c??u ???? ???????c l??m hay ch??a
function checkedQuestion(){
	 let check = false;
	 let STT = currentPage;
	for (let i = 0; i < listQuestionResult.length; i++) {
        // n???u ???? ch???n r???i th?? checked  c??u ????
        if (listQuestionResult[i].getSTT == STT) {
       	 let nameInput = "#"+listQuestionResult[i].getNumberQuestionId
            $(nameInput).prop("checked", true);
            check = true;
            break;
        }
        // n???u kh??ng ????u???c ch???n th?? x??a check
        else{
       	 check = false;
       }
    }
    if(!check){
   	 $(".result input").prop("checked", false);
    }
}
function nextPage() {
	
    if (currentPage <= 40) {
    	  currentPage = currentPage + 1;
          chooseQuestion(currentPage)
          
          checkedQuestion()
    }
    if(sendDA){
		showKQ()
    }
}

    // g???i k???t qu??? cu???i c??ng
    function sendKQ(){
    	// ki???m tra c??n c??u n??o ch??a l??m kh??ng th?? hi???n th??? th??ng b??o cho ng?????i d??ng bi???t
    	if(CountCkecked<39){
    		 let result = confirm("You have not completed some sentences, Are you sure you want to submit your essay?");
    	        if (result == true) {
    	        	// t???ng ??i???m
    	        	let total = (CountRightSentence*10)/40
    	           $("#right-wrong").text(CountRightSentence)
    	           $("#undone-sentence").text(CountWrongSentence)
    	           $("#total-score").text(total)
    	        } else {
    	           return;
    	        }
    	}
    }
    // hi???n th??? k???t qu??? ????ng
    function showKQ(){
    	sendDA = true;
    	// c??c c??u ch??a l??m
    	$(".cauhoi1").css("color", "black");
        	$(".cauhoi2").css("color", "black");
        	$(".cauhoi3").css("color", "black");
        	$(".cauhoi4").css("color", "black");
  
       if(listDoNot.length<1){
    	// duy???t qua 40 c??u 
        	for(let i = 1 ; i <= 40 ; i++){
        		// th??m v??o list
        		listDoNot.push(i)
        		for(let j=0; j < listQuestionResult.length; j++){
        			// ki???m tra c??u n??o ???? l??m r???i
        			if (listQuestionResult[j].getSTT == i) {
        				// n???u c??u l??m r???i m?? ????ng th?? t??ch them d???u V v?? ?????i m??u xanh l?? c??y
        				console.log(listQuestionResult[j].checked , listAll[j].correctanswer)
        				let nameLabel = "." +listQuestionResult[j].getNumberQuestionId
        				if(listQuestionResult[j].checked == listAll[j].correctanswer){
        					
        					$(nameLabel).css("color", "#04B12F");
        					// n???u c??u l??m r???i m?? sai th?? t??ch c??u l??m r???i m??u ????? v?? d???u X
        				}else{
        					$(nameLabel).css("color", "red");
        				}
        				// x??a c??u l??m r???i ra kh???i m???ng c??u ch??a l??m
    					listDoNot = listDoNot.filter(function(element){
						  return element !== i;
						});
        			}	
            	}
        		
        	}
           
        	
        	
        	
       }
       // n???u b???m next, back, chooseQuestion
       // ch??? ki???m tra xem c??u n??y c?? ????ng hay sai th??i
       else{
    	   for(let j=0; j < listQuestionResult.length; j++){
   			// ki???m tra c??u n??o ???? l??m r???i
   			if (listQuestionResult[j].getSTT == currentPage) {
   				// n???u c??u l??m r???i m?? ????ng th?? t??ch them d???u V v?? ?????i m??u xanh l?? c??y
   				console.log(listQuestionResult[j].checked , listAll[j].correctanswer)
   				let nameLabel = "." +listQuestionResult[j].getNumberQuestionId
   				if(listQuestionResult[j].checked == listAll[j].correctanswer){
   					
   					$(nameLabel).css("color", "#04B12F");
   					// n???u c??u l??m r???i m?? sai th?? t??ch c??u l??m r???i m??u ????? v?? d???u X
   				}else{
   					$(nameLabel).css("color", "red");
   				}
   				// x??a c??u l??m r???i ra kh???i m???ng c??u ch??a l??m
					listDoNot = listDoNot.filter(function(element){
					  return element !== i;
					});
   			}	
       	}
       }
    // C??u ch??a l??m
		// chuy???n m??u xanh bi???n vs ????p ??n ????ng
       checkedDoNot(listDoNot)
    }
    function checkedDoNot(listDoNot){
    
    	for(let i =0; i< listDoNot.length; i++){
    		// ki???m tra hi???n t???i ??ang ?????ng ??? c??u n??o
    		if(currentPage== listDoNot[i]){
    			
    			// c??u n??o ????ng chuy???n m??u
        		if(listAll[listDoNot[i]-1].correctanswer =="A"){
        
        			$(".cauhoi1").css("color", "#0794DE");
        		}
        		if(listAll[listDoNot[i]-1].correctanswer =="B"){
        	
        			$(".cauhoi2").css("color", "#0794DE");
        		}
        		if(listAll[listDoNot[i]-1].correctanswer =="C"){
        		
        			$(".cauhoi3").css("color", "#0794DE");
        		}
        		if(listAll[listDoNot[i]-1].correctanswer =="D"){
        			
        			$(".cauhoi4").css("color", "#0794DE");
        		}
    		}
    		
    	}
    }
 // nh???n ????p ??n 40 c??u
	  function takeKQ(){
		$.ajax({
            type: "get",
            url: "http://localhost:8080/JavaWeb_Toiec/ListenQuestionsController",
            data: {
                curElement: 40,
                page: 0,
                listenEnexeciseID: 1,
            },
            success: function (data) {
            	listAll =  JSON.parse(data.questions)
            	console.log(listAll)
            },
            error: function (data, textStatus,
                errorThrown) {
                console.log("error", data)
            },
        });
	}
	  takeKQ()

</script>