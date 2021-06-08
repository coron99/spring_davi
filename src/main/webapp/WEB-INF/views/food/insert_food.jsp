<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">
<!-- 20210521 merge 배우기 -->
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	
    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>Foods</title>


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
    <link href="/resources/assets/lib/owl-carousel/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/assets/lib/fancy-tab/fancy-tab.css" rel="stylesheet">
    <link href="/resources/assets/css/theme.css" rel="stylesheet">

  </head>


  <body>

    <!-- ===============================================-->
    <!--    Main Content-->
    <!-- ===============================================-->
    <main class="main" id="top">
      <!-- ============================================-->
      <!-- Preloader ==================================-->
      
      <c:import url="../head.jsp" />
      
      
      
      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="pt-7 pb-4">

        <div class="bg-holder" style="background-image:url(/resources/assets/img/gallery/fullpage-bg.jpg);">
        </div>
        <!--/.bg-holder-->

        <div class="container">
          <div class="row min-vh-25 align-items-center text-center justify-content-center">
            <div class="col col-md-7">
              <h1 class="text-primary fs-2 fs-md-5">Our Menu</h1>
              <div class="lead text-white text-uppercase fs-0 fs-md-1">The various dishes are waiting for your coming to enjoy its</div>
            </div>
          </div>
        </div>
        <!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->
     


      <!-- ============================================-->
      <!-- <section> begin ============================-->
      
      <section >
      	 <form method="post" action="/food/insert_food" enctype="multipart/form-data">
      	  <div class="row mr-5 ml-5 form-group">
      	  	<label for="">레시피 이름</label>
		    <input class="form-control" id="foodName" name="foodName" type="text" placeholder="레시피 이름" />
      	  </div>
      	  <div class="row mr-5 ml-5 form-group">
      	  	<label for="">레시피 설명</label>
		    <input class="form-control" id="summary" name="summary" type="text" placeholder="레시피 설명" />
      	  </div>
      	  <div class="row mr-5 ml-5 form-group">
      	  	<label for="">칼로리</label>
		    <input class="form-control" id="calorie" name="calorie" type="text" placeholder="숫자" />
      	  </div>
      	  <div class="row mr-5 ml-5 form-group">
      	  	<label for="">준비 시간</label>
		    <input class="form-control" id="prepTime" name="prepTime" type="text" placeholder="분" />
      	  </div>
      	  <div class="row mr-5 ml-5 form-group">
      	  	<label for="">요리 시간</label>
		    <input class="form-control" id="cookTime" name="cookTime" type="text" placeholder="분" />
      	  </div>
      	  <div class="row mr-5 ml-5 form-group">
      	  	<label for="">요리양</label>
		    <input class="form-control" id="serves" name="serves" type="text" placeholder="인분" />
      	  </div>
      	  <div class="row mr-5 ml-5 form-group">
	      	  <div class="col-6">
	      	  	<label for="difficulty">요리 난이도</label>
			    <select class="form-control" id="difficulty" name="difficulty">
			    	<option value="쉬움">쉬움</option>
			    	<option value="보통">보통</option>
			    	<option value="어려움">어려움</option>
			    </select>
	      	  </div>
	      	  <div class="col-6">
	      	  	<label for="eatTime">요리 분류</label>
			    <select class="form-control" id="eatTime" name="eatTime">
			    	<option value="아침">아침</option>
			    	<option value="점심">점심</option>
			    	<option value="저녁">저녁</option>
			    </select>
	      	  </div>      	     	  
      	  </div>
          <div class="row mr-5 ml-5 form-group" id="sourceDiv">
		    <label for="materials">재료</label>
		    <input class="form-control" id="materials" name="materials" type="text" placeholder="재료" />		    
		  </div>
		  <div class="row mr-5 ml-5 form-group">
			  <button type="button" id="sourceAdd" class="btn btn-primary mr-1 mb-1">재료추가</button>
		  </div>
		  
		  <div class="row mr-5 ml-5 form-group" id="recipeDiv">
		    <label for="recipes">재료</label>
		    <input class="form-control" id="recipes" name="recipes" type="text" placeholder="레시피" />		    
		  </div>
		  <div class="row mr-5 ml-5 form-group">
		  <button type="button" id="recipeAdd" class="btn btn-primary mr-1 mb-1">레시피추가</button>
		  </div>
		  <div class="row mr-5 ml-5 form-group">
		    <label for="fileName">음식 사진</label>
		  	<input class="form-control-file" type="file" name="foodImg"/>
		  </div>
		  
		  <div class="row mr-5 ml-5 form-group">
			  <input type="submit" value="저장" class="btn btn-primary mr-1 mb-1"/>
		  </div>
        </form>
      </section>
     
      <!-- <section> close ============================-->
      <!-- ============================================-->




     

     <!-- footer -->
      <c:import url="../footer.jsp" />
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
    <script src="/resources/assets/lib/owl-carousel/owl.carousel.min.js"></script>
    <script src="/resources/assets/lib/fancy-tab/fancy-tab.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyARdVcREeBK44lIWnv5-iPijKqvlSAVwbw&amp;callback=initMap" async></script>
    <script src="/resources/assets/js/theme.js"></script>

  </body>
  <script>
  	$("document").ready(function() {		
  		
  		$("#sourceAdd").on("click", function() {
  			console.log("재료추가");
			$("#sourceDiv").append("<input class='form-control' name='materials' type='text' placeholder='재료' />");			
		});	
  		
  		$("#recipeAdd").on("click", function() {
  			console.log("재료추가");
			$("#recipeDiv").append("<input class='form-control' name='recipes' type='text' placeholder='레시피' />");			
		});
  	
  	});
  </script>

</html>