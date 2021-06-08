<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">

<head>
   <title>Quantum Able Bootstrap 4 Admin Dashboard Template</title>
   <!-- HTML5 Shim and Respond.js IE9 support of HTML5 elements and media queries -->
   <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
   <!--[if lt IE 9]>
     <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
     <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
     <![endif]-->

   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
   <!-- Favicon icon -->
   <link rel="shortcut icon" href="/resources/reportAssets/images/favicon.png" type="image/x-icon">
   <link rel="icon" href="/resources/reportAssets/images/favicon.ico" type="image/x-icon">

   <!-- Google font-->
   <link href="https://fonts.googleapis.com/css?family=Ubuntu:400,500,700" rel="stylesheet">

   <!-- themify -->
   <link rel="stylesheet" type="text/css" href="/resources/reportAssets/icon/themify-icons/themify-icons.css">

   <!-- iconfont -->
   <link rel="stylesheet" type="text/css" href="/resources/reportAssets/icon/icofont/css/icofont.css">

   <!-- simple line icon -->
   <link rel="stylesheet" type="text/css" href="/resources/reportAssets/icon/simple-line-icons/css/simple-line-icons.css">

   <!-- Required Fremwork -->
   <link rel="stylesheet" type="text/css" href="/resources/reportAssets/plugins/bootstrap/css/bootstrap.min.css">

   <!-- Chartlist chart css -->
   <link rel="stylesheet" href="/resources/reportAssets/plugins/chartist/dist/chartist.css" type="text/css" media="all">

   <!-- Weather css -->
   <link href="/resources/reportAssets/css/svg-weather.css" rel="stylesheet">


   <!-- Style.css -->
   <link rel="stylesheet" type="text/css" href="/resources/reportAssets/css/main.css">

   <!-- Responsive.css-->
   <link rel="stylesheet" type="text/css" href="/resources/reportAssets/css/responsive.css">
   
   <style>
   
   </style>

</head>

