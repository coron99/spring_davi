<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" 
	integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>Restaurant</title>


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
		.comment{
			margin-top:5%;
			word-break:break-all;
			margin-bottom:2rem;
		}
		
		.comment textarea{
			width:100%;
		}
		
		.like{
		    display:flex;
		    align-items:center;
			margin-bottom:2rem;
		}
		
		.like .fa-heart{
			font-size:1.5rem;
			margin-right:0.5rem;
			color:red;
		}
		
		.snsBottom{
			display:flex;
			justify-content: space-between;
			padding-right:4%;
		}
		
		#write{display:none;}
		
		
		.writeBtn, .deleteBtn, .cancelBtn{
			width:100%;
		}
		
		#writeBtn{
			margin-bottom:0.5rem !important;
		}
		
		#next, #prev {
			color: #ffb82e;
			font-size: 3rem;
			cursor: pointer;
		}
		
		#full_heart{display:none;}
		
		/* #gallery{
			display: flex;
			align-items:center;
			justify-content:center;
			padding:7.5rem 2.5rem;
		} */
		
		 #listBox{
			display: flex;
			align-items:center;
			justify-content:center;
		}
		
		@media (max-width: 575.98px) {
			.snsButton{
				display:block;
			}
			
			.writeBtn, #deleteBtn{
				width:100%;
			}
		}
		
		@media (max-width: 1199.98px) {
			#writeBtn, #deleteBtn{
				width:47%;
			}
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
              <h1 class="text-primary fs-2 fs-md-5">Gallery</h1>
              <div class="lead text-white text-uppercase fs-0 fs-md-1">Take a look inside</div>
            </div>
          </div>
        </div>
        <!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->




      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="bg-light pt-lg-8 pt-7" id="gallery">
        <div class="container">
          <div class="row no-gutters">
            <div class="col pl-0">
              <div class="row no-gutters mb-2">
                <div class="col-md-5 px-2 mb-3 mb-md-0" id="read">
                  <a href="#" data-fancybox="gallery" data-caption="Image caption" id="realDetailImg">
                    <img class="img-fluid rounded-soft" id="detailImg"/>
                  </a>
                  <div class="comment">
                  		<p style="margin-bottom:0.5rem;">
                  			<strong></strong>
                  		</p>
                  		<p id="snsContent">
                  		</p>
                  </div>
                  <div class="snsBottom">
                  	<div class="like">
                  		<div id="full_heart"><i class="fas fa-heart"></i></div>
                  		<div id="heart"><i class="far fa-heart"></i></div> <span></span>
                  	</div>
                  	<div class="snsDate">
                  	</div>
                  	<div class="snsBno" style="display: none">
                  	</div>
                  </div>
                  <div class="snsButton">                  	
                  	<c:if test="${not empty sessionId}">
                  		<button class="btn btn-outline-info mr-1 mb-1 writeBtn" type="button">글쓰기 <i class="fas fa-pencil-alt"></i></button>
                  		
		                  	
		                  	<button class="btn btn-outline-danger mr-1 mb-1 deleteBtn" type="button">삭제 <span class="fas fa-trash ml-1" data-fa-transform="shrink-3"></span></button>
                  		
                  	</c:if>
                  </div>
                </div>
                
                <div class="col-md-5 px-2 mb-3 mb-md-0" id="write">
                <form id="writeForm" method="post" action="/sns/insert" enctype="multipart/form-data">
                  <a href="javascript:ImgButton()">
                    <img id="writeBasicImg" class="img-fluid rounded-soft" src="https://cdn.discordapp.com/attachments/843673431463559171/846741741239140402/upload.png" alt="" />
                  </a>
                  <div class="comment">
                  		<textarea rows="3" cols="6" id="writeTextArea" name="content"></textarea>
                  		<input type="hidden" value="${sessionId}" name="memberId">
                  </div>
                  <div class="snsButton">
                  	<button class="btn btn-outline-info mr-1 mb-1 writeBtn" id="uploadBtn" type="button">글등록 <i class="fas fa-pencil-alt"></i></button>
                  	<button class="btn btn-outline-danger mr-1 mb-1 cancelBtn" type="button">취소 <i class="fas fa-window-close"></i></button>
                  	<input type="file" id="uploadFile" name ="uploadFile" accept="image/*" required multiple style="display:none;"/>
                  </div>
                </form>
                </div>
                
                <div class="col-md-7">
                  <div id="listBox">
                  	<div id="prevDiv"></div>
                  	<div id="listDiv" class="row no-gutters"></div>
                  	<div id="nextDiv"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- end of .container-->
		
      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->




      <!-- ============================================-->
      <!-- <section> begin ============================-->
     	 <c:import url="../../footer.jsp" />




      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="bg-black py-4 text-center">

        <div class="container">
          <p class="mb-0 font-weight-bold d-inline-block">Made With<span class="text-primary fs-0">&hearts;</span> By</p><a class="text-white ml-2" href="https://themewagon.com/">Themewagon</a>
        </div>
        <!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->


    </main>
    <!-- ===============================================-->
    <!--    End of Main Content-->
    <!-- ===============================================-->




    <!-- ===============================================-->
    <!--    JavaScripts-->
    <!-- ===============================================-->
    <script>
    var context = "${pageContext.request.contextPath}";
    var total  = parseInt("${total}");
    var nowPage = 1;
    var sessionId = "${sessionId}";
    
    </script>
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
    <script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
    <script src="/resources/assets/js/sns.js"></script>
    <script>
    </script>
  </body>
  <script>
  	$(document).ready(function(){
  		console.log("전체:"+total);
  		list(nowPage);
  	});
  </script>
</html>





















