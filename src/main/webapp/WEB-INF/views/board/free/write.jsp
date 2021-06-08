<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- ===============================================-->
<!--    Document Title-->
<!-- ===============================================-->
<title>FreeBoard</title>


<!-- ===============================================-->
<!--    Favicons-->
<!-- ===============================================-->
<link rel="apple-touch-icon" sizes="180x180"
	href="/resources/assets/img/favicons/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="/resources/assets/img/favicons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="/resources/assets/img/favicons/favicon-16x16.png">
<link rel="shortcut icon" type="image/x-icon"
	href="/resources/assets/img/favicons/favicon.ico">
<link rel="manifest" href="/resources/assets/img/favicons/manifest.json">
<meta name="msapplication-TileImage"
	content="/resources/assets/img/favicons/mstile-150x150.png">
<meta name="theme-color" content="#ffffff">


<!-- ===============================================-->
<!--    Stylesheets-->
<!-- ===============================================-->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:300,400,700,900"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Inconsolata"
	rel="stylesheet">
<link href="/resources/assets/lib/loaders.css/loaders.min.css"
	rel="stylesheet">
<link href="/resources/assets/lib/fancybox/jquery.fancybox.min.css"
	rel="stylesheet">
<link href="/resources/assets/css/theme.css" rel="stylesheet">
<link href="/resources/assets/summernote/summernote-lite.css" rel="stylesheet">

<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
	select { 
		padding: .8em .5em; /* 여백으로 높이 설정 */ 
		font-family: 'Hanna', sans-serif;
		background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; /* 네이티브 화살표 대체 */ 
		border: 1px solid #999; 
		border-radius: 0px; /* iOS 둥근모서리 제거 */ 
		-webkit-appearance: none; /* 네이티브 외형 감추기 */ 
		-moz-appearance: none; 
		appearance: none;
	}
	a{
		color:black;
	}
	#mainWrite{
	width: 50%; 
	margin: 0 auto; 
	font-size: 1em;
	}
	#mainFrame{
		width:50%;
		margin:0 auto;
		font-size: 1.5em;
	}
	#freeHead{width:20%;}
	#subject{padding: .8em .5em;font-family: 'Hanna', sans-serif; width:55%;}
	#bigBtn{padding: .8em .5em; width:22%;}
	#smallBtn{padding: .8em .5em; display:none;}
	
	@media ( max-width : 575.98px) {
		#mainWrite{width: 100% !important;}
		#freeHead{width:27% !important;}
		#subject{width:70% !important;}
		#bigBtn{display:none;}
		#smallBtn{display:block; width:100%; margin-top:1rem;}
		#mainFrame{
			width:100% !important;
			margin:0 auto;
			font-size: 2em !important;
		}
		html, body {
			max-width: 100%;
			overflow-x: hidden;
			}
	}
	
	@media ( max-width : 1199.98px) {
		#mainWrite{width: 70%;}
		#mainFrame{
			width:70%;
			margin:0 auto;
			font-size: 1.5em;
		}
	}
</style>

</head>


<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->
	<main class="main" id="top"> <c:import url="../../head.jsp" />



	<!-- ============================================--> <!-- <section> begin ============================-->
	<section class="pt-7 pb-4">

		<div class="bg-holder"
			style="background-image: url(/resources/assets/img/gallery/fullpage-bg.jpg);">
		</div>
		<!--/.bg-holder-->

		<div class="container">
			<div
				class="row min-vh-25 align-items-center text-center justify-content-center">
				<div class="col col-md-7">
					<h1 class="text-primary fs-2 fs-md-5">Free Board</h1>
					<div class="lead text-white text-uppercase fs-0 fs-md-1">Feel
						free to talk</div>
				</div>
			</div>
		</div>
		<!-- end of .container-->

	</section>
	<!-- <section> close ============================--> <!-- ============================================-->




	<!-- ============================================--> <!-- <section> begin ============================-->
	<section>
		<div id="mainWrite">
			<form method="post" action="/board/free/write" id="freeBoardWriteForm" name="freeBoardWriteForm">
				<div style="margin-bottom: 1em;">
					<select name="freeHead" id="freeHead">
						<option value="잡담">잡담</option>
						<option value="고민상담">고민상담</option>
						<option value="팁/노하우">팁/노하우</option>
						<c:if test="${sessionId eq 'admin1234'}">
							<option value="공지">공지</option>
						</c:if>
					</select>
					<input type="text" id="subject" name="freeTitle" placeholder="제목">
					<button id="bigBtn"class="freeWrite btn btn-dark mr-1 mb-1" type="button" onclick="javascript:void(0)">글 등록</button>
				</div>
				<div>

					<!-- 써머노트  폼 불러오기 -->
					<textarea id="summernote" name="freeContent"></textarea>
				</div>
					<button id="smallBtn" class="freeWrite btn btn-dark mr-1 mb-1" type="button" onclick="javascript:void(0)">글 등록</button>
				<!-- session_id생기면 ${sessionId}로 바꿔주기 -->
				<input type="hidden" name="memberId" value="${sessionId}">
			</form>
		</div>
		<div id="mainFrame">
				<div class="row" style="margin-top: 5px;">
					<div class="col-12" style="margin: 10px 0px; text-align: right;">
						<span id="list"> 
							<a href="/board/free/list?${cri.getListLink()}" style="margin-right: 10px;"><i class="fas fa-clipboard-list"></i></a>
						</span>
					</div>
				</div>
		</div>
	</section>
	<!-- <section> close ============================--> <!-- ============================================-->




	<c:import url="../../footer.jsp" /> </main>
	<!-- ===============================================-->
	<!--    End of Main Content-->
	<!-- ===============================================-->




	<!-- ===============================================-->
	<!--    JavaScripts-->
	<!-- ===============================================-->
	<script src="/resources/assets/js/jquery.min.js"></script>
	<script src="/resources/assets/js/popper.min.js"></script>
	<script src="/resources/assets/js/bootstrap.js"></script>
	<script src="/resources/assets/js/plugins.js"></script>
	<script src="/resources/assets/lib/is/is.min.js"></script>
	<script src="/resources/assets/lib/stickyfilljs/stickyfill.min.js"></script>
	<script src="/resources/assets/lib/sticky-kit/sticky-kit.min.js"></script>
	<script src="/resources/assets/lib/loaders.css/loaders.css.js"></script>
	<script src="/resources/assets/lib/fancybox/jquery.fancybox.min.js"></script>
	<script src="/resources/assets/js/theme.js"></script>
	<!-- 써머노트를 사용하기위한 기본 js -->
	<script src="/resources/assets/summernote/summernote-lite.js"></script>
	<script src="/resources/assets/summernote/lang/summernote-ko-KR.js"></script>
	<!-- 써머노트 로딩과 설정변경 파일 js -->
	<script src="/resources/assets/summernote/summernoteBasic.js"></script>
	<script src="/resources/assets/summernote/summernoteAdd.js"></script>
	<script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>								
	<script>
		
		autosize($("textarea"));
		$(document).ready(function() {
			//summernoteView();
			summernoteStart();
		});

		$("button.freeWrite").on("click", function(e){
			e.preventDefault();
			var freeBoardWriteForm = $("#freeBoardWriteForm");
			
			if(!freeBoardWriteForm.find("#subject").val()){
				alert("제목을 입력하세요.");
				return false;
			}
			if(!freeBoardWriteForm.find("#summernote").val()){
				alert("내용을 입력하세요.");
				return false;
			}
			freeBoardWriteForm.submit();
		})
	</script>
</body>

</html>

