<body class="sidebar-mini fixed">
   <div class="loader-bg">
      <div class="loader-bar">
      </div>
   </div>
   <div class="wrapper">
      <!-- Sidebar chat end-->
      <c:choose>
      <c:when test="${check eq 'check'}">
      	<div style="width:100%; height:100vh; display:flex; justify-content:center; align-items:center;">
	      	<div style="padding:3rem;">
	      		<form action="/report/insert" onsubmit="return submitCheck()" method="get">
	      			<h3>오늘의 몸무게를 입력하세요</h3>
	      			<h6 style="color:red; font-weight:bold;">다 입력 후 엔터를 눌러주세요</h6>
	      			<input type="text" id="weight" name="weight" style="margin-top:0.5rem; width:100%;">
	      			<input type="hidden" name="memberId" value="${sessionId}">
	      			<p id="notice" style="color:red; font-weight:bold; margin-top:0.3rem; display:none;">잘못된 입력입니다.</p>
	      		</form>
	      	</div>
      	</div>
      </c:when>
      <c:otherwise>
      <div class="content-wrapper" style="margin:0 10%;">
         <!-- Container-fluid starts -->
         <!-- Main content starts -->
         <div class="container-fluid">
            <div class="row">
               <div class="main-header">
                  <h3>DAVI Report</h3>
               </div>
            </div>
            <!-- 4-blocks row start -->
            <div class="row dashboard-header">
               <div class="col-lg-3 col-md-6">
                  <div class="card dashboard-product">
                     <span>Height</span>
                     <h2 class="dashboard-total-products">${memberVO.height}cm</h2>
                     <span class="label label-warning">DAVI</span> ${bodyVO.regDate}
                     <div class="side-box">
                        <i class="ti-signal text-warning-color"></i>
                     </div>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6">
                  <div class="card dashboard-product">
                     <span>Weight</span>
                     <h2 class="dashboard-total-products">${bodyVO.weight}kg</h2>
                     <span class="label label-primary">DAVI</span> ${bodyVO.regDate}
                     <div class="side-box ">
                        <i class="ti-gift text-primary-color"></i>
                     </div>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6">
                  <div class="card dashboard-product">
                     <span>BMI</span>
                     <h2 class="dashboard-total-products"><span>${bmi}</span></h2>
                     <span class="label label-success">DAVI</span> ${bodyVO.regDate}
                     <div class="side-box">
                        <i class="ti-direction-alt text-success-color"></i>
                     </div>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6">
                  <div class="card dashboard-product">
                     <span>Amount of Change</span>
                     <h2 class="dashboard-total-products"><span>${bodyVO.rate}kg</span></h2>
                     <span class="label label-danger">DAVI</span> ${bodyVO.regDate}
                     <div class="side-box">
                        <i class="ti-rocket text-danger-color"></i>
                     </div>
                  </div>
               </div>
            </div>
            <!-- 4-blocks row end -->

            <!-- 1-3-block row start -->
            <div class="row">
               <div class="col-lg-4">
                  <div class="card">
                     <div class="user-block-2">
                        <img class="img-fluid" 
                        src="https://cdn.discordapp.com/attachments/821644547493986328/849944299058757642/kakao_1.png" 
                        alt="user-header" style="width:50%;">
                        <h5>${memberVO.memberId}</h5>
                     </div>
                     <div class="card-block">
                        <div class="user-block-2-activities">
                           <div class="user-block-2-active">
                              phone:
                              <span style="margin-left:0.5rem; font-weight:bold;">${memberVO.phone}</span>
                           </div>
                        </div>
                        <div class="user-block-2-activities">
                           <div class="user-block-2-active">
                              email:
                              <span style="margin-left:0.5rem; font-weight:bold;">${memberVO.email}</span>
                           </div>
                        </div>

                        <div class="user-block-2-activities">
                           <div class="user-block-2-active">
                              goal weight: 
                              <span style="margin-left:0.5rem; font-weight:bold;">${memberVO.goalWeight}kg</span>
                           </div>

                        </div>
                        <div class="user-block-2-activities">
                           <div class="user-block-2-active">
                              resolution:
                              <span style="margin-left:0.5rem; font-weight:bold;">${memberVO.resolution}</span>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-lg-8">
                  <div class="card">
                     <div class="card-header">
                        <h5 class="card-header-text">Bar chart</h5>
                     </div>
                     <div class="card-block">
                        <div id="barchart" style="min-width: 250px; height: 330px; margin: 0 auto"></div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- 1-3-block row end -->

            <!-- 2-1 block start -->
            <div class="row">
               <div class="col-xl-8 col-lg-12">
                  <div class="card">
                     <div class="card-block">
                        <div class="table-responsive">
                           <table class="table m-b-0 photo-table">
                              <thead>
                                 <tr class="text-uppercase">
                                    <th>RANKING</th>
                                    <th>NICKNAME</th>
                                    <th>STATUS</th>
                                    <th>Date</th>
                                 </tr>
                              </thead>
                              <tbody>
                              	<c:set var="ranking" value="${0}" />
                                 <c:forEach var="vo" items="${rankingList}">
                                 	<c:set var="ranking" value="${ranking + 1}" />
                                 	<tr>
                                    <td>${ranking}위</td>
                                    <td>${vo.memberId} </td>
                                    <td>${vo.status}%</td>
                                    <td>${vo.regDate}</td>
                                 </tr>
                                 </c:forEach>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-xl-4 col-lg-12">
                  <div class="card">
                     <div class="card-header">
                        <h5 class="card-header-text">Bar chart</h5>
                     </div>
                     <div class="card-block">
                        <div id="piechart" style="min-width: 250px; height: 460px; margin: 0 auto"></div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- 2-1 block end -->
         </div>
         <!-- Main content ends -->
         <!-- Container-fluid ends -->
         <div class="fixed-button">
            <a href="/home" class="btn btn-md btn-primary">
              <i class="fa fa-shopping-cart" aria-hidden="true"></i> go Home
            </a>
         </div>
      </div>
      </c:otherwise>
      </c:choose>
   </div>



   <!-- Required Jqurey -->
   <script src="/resources/reportAssets/plugins/Jquery/dist/jquery.min.js"></script>
   <script src="/resources/reportAssets/plugins/jquery-ui/jquery-ui.min.js"></script>
   <script src="/resources/reportAssets/plugins/tether/dist/js/tether.min.js"></script>

   <!-- Required Fremwork -->
   <script src="/resources/reportAssets/plugins/bootstrap/js/bootstrap.min.js"></script>

   <!-- Scrollbar JS-->
   <script src="/resources/reportAssets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
   <script src="/resources/reportAssets/plugins/jquery.nicescroll/jquery.nicescroll.min.js"></script>

   <!--classic JS-->
   <script src="/resources/reportAssets/plugins/classie/classie.js"></script>

   <!-- notification -->
   <script src="/resources/reportAssets/plugins/notification/js/bootstrap-growl.min.js"></script>

   <!-- Sparkline charts -->
   <script src="/resources/reportAssets/plugins/jquery-sparkline/dist/jquery.sparkline.js"></script>

   <!-- Counter js  -->
   <script src="/resources/reportAssets/plugins/waypoints/jquery.waypoints.min.js"></script>
   <script src="/resources/reportAssets/plugins/countdown/js/jquery.counterup.js"></script>

   <!-- Echart js -->
   <script src="/resources/reportAssets/plugins/charts/echarts/js/echarts-all.js"></script>

   <script src="https://code.highcharts.com/highcharts.js"></script>
   <script src="https://code.highcharts.com/modules/exporting.js"></script>
   <script src="https://code.highcharts.com/highcharts-3d.js"></script>

   <!-- custom js -->
   <script type="text/javascript" src="/resources/reportAssets/js/main.min.js"></script>
   <script type="text/javascript" src="/resources/reportAssets/pages/dashboard.js"></script>
   <script type="text/javascript" src="/resources/reportAssets/pages/elements.js"></script>
   <script src="/resources/reportAssets/js/menu.min.js"></script>
<script>
var $window = $(window);
var nav = $('.fixed-button');
$window.scroll(function(){
    if ($window.scrollTop() >= 200) {
       nav.addClass('active');
    }
    else {
       nav.removeClass('active');
    }
});

var check = false;
$("#weight").keyup(function() {
	//소수점 정규식
	 let regExp =/^(\d{1,3}([.]\d{0,2})?)?$/; 
	
	if(regExp.test($(this).val())){
		$("#notice").hide();
		check = true;
		
	}else{
		$("#notice").show();
		check = false;
	}
});

function submitCheck(){
	return check;
}
</script>

</body>

</html>