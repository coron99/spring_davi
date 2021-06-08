<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<!-- main 태그 바로 밑  -->
 <!-- ============================================-->
<!-- <section> begin 까지============================-->
	   <!-- Preloader ==================================-->
      <div class="preloader p-0" id="preloader">
        <div class="loader d-flex flex-column align-items-center"><img src="/resources/assets/img/illustrations/egg.gif" alt="" /></div>
      </div>
      <!-- ============================================-->
      <!-- End of Preloader ===========================--><a class="bottom-to-top rounded-soft" href="#top" data-fancyscroll><span class="fas fa-angle-up lg" data-fa-transform="down-2"></span></a>	  
      <!--+navbar.navbar-expand-md.navbar-dark.bg-dark.sticky-top.font-weight-semi-bold.fs--1-->
	  <nav class="navbar navbar-expand-lg navbar-dark bg-black fixed-top">
        <div class="container"><a class="navbar-brand" href="/home"><i>DAVI</i></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
              
             
              <li class="nav-item"><a class="nav-link pr-4" href="/report/reportView" data-fancyscroll="data-fancyscroll">보고서</a></li>
              <li class="nav-item"><a class="nav-link pr-4" href="/food/foods" data-fancyscroll="data-fancyscroll">식단</a></li>
              <li class="nav-item"><a class="nav-link pr-4" href="/board/free/list" data-fancyscroll="data-fancyscroll">자유게시판</a></li>
              <li class="nav-item"><a class="nav-link pr-4" href="/sns/list" data-fancyscroll="data-fancyscroll">SNS게시판</a></li>
              
             
            </ul>
            <ul class="navbar-nav ml-auto my-3 my-lg-0">
              <li class="nav-item">
              <c:if test="${sessionId ne null}">
                <button class="btn btn-outline-primary" type="button" onclick="location.href='/member/logout'"><span class="d-xl-inline">로그아웃</button>              	
              </c:if>
              <c:if test="${sessionId eq null}">
                <button class="btn btn-outline-primary" type="button" data-toggle="modal" data-target="#reservation1"><span class="d-xl-inline">로그인</button>
                <button class="btn btn-outline-primary" type="button" data-toggle="modal" data-target="#reservation"><span class="d-xl-inline">회원가입</button>
              </c:if>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="modal fade" id="reservation" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content border-0">
            <div class="bg-holder rounded-soft" style="background-image:url(/resources/assets/img/food/pngfind.png);background-size:40%;background-position:top right; transform:none;">
            </div>
            <!--/.bg-holder-->

			<!-- 회원가입 모달창 -->	
            <form class="zform modal-body pb-0" method="post" action="/member/join">
              <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">Ã</span></button>
              <div class="row">
                <div class="border border-primary border-2x ml-5 rounded-soft"></div>
                <div class="col-8">
                  <h5 class="font-weight-bold mt-2">Join<br>Davi Join</h5>
                </div>
              </div>
              <div class="row mt-4 ml-3 form-group">
                 <div class="col-lg-6 mb-3 mb-lg-0">
                  <input class="form-control" type="text" placeholder="id" name="memberId">
                </div>
                 <div class="col-lg-6 mb-3 mb-lg-0">
                  <input class="form-control" type="password" placeholder="password" name="password">
                </div>
              </div>
              <div class="row form-group ml-3">
                <div class="col-lg-6 mb-3 mb-lg-0">
                  <input class="form-control" type="text" placeholder="phone" name="phone">
                </div>
                <div class="col-lg-6">
                  <input class="form-control" type="tel" placeholder="height" name="height">
                </div>
              </div>
              <div class="row form-group ml-3">
                <div class="col-lg-6 mb-3 mb-lg-0">
                  <input class="form-control" type="text" placeholder="weight" name="weight">
                </div>
                <div class="col-lg-6">
                  <input class="form-control" type="text" placeholder="goal weight" name="goalWeight">
                </div>
              </div>
              <div class="row form-group ml-3">
                <div class="col">
                  <input class="form-control" type="email" placeholder="email" name="email">
                </div>
              </div>
              <div class="row form-group ml-3">
                <div class="col">
                  <input class="form-control" type="text" placeholder="resolution" name="resolution">
                </div>
              </div>
              <div class="row justify-content-center bg-primary rounded-bottom" style="margin-left:-17px;margin-right:-17px;margin-bottom:-1px">
                <div class="col-10 pt-3 pb-4">
                  <p class="text-900">회원가입</p>
                  <input class="btn btn-light btn-block text-center mt-2" type="submit" value="Join">
                </div>
              </div>
              <div class="zform-feedback"></div>
            </form>
            
            
          </div>
        </div>
      </div>
      
      
      <!--로그인 -->
      <div class="modal fade" id="reservation1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content border-0">
            <div class="bg-holder rounded-soft" style="background-image:url(/resources/assets/img/food/pngfind.png);background-size:40%;background-position:top right; transform:none;">
            </div>
            <!--/.bg-holder-->

			
            <form class="zform modal-body pb-0" method="post" action="/member/login">
              <button class="close" type="button" data-dismiss="modal" aria-label="Close">X</button>
              
              <div class="row">
                <div class="border border-primary border-2x ml-5 rounded-soft"></div>
                <div class="col-8">
                  <h5 class="font-weight-bold mt-2">Log In<br>&nbsp;</h5>
                </div>
              </div>
             
              <div class="row mt-4 ml-3 form-group">
                 
              </div>
             
              <div class="row form-group ml-3">
                <div class="col">
                  <input class="form-control" type="text" placeholder="id" name="memberId">
                </div>
              </div>
              
              
              
              <div class="row form-group ml-3">
                <div class="col">
                  <input class="form-control" type="password" placeholder="password" name="password">
                </div>
              </div>
              
              
              <div class="row justify-content-center bg-primary rounded-bottom" style="margin-left:-17px;margin-right:-17px;margin-bottom:-1px">
                <div class="col-10 pt-3 pb-4">
                  <p class="text-900">login</p>
                  <input class="btn btn-light btn-block text-center mt-2" type="submit" value="Login">
                </div>
              </div>
              <div class="zform-feedback"></div>
            </form>
            
            
          </div>
        </div>
      </div>
</body>

</html>