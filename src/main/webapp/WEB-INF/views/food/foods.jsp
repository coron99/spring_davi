햐<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
      <!--  -->
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
      <section id="menu">

        <div class="container">
          
    	  <div class="row">
    		  <a href="/food/insert_food" class="btn btn-primary mr-2 ml-2 mb-2">요리추가</a>
    	  </div>
          <div class="row">
            <div class="col">
              <div class="owl-carousel owl-theme owl-hvr-nav" data-options='{"margin":10,"autoplay":true,"dots":false,"loop":true,"responsive":{"0":{"items":1,"nav":false},"767":{"items":2,"nav":true},"992":{"items":4,"nav":true}}}'>
             
              <c:forEach var="item" items="${list}">
              	<a class="text-decoration-none"   data-toggle="modal" data-target="#foodItemModel" data-fno="${item.fno}">
	                <div class="hoverbox"><img class="rounded-soft" src="/upload/food/${item.fileName}" alt=" " />
	                  <div class="hoverbox-content hoverbox-content-gradient justify-content-center align-items-center rounded-soft">
	                    <div class="lh-3">
	                      <p class="font-weight-bold fs-1 mb-0 text-uppercase text-white mt-8 lh-3">${item.foodName}</p>
	                      <p class="text-white">${item.calorie}cal</p>
	                    </div>
	                  </div>
	                </div>  
                </a>             
              </c:forEach>  
              
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
      <section class="pt-0">

        <div class="container">
          <div class="row">
            <div class="col">
              <div class="overflow-hidden">
                <div class="fancy-tab">
                  <div class="fancy-bar justify-content-center">
                    <div class="fancy-bar-item active"><span class="fas fa-coffee"></span><span class="d-none mt-1 d-lg-block">Breakfast</span></div>                    
                    <div class="fancy-bar-item"><span class="fas fa-utensils"></span><span class="d-none mt-1 d-lg-block">Lunch</span></div>
                    <div class="fancy-bar-item"><span class="fas fa-drumstick-bite"></span><span class="d-none mt-1 d-lg-block">Dinner</span></div>
                    
                  </div>
                  <div class="fancy-tab-contents bg-light rounded-soft">
                    <!-- 아침 -->
                    <div class="fancy-tab-content active">
                      <div class="row no-gutters overflow-hidden" data-zanim-timeline="{&quot;delay&quot;:0}" data-zanim-trigger="scroll">
                        <div class="col"><img class="position-absolute r-0 rounded-soft" src="/resources/assets/img/food/egg.png" alt="" width="200" data-zanim-xs='{"from":{"x":50,"y":-50,"opacity":0},"to":{"x":0,"y":0,"opacity":1},"delay":0.4,"duration":2}' /><img class="position-absolute b-0 l-0 rounded-soft d-none d-md-block" src="/resources/assets/img/food/bread.png" alt="" width="400" data-zanim-xs='{"animation":"slide-right","delay":0.8,"duration":1}' />
                          <div class="row py-8 rounded-soft no-gutters">
                          
                          <!-- Left -->
                            <div class="col-lg-4 border-lg-right border-2x border-300 px-5" id="menu-left" data-zanim-xs='{"animation":"","delay":0.4,"duration":2}'>                              
	                             <!-- 음식 -->
	                             
	                           <c:forEach var="i" begin="0" end="${lists.breakfast.size()}" step="3"> 
	                            <c:if test="${lists.breakfast[i] ne null}">                        		
	                              <a class="text-decoration-none"   data-toggle="modal" data-target="#foodItemModel" data-fno="${lists.breakfast[i].fno}">                              
	                                <div class="row no-gutters">
	                                  <div class="col d-flex justify-content-between">
	                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">${lists.breakfast[i].foodName}</h6>
	                                    <p class="text-danger font-weight-bold mb-0">${lists.breakfast[i].calorie}cal</p>
	                                  </div>
	                                </div>
	                                <p class="w-xl-75 text-600 mb-4">${lists.breakfast[i].summary}</p>
	                              </a>                              
                       		     </c:if>
	                            </c:forEach>
                              	<!-- 음식끝 -->                            
                                
                            </div>
                            <!-- Center -->
                            <div class="col-lg-4 border-lg-right border-2x border-300 px-5" id="menu-center" data-zanim-xs='{"animation":"","delay":0.5,"duration":2}'>
                              <c:forEach var="i" begin="1" end="${lists.breakfast.size()}" step="3">   
                         	     <c:if test="${lists.breakfast[i] ne null}">                           	
	                              <a class="text-decoration-none"   name="modalData" data-toggle="modal" data-target="#foodItemModel" data-fno="${lists.breakfast[i].fno}">                              
	                                <div class="row no-gutters">
	                                  <div class="col d-flex justify-content-between">
	                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">${lists.breakfast[i].foodName}</h6>
	                                    <p class="text-danger font-weight-bold mb-0">${lists.breakfast[i].calorie}cal</p>
	                                  </div>
	                                </div>
	                                <p class="w-xl-75 text-600 mb-4">${lists.breakfast[i].summary}</p>
	                              </a>
	                             </c:if>    	                                                    
	                           </c:forEach>
                            </div>
                            <!-- Right -->
                            <div class="col-lg-4 px-5" id="menu-right" data-zanim-xs='{"animation":"","delay":0.6,"duration":2}'>
                              <c:forEach var="i" begin="2" end="${lists.breakfast.size()}" step="3">
                              	<c:if test="${lists.breakfast[i] ne null}">
	                              <a class="text-decoration-none"   data-toggle="modal" data-target="#foodItemModel" data-fno="${lists.breakfast[i].fno}">                              
	                                <div class="row no-gutters">
	                                  <div class="col d-flex justify-content-between">
	                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">${lists.breakfast[i].foodName}</h6>
	                                    <p class="text-danger font-weight-bold mb-0">${lists.breakfast[i].calorie}cal</p>
	                                  </div>
	                                </div>
	                                <p class="w-xl-75 text-600 mb-4">${lists.breakfast[i].summary}</p>
	                              </a>  
                              	</c:if>
	                                                      
	                           </c:forEach>
                            </div>
                            <!-- ------------- -->
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- 점심 -->
                    <div class="fancy-tab-content">
                      <div class="row no-gutters overflow-hidden" data-zanim-timeline="{&quot;delay&quot;:0}" data-zanim-trigger="scroll">
                        <div class="col"><img class="position-absolute r-0 rounded-soft" src="/resources/assets/img/food/egg.png" alt="" width="200" data-zanim-xs='{"from":{"x":50,"y":-50,"opacity":0},"to":{"x":0,"y":0,"opacity":1},"delay":0.4,"duration":2}' /><img class="position-absolute b-0 l-0 rounded-soft d-none d-md-block" src="/resources/assets/img/food/bread.png" alt="" width="400" data-zanim-xs='{"animation":"slide-right","delay":0.8,"duration":1}' />
                          <div class="row py-8 rounded-soft no-gutters">
                            <!-- Left -->
                            <div class="col-lg-4 border-lg-right border-2x border-300 px-5" id="menu-left" data-zanim-xs='{"animation":"","delay":0.4,"duration":2}'>                              
	                             <!-- 음식 -->
	                            <c:forEach var="i" begin="0" end="${lists.lunch.size()}" step="3">
	                            	<c:if test="${lists.lunch[i] ne null}">
		                              <a class="text-decoration-none"   data-toggle="modal" data-target="#foodItemModel" data-fno="${lists.lunch[i].fno}">                              
		                                <div class="row no-gutters">
		                                  <div class="col d-flex justify-content-between">
		                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">${lists.lunch[i].foodName}</h6>
		                                    <p class="text-danger font-weight-bold mb-0">${lists.lunch[i].calorie}cal</p>
		                                  </div>
		                                </div>
		                                <p class="w-xl-75 text-600 mb-4">${lists.lunch[i].summary}</p>
		                              </a>
		                            </c:if>                              
	                            </c:forEach>
                              	<!-- 음식끝 -->                            
                                
                            </div>
                            <!-- Center -->
                            <div class="col-lg-4 border-lg-right border-2x border-300 px-5" id="menu-center" data-zanim-xs='{"animation":"","delay":0.5,"duration":2}'>
                              <c:forEach var="i" begin="1" end="${lists.lunch.size()}" step="3">
                              	<c:if test="${lists.lunch[i] ne null}">
	                              <a class="text-decoration-none"   name="modalData" data-toggle="modal" data-target="#foodItemModel" data-fno="${lists.lunch[i].fno}">                              
	                                <div class="row no-gutters">
	                                  <div class="col d-flex justify-content-between">
	                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">${lists.lunch[i].foodName}</h6>
	                                    <p class="text-danger font-weight-bold mb-0">${lists.lunch[i].calorie}cal</p>
	                                  </div>
	                                </div>
	                                <p class="w-xl-75 text-600 mb-4">${lists.lunch[i].summary}</p>
	                              </a>  
	                             </c:if>
	                           </c:forEach>
                            </div>
                            <!-- Right -->
                            <div class="col-lg-4 px-5" id="menu-right" data-zanim-xs='{"animation":"","delay":0.6,"duration":2}'>
                              <c:forEach var="i" begin="2" end="${lists.lunch.size()}" step="3">
                              	<c:if test="${lists.lunch[i] ne null}">
	                              <a class="text-decoration-none"   data-toggle="modal" data-target="#foodItemModel" data-fno="${lists.lunch[i].fno}">                              
	                                <div class="row no-gutters">
	                                  <div class="col d-flex justify-content-between">
	                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">${lists.lunch[i].foodName}</h6>
	                                    <p class="text-danger font-weight-bold mb-0">${lists.lunch[i].calorie}cal</p>
	                                  </div>
	                                </div>
	                                <p class="w-xl-75 text-600 mb-4">${lists.lunch[i].summary}</p>
	                              </a> 
	                             </c:if>
	                           </c:forEach>
                            </div>
                            <!-- ------------- -->                   
                            
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- 저녁 -->
                    <div class="fancy-tab-content">
                      <div class="row no-gutters overflow-hidden" data-zanim-timeline="{&quot;delay&quot;:0}" data-zanim-trigger="scroll">
                        <div class="col"><img class="position-absolute r-0 rounded-soft" src="/resources/assets/img/food/egg.png" alt="" width="200" data-zanim-xs='{"from":{"x":50,"y":-50,"opacity":0},"to":{"x":0,"y":0,"opacity":1},"delay":0.4,"duration":2}' /><img class="position-absolute b-0 l-0 rounded-soft d-none d-md-block" src="/resources/assets/img/food/bread.png" alt="" width="400" data-zanim-xs='{"animation":"slide-right","delay":0.8,"duration":1}' />
                          <div class="row py-8 rounded-soft no-gutters">
                            <!-- Left -->
                            <div class="col-lg-4 border-lg-right border-2x border-300 px-5" id="menu-left" data-zanim-xs='{"animation":"","delay":0.4,"duration":2}'>                              
	                             <!-- 음식 -->
	                            <c:forEach var="i" begin="0" end="${lists.dinner.size()}" step="3">
	                            <c:if test="${lists.dinner[i] ne null}">
	                              <a class="text-decoration-none"   data-toggle="modal" data-target="#foodItemModel" data-fno="${lists.dinner[i].fno}">                              
	                                <div class="row no-gutters">
	                                  <div class="col d-flex justify-content-between">
	                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">${lists.dinner[i].foodName}</h6>
	                                    <p class="text-danger font-weight-bold mb-0">${lists.dinner[i].calorie}cal</p>
	                                  </div>
	                                </div>
	                                <p class="w-xl-75 text-600 mb-4">${lists.dinner[i].summary}</p>
	                              </a> 
	                             </c:if>
	                            </c:forEach>
                              	<!-- 음식끝 -->                            
                                
                            </div>
                            <!-- Center -->
                            <div class="col-lg-4 border-lg-right border-2x border-300 px-5" id="menu-center" data-zanim-xs='{"animation":"","delay":0.5,"duration":2}'>
                              <c:forEach var="i" begin="1" end="${lists.dinner.size()}" step="3">
                    	        <c:if test="${lists.dinner[i] ne null}">
	                              <a class="text-decoration-none"   name="modalData" data-toggle="modal" data-target="#foodItemModel" data-fno="${lists.dinner[i].fno}">                              
	                                <div class="row no-gutters">
	                                  <div class="col d-flex justify-content-between">
	                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">${lists.dinner[i].foodName}</h6>
	                                    <p class="text-danger font-weight-bold mb-0">${lists.dinner[i].calorie}cal</p>
	                                  </div>
	                                </div>
	                                <p class="w-xl-75 text-600 mb-4">${lists.dinner[i].summary}</p>
	                              </a>  
	                             </c:if>
	                            </c:forEach>
                            </div>
                            <!-- Right -->
                            <div class="col-lg-4 px-5" id="menu-right" data-zanim-xs='{"animation":"","delay":0.6,"duration":2}'>
                              <c:forEach var="i" begin="2" end="${lists.dinner.size()}" step="3">
                              	<c:if test="${lists.dinner[i] ne null}">
	                              <a class="text-decoration-none"   data-toggle="modal" data-target="#foodItemModel" data-fno="${lists.dinner[i].fno}">                              
	                                <div class="row no-gutters">
	                                  <div class="col d-flex justify-content-between">
	                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">${lists.dinner[i].foodName}</h6>
	                                    <p class="text-danger font-weight-bold mb-0">${lists.dinner[i].calorie}cal</p>
	                                  </div>
	                                </div>
	                                <p class="w-xl-75 text-600 mb-4">${lists.dinner[i].summary}</p>
	                              </a> 
	                             </c:if> 
	                            </c:forEach>
                            </div>
                            <!-- ------------- -->                            
                            
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- 저녁메뉴 끝-->
                    
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

      <!-- 메뉴 팝업 -->	
      <div class="modal fade" id="foodItemModel" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content border-0">
            <div class="modal-body">
              <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">Ã</span></button>
              <div class="row">
                <div class="border border-primary border-2x ml-5 rounded-soft"></div>
                <div class="col-10">
                  <p class="fs-2 font-weight-bold text-uppercase lh-3 mt-3"><!-- 레시피이름 --></p>
                  
                  <h6><!-- 칼로리 --></h6>
                </div>
              </div>
              <div class="row mt-4">
                <div class="col-md-8 col-7 pl-0"><img class="img-fluid"  alt="" style="margin-left: -1px" /></div>
                <div class="col-md-4 col-5 border-left border-200 border-2x h-50">
                  <ul class="list-unstyled text-500" id="materials">  
                  	<!-- 재료 -->                 
                  
                  </ul>
                </div>
              </div>
              <div class="row justify-content-center bg-light">
                <div class="col-10 pt-3">
                  
                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">조리법</h6>
						<ol id="recipes">
							<!-- 재료 하나씩 li에 작성 -->
							
						</ol>	
                </div>
              </div>
              <div class="modal-footer justify-content-center">
                <button class="btn btn-primary btn-block text-center" type="button">order online</button>
              </div>
            </div>
          </div>
        </div>
      </div>
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
  	$(document).ready(function() {
  		$("#foodItemModel").on("show.bs.modal", function(e) {			
			var fno = $(e.relatedTarget).data("fno");
			var modal = $(this);			
	  		
			$.ajax({
				url : "/food/foodView?fno=" + fno,
				type:"get",
				dataType:"json",
				success:function(food){					
					modal.find("h6").each(function(i, item) {						
						if(i == 0){							
							$(item).text(food.calorie + "cal");
						}
					});
					var str1 = "";
					var str2 = "";
					
					modal.find("p").html(food.foodName);
					modal.find("img").attr("src", "/upload/food/" + food.fileName);
					
					for(let i=0; i<food.materials.length;i++){						
						str1 += "<li>" + food.materials[i] + "</li>";						
					}					
					modal.find("ul").html(str1);					
					
					for(let i=0; i<food.recipes.length;i++){
						str2 += "<li>" + food.recipes[i] + "</li>";										
					}	
					modal.find("ol").html(str2);
				}
			});
		})
		
	});
  </script>

</html>