<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 주석 -->
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
<link href="/resources/assets/css/getFree.css" rel="stylesheet">
<link href="/resources/assets/summernote/summernote-lite.css" rel="stylesheet">



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
			<form method="post"action="/board/free/modify" name="freeBoardViewForm">
		<div id="mainBoard">
			<div id="topDiv">
				<h5>${board.freeHead}</h5>
				<h5>${board.freeDate}</h5>
			</div>
			<div id="freeTitle">
				<h3 id="freeTit">${board.freeTitle}</h3>
				<h5 id="freeMem" style="margin-top:0.3rem;">@${board.memberId}</h5>
				<input id="modifyTitle" name="freeTitle" type="text" value="${board.freeTitle}">
			</div>
			<div id="summerDiv">
				<textarea id="summernote" name="freeContent">${board.freeContent}</textarea>
			</div>
		</div>
		<div id="mainFrame">
				<div class="row" style="margin-top: 5px;">
					<div class="col-12" style="margin: 10px 0px; text-align: right;">
						<span id="list"> <a href="/board/free/list${cri.getListLink()}" style="margin-right: 10px;"><i class="fas fa-clipboard-list"></i></a>
						</span>
						<c:if test="${sessionId eq board.memberId}">
							<span id="modify"> 
							<a href="javascript:enable()" style="margin-right: 10px;"><i class="fas fa-pencil-alt"></i></a>
							</span>
							<span id="deleteOk"> <a href="/board/free/delete?freeNum=${board.freeNum}" style="margin-right: 10px;"><i class="fas fa-trash-alt"></i></a>
							</span>
							<span id="modifyOk" style="display: none"> <a href="javascript:freeBoardViewForm.submit()" style="margin-right: 10px;"><i class="fas fa-edit"></i></a>
							</span>
						</c:if>
					</div>
				</div>
		</div>
			<input type="hidden" name="pageNum" value="${cri.pageNum}">
			<input type="hidden" name="amount" value="${cri.amount}">
            <input type="hidden" name="type" value="${cri.type}">
			<input type="hidden" name="keyword" value="${cri.keyword}">
			<input type="hidden" value="${board.freeNum}" name="freeNum">
			</form>
			<div id="replyInputFrame">
				<article id="articleInput">
					<h5>새 댓글 작성</h5>
					<div>
						<textarea id="replyInputTextarea" placeholder="댓글을 입력하세요."></textarea>
						<button id="replyInputButton" class="btn btn-outline-secondary mr-1 mb-1">등록</button>
					</div>
				</article>
			</div>
			<!-- 댓글 -->
			<div class="replyListFrame">
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
	<script src="/resources/assets/js/get.js"></script>
	
	<script>
		var freeNum = "${board.freeNum}";
		var sessionId = "${sessionId}";
		
		autosize($("textarea"));
		$(document).ready(function() {
			summernoteView();
			writeDisable();
			replyService.replyList(freeNum);
		});
		
			function enable() {
			$('#summernote').summernote('destroy');
			summernoteStart();
			$('select').val("1").prop("selected", true);
			$('#subjectH3').hide();
			$('#deleteOk').hide();
			$('#modify').hide();
			$('#subjectInput').show();
			$('#modifyOk').show();
			$('#modifyTitle').show();
			$('#freeTit').hide();
			$('#freeMem').hide();
			writeAble();
		}

		function disable() {
			document.getElementById('subject').readOnly = true;
			writeAble();
		}
		
		$("#replyInputButton").on("click",function(){
			if(sessionId == ""){
				alert("로그인 후 댓글 작성이 가능합니다.");
				return;
			}else{
				replyService.replyAdd();
				$("#replyInputTextarea").val("");				
				alert("댓글이 등록되었습니다.");
				return;
			}
		});
		
		$(".replyListFrame").on("click",".deleteOk a",function(e){
			e.preventDefault();
			var replyNum = $(this).attr("href");
			replyService.replyDelete(freeNum,replyNum);
		});
		
		var check = false;
		$(".replyListFrame").on("click",".modify a",function(e){
			e.preventDefault();
			console.log("수정 들어옴");
			if(check){alert("이미 수정중인 댓글이 있습니다.");return;}
			var replyNum = $(this).attr("href");
			$(".userContent"+replyNum).hide();
			$("#modify"+replyNum).hide();
			$("#modifyOk"+replyNum).css('display','inline');
			$("#replyContentModify"+replyNum).css('display','block');
			$("#modifyText"+replyNum).css('display','block');
			check = true;
		});
		
		$(".replyListFrame").on("click",".modifyOk a",function(e){
			e.preventDefault();
			console.log("수정완료 들어옴");
			var replyNum = $(this).attr("href");
			
			$(".userContent"+replyNum).hide();
			$("#modify"+replyNum).hide();
			$(".modifyOk"+replyNum).css('display','inline');
			var content = $("#replyContentModify"+replyNum).val();
			if(content ==""){
				alert("수정할 댓글을 입력해주세요.");
				return;
			}
			replyService.replyModify(content,replyNum);
			check = false;
		});
		
		var check2 = false;
		$(".replyListFrame").on("click",".reReply",function(e){
			e.preventDefault();
			if(sessionId == ""){alert("로그인 후 답글 작성이 가능합니다.");return;}
			if(check2){alert("이미 작성중인 답글이 있습니다.");return;}
			console.log("답글 달기 들어옴.");
			var replyNum = $(this).attr("href");
			$("#reReplyContent"+replyNum).show();
			$("#reReplyInputButton"+replyNum).show();
			$(this).hide();
			check2=true;
		});
		
		$(".replyListFrame").on("click",".reReplyInputButton",function(e){
			console.log("답글작성 완료 들어옴.");
			e.preventDefault();
			var btn = $(this);
			var parentReplyNum = btn.data("replynum");
			var parentReplyId = btn.data("memberid");
			var content = $("#reReplyContent"+parentReplyNum).val()
			if(content==""){alert("답글을 입력해주세요.");return;}	
			replyService.reReplyAdd(parentReplyNum,parentReplyId,content);
			check2=false;
		});
		
		
	</script>
</body>

</html>

















