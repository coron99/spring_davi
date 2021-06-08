<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>FreeBoardList</title>


    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
    <link rel="apple-touch-icon" sizes="180x180" href="/resources/assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/resources/assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/resources/assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="/resources/assets/img/favicons/favicon.ico">
    <link rel="manifest" href="/resources/assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="/resources/assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">


    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link href="https://fonts.googleapis.com/css?family=Merriweather:300,400,700,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Inconsolata" rel="stylesheet">
    <link href="/resources/assets/lib/loaders.css/loaders.min.css" rel="stylesheet">
    <link href="/resources/assets/lib/fancybox/jquery.fancybox.min.css" rel="stylesheet">
    <link href="/resources/assets/css/theme.css" rel="stylesheet">
    
	<style>
	@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
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
	#keyword{padding: .8em .5em;}
	#nowPage{font-size:1.5rem; font-color:#FFC554;}
	#noticeFree{background-color : #EAEAEA; !important}
	#freeTable{width:70%;}
	#newFree{width:85%; margin-top:2rem; margin-bottom:1rem;}
	.ATitle{color : #5e6e82;}
	.big-width{display:block;}
	.small-width{display:none;}
	.changePage{font-size:1.5rem;}
	select{width: 10%;display: inline;}
	input[name='keyword']{width: 30%; display: inline;}
	.search{width: 10%; padding: .8em .5em; }
	
	@media (max-width: 575.98px) {
			#freeTable{width:100%;}
			.freeDate{display:none;}
			.memberId{display:none;}
			.big-width{display:none;}
			.small-width{display:block;}
			#newFree button{width:100%;}
			select{width: 100%;}
			input[name='keyword']{width: 100%;}
			.search{width: 100% !important;}
			
			html, body {
			max-width: 100%;
			overflow-x: hidden;
			}
		}		
		
	@media (max-width: 1199.98px) {
			#freeTable{width:100%;}
			.freeDate{display:none;}
			#newFree{width:100%;}
			.search{width: 20%;}
		}
		
  </style>
  
  </head>


  <body>

    <!-- ===============================================-->
    <!--    Main Content-->
    <!-- ===============================================-->
    <main class="main" id="top">
      <c:import url="../../head.jsp" />
     


      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="pt-7 pb-4">

        <div class="bg-holder" style="background-image:url(/resources/assets/img/gallery/fullpage-bg.jpg);">
        </div>
        <!--/.bg-holder-->

        <div class="container">
          <div class="row min-vh-25 align-items-center text-center justify-content-center">
            <div class="col col-md-7">
              <h1 class="text-primary fs-2 fs-md-5">Free Board</h1>
              <div class="lead text-white text-uppercase fs-0 fs-md-1">Feel free to talk</div>
            </div>
          </div>
        </div>
        <!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->
		



      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="bg-light pt-lg-8 pt-7" id="gallery" style="text-align:center;position:relative">
      		<table class="table" id="freeTable" style="margin:auto;">
			  <thead class="thead-dark">
			    <tr>
			      <th class="freeHead">분류</th>
			      <th class="freeTitle">제목</th>
			      <th class="memberId">작성자</th>
			      <th class="freeDate">작성일</th>
			    </tr>
			  </thead>
			  <tbody>
				<c:forEach var="board" items="${list}">
				<c:choose>
					<c:when test="${board.freeNotice == 0}">
						<tr id="noticeFree">
							 <th class="freeHead">${board.freeHead}</th>
						     <th class="freeTitle"><a class="ATitle" href="/board/free/get${pageMaker.cri.getListLink()}&freeNum=${board.freeNum}">${board.freeTitle}</a></th>
						     <th class="memberId">${board.memberId}</th>
						     <th class="freeDate">${board.freeDate}</th>
						</tr>
					</c:when>
					<c:otherwise>
						<tr>
							 <th class="freeHead">${board.freeHead}</th>
						     <th class="freeTitle"><a class="ATitle" href="/board/free/get${pageMaker.cri.getListLink()}&freeNum=${board.freeNum}">${board.freeTitle}</a></th>
						     <th class="memberId">${board.memberId}</th>
						     <th class="freeDate">${board.freeDate}</th>
						</tr>
					</c:otherwise>
				</c:choose>
				</c:forEach>
			  </tbody>
			</table>
			<form action="/board/free/list" id="searchForm">
				<div class="fields">
					<div class="field">
						<div style="text-align:center; margin-top:1rem;">
							<select name="type">
								<option value="" ${pageMaker.cri.type == null ? 'selected' : ''}>검색 기준</option>
								<option value="H" ${pageMaker.cri.type == 'H' ? 'selected' : ''}>분류</option>
								<option value="T" ${pageMaker.cri.type == 'T' ? 'selected' : ''}>제목</option>
								<option value="M" ${pageMaker.cri.type == 'M' ? 'selected' : ''}>작성자</option>
							</select>
							<input id="keyword" type="text" name="keyword" value="${pageMaker.cri.keyword}">
							<button class="search btn btn-dark mr-1 mb-1" type="button" onclick="javascript:void(0)">검색</button>
							</div>
						</div>
					</div>
			</form>
			<div class="big-width" style="text-align:center;">
				<c:if test="${not empty sessionId}">
					<div id="newFree" style="text-align: right;">
						<button class="btn btn-outline-secondary mr-1 mb-1" type="button"  onClick="location.href='/board/free/write${pageMaker.cri.getListLink()}'">새 글쓰기</button>
					</div>
				</c:if>
				<c:if test="${pageMaker.prev}">
					<a class="changePage" href="${1}"><code>&lt;&lt;</code></a>
					<a class="changePage" href="${pageMaker.startPage - 1}"><code>&lt;</code></a>
				</c:if>
				<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
					<c:choose>
						<c:when test="${num eq pageMaker.cri.pageNum}"><span class="border-bottom" id="nowPage">${num}</span></c:when>
					<c:otherwise>
						<a class="changePage" href="${num}"><code>${num}</code></a>
					</c:otherwise>
					</c:choose>
				</c:forEach>
					<c:if test="${pageMaker.next}">
						<a class="changePage" href="${pageMaker.endPage + 1}"><code>&gt;</code></a>
						<a class="changePage" href="${pageMaker.realEnd}"><code>&gt;&gt;</code></a>
					</c:if>
			</div>
			
			<div class="small-width" style="text-align:center;">
				<div id="newFree" style="text-align: right;">
				<c:if test="${not empty sessionId}">
					<button class="btn btn-outline-secondary mr-1 mb-1" type="button" onClick="location.href='/board/free/write?cri=${pageMaker.cri}'">새 글쓰기</button>
				</c:if>	
				</div>
				<c:if test="${pageMaker.cri.pageNum > 1}">
					<a class="changePage" href="${1}">&lt;&lt;</a>
					<a class="changePage" href="${pageMaker.cri.pageNum - 1}">&lt;</a>
				</c:if>
				<code>${pageMaker.cri.pageNum}</code>
				<c:if test="${pageMaker.cri.pageNum < pageMaker.realEnd}">
					<a class="changePage" href="${pageMaker.cri.pageNum + 1}">&gt;</a>
					<a class="changePage" href="${pageMaker.realEnd}">&gt;&gt;</a>
				</c:if>
			</div>
			
			<form id="actionForm" action="/board/free/list">
				<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
				<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
				<input type="hidden" name="type" value="${pageMaker.cri.type}">
				<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
			</form>
      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->




      <c:import url="../../footer.jsp" />
    </main>
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
	<script>
		$("button.search").on("click", function(e){
			e.preventDefault();
			var searchForm = $("#searchForm");
			
			if(!searchForm.find("option:selected").val()){
				alert("검색 종류를 선택하세요.");
				return false;
			}
			if(!searchForm.find("input[name='keyword']").val()){
				alert("키워드를 입력하세요.");
				return false;
			}
			searchForm.submit();
		})
	
	
		$(".changePage").on("click",function(e){
			e.preventDefault();
			var actionForm = $("#actionForm");
			var pageNum = $(this).attr("href");
			actionForm.find("input[name='pageNum']").val(pageNum);
			actionForm.submit();
		});
		
	</script>
  </body>

</html>

















