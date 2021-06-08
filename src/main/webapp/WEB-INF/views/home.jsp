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
      <c:import url="head.jsp" />
      
      <section class="py-0">
        <div class="bg-holder d-none d-lg-block" style="background-image:url(/resources/assets/img/food/Vector.png);background-position:left;background-size:35%; transform:none;" data-zanim-xs='{"from":{"x":"-20%","opacity":0},"to":{"x":"0%","opacity":1},"delay":0,"ease":"Power0.easeOut"}'>
        </div>
        <!--/.bg-holder-->

        <div class="row align-items-md-center min-vh-100 no-gutters overflow-hidden" data-zanim-timeline="{&quot;delay&quot;:0}" data-zanim-trigger="scroll">
          <div class="col-md-7 col-lg-6 col-xl-5 col-xxl-4 mt-6 mt-md-0 text-center text-md-left offset-lg-1 order-md-1 px-3 pt-6">
            <div class="overflow-hidden">
              <h1 class="font-weight-light fs-xl-4 fs-sm-3 fs-1" data-zanim-xs='{"animation":"default","delay":0.5,"duration":1.5}'>The Spectacle <span class="font-weight-black">Before Us<br/>Was Indeed </span>Sublime.</h1>
            </div>
            <div class="overflow-hidden">
              <p class="d-none d-md-block" data-zanim-xs='{"animation":"default","delay":0.6,"duration":1.5}'>Apparently, we had reached a great height in the atmosphere, for the sky was a dead black, and which lifts the horizon of the sea to the level of the spectator on a hillside.</p>
            </div>
            <div class="overflow-hidden">
              <button class="btn btn-primary rounded mt-3 mr-3" data-zanim-xs='{"animation":"default","delay":0.7,"duration":1.5}'>Order <span class="d-none d-lg-inline">online</span></button><a class="btn btn-outline-primary mt-3" href="#contact" data-fancyscroll="data-fancyscroll" data-offset="90" data-zanim-xs='{"animation":"default","delay":0.7,"duration":1.5}'><span class="d-none d-lg-inline">our </span>location</a>
            </div>
          </div>
          <div class="col-md col-lg-4 mt-4 mt-sm-0 overflow-hidden">
            <div class="ml-md-6" data-zanim-xs='{"from":{"x":"-100%","opacity":0},"to":{"x":"0%","opacity":1},"delay":0.5,"ease":"Power0.easeOut"}'><img class="img-fluid" src="/resources/assets/img/food/plate.png" alt="" data-zanim-xs='{"from":{"rotation":0},"to":{"rotation":60},"ease":"Power0.easeOut","delay":0.5}' /></div>
          </div>
        </div>
      </section>

      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section id="menu">

        <div class="container">
          <div class="row mb-6" data-zanim-timeline="{&quot;delay&quot;:0}" data-zanim-trigger="scroll">
            <div class="col text-center">
              <div class="overflow-hidden">
                <p class="fs-2 text-1000 mb-1 font-weight-bold" data-zanim-xs='{"animation":"","delay":0,"duration":1}'>Menu</p>
                <h2 class="fs-3 fs-sm-4 font-weight-bold" data-zanim-xs='{"animation":"","delay":0.1,"duration":1}'>Taste Our Foods &amp; Enjoy</h2>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col">
              <div class="owl-carousel owl-theme owl-hvr-nav" data-options='{"margin":10,"autoplay":true,"dots":false,"loop":true,"responsive":{"0":{"items":1,"nav":false},"767":{"items":2,"nav":true},"992":{"items":4,"nav":true}}}'>
                <div class="hoverbox"><img class="rounded-soft" src="/resources/assets/img/food/bowl-delicious-dinner.png" alt=" " />
                  <div class="hoverbox-content hoverbox-content-gradient justify-content-center align-items-center rounded-soft">
                    <div class="lh-3">
                      <p class="font-weight-bold fs-2 mb-0 text-uppercase text-white mt-10 lh-3">Spicy Chicken <br> spaghetti</p>
                      <p class="text-white">Served with green chillies</p>
                    </div>
                  </div>
                </div>
                <div class="hoverbox"><img class="rounded-soft" src="/resources/assets/img/food/bread-bun-chopping-board.png" alt=" " />
                  <div class="hoverbox-content hoverbox-content-gradient justify-content-center align-items-center rounded-soft">
                    <div class="lh-3">
                      <p class="font-weight-bold fs-2 mb-0 text-uppercase text-white mt-10 lh-3">Smoked beef <br> sub-sandwitch</p>
                      <p class="text-white">Slow cooked beef sub</p>
                    </div>
                  </div>
                </div>
                <div class="hoverbox"><img class="rounded-soft" src="/resources/assets/img/food/antioxidant-beverage-carrot-juice.png" alt=" " />
                  <div class="hoverbox-content hoverbox-content-gradient justify-content-center align-items-center rounded-soft">
                    <div class="lh-3">
                      <p class="font-weight-bold fs-2 mb-0 text-uppercase text-white mt-10 lh-3">Pumpkin Spice <br> Juice</p>
                      <p class="text-white">Chilled drink with cinamen</p>
                    </div>
                  </div>
                </div>
                <div class="hoverbox"><img class="rounded-soft" src="/resources/assets/img/food/sec.jpg" alt=" " />
                  <div class="hoverbox-content hoverbox-content-gradient justify-content-center align-items-center rounded-soft">
                    <div class="lh-3">
                      <p class="font-weight-bold fs-2 mb-0 text-uppercase text-white mt-10 lh-3">Cold milk shake <br> juice</p>
                      <p class="text-white">With fresh milk</p>
                    </div>
                  </div>
                </div>
                <div class="hoverbox"><img class="rounded-soft" src="/resources/assets/img/food/bowl-calcium-cereal.png" alt=" " />
                  <div class="hoverbox-content hoverbox-content-gradient justify-content-center align-items-center rounded-soft">
                    <div class="lh-3">
                      <p class="font-weight-bold fs-2 mb-0 text-uppercase text-white mt-10 lh-3">Blueberry milk <br> smoothie</p>
                      <p class="text-white">With fresh Papermint</p>
                    </div>
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
                    <div class="fancy-bar-item"><span class="fas fa-birthday-cake"></span><span class="d-none mt-1 d-lg-block">Desserts</span></div>
                    <div class="fancy-bar-item"><span class="fas fa-glass-cheers"></span><span class="d-none mt-1 d-lg-block">Drinks</span></div>
                  </div>
                  <div class="fancy-tab-contents bg-light rounded-soft">
                    <div class="fancy-tab-content active">
                      <div class="row no-gutters overflow-hidden" data-zanim-timeline="{&quot;delay&quot;:0}" data-zanim-trigger="scroll">
                        <div class="col"><img class="position-absolute r-0 rounded-soft" src="/resources/assets/img/food/egg.png" alt="" width="200" data-zanim-xs='{"from":{"x":50,"y":-50,"opacity":0},"to":{"x":0,"y":0,"opacity":1},"delay":0.4,"duration":2}' /><img class="position-absolute b-0 l-0 rounded-soft d-none d-md-block" src="/resources/assets/img/food/bread.png" alt="" width="400" data-zanim-xs='{"animation":"slide-right","delay":0.8,"duration":1}' />
                          <div class="row py-8 rounded-soft no-gutters">
                            <div class="col-lg-4 border-lg-right border-2x border-300 px-5" data-zanim-xs='{"animation":"","delay":0.4,"duration":2}'><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">Breakfast Bowl</h6>
                                    <p class="text-danger font-weight-bold mb-0">$8.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Black Bean Cake, Greens, Tomato &amp; Avocado Pico drizzled with Lime Cream (Add egg $1)</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">EGG SANDWICH</h6>
                                    <p class="text-danger font-weight-bold mb-0">$7.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Everything Bagel with Cream Cheese, Bacon, Tomato, Red Onion, Basil Pesto, Arugula</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BREAKFAST BURRITO</h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Three Scrambled Eggs, Cheddar, our Housemade Black Bean Cake, Avocado, Pico, &amp; Lime Cream</p>
                              </a>
                            </div>
                            <div class="col-lg-4 border-lg-right border-2x border-300 px-5" data-zanim-xs='{"animation":"","delay":0.5,"duration":2}'><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">VEGGIE JAMMIE</h6>
                                    <p class="text-danger font-weight-bold mb-0">$5.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Everything Bagel with our Homemade Tofu Herb Spread, Cucumber Tomato, Red Onion, &amp; Arugula</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BAGEL WITH CREAM CHEESE</h6>
                                    <p class="text-danger font-weight-bold mb-0">$6.00</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Plain, Cranberry, or Everything</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BREAKFAST PASTRIES</h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.00</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Three Scrambled Eggs, Cheddar, our Housemade Black Bean Cake, Avocado, Pico, &amp; Lime Cream</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">Fried egg</h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Three Fried Eggs, house hot sauce, local cheddar mac, lettuce, pickle &amp; onion on a sesame roll</p>
                              </a>
                            </div>
                            <div class="col-lg-4 px-5" data-zanim-xs='{"animation":"","delay":0.6,"duration":2}'><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">SMOKED SALMON BAGEL </h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Smoked Salmon, Capers, House Pickled Red Onions, &amp; Cream Cheese served on a Toasted Bagel</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BREAKFAST JAMMIE </h6>
                                    <p class="text-danger font-weight-bold mb-0">$6.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Everything Bagel with Cream Cheese, Bacon, Tomato, Red Onion, Basil Pesto, Arugula</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">AVOCADO TOAST</h6>
                                    <p class="text-danger font-weight-bold mb-0">$7.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Crushed Avocado topped with MV Sea Salt on Toasted Multigrain</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">AVOCADO TOAST</h6>
                                    <p class="text-danger font-weight-bold mb-0">$6.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Crushed Avocado topped with MV Sea Salt on Toasted Multigrain</p>
                              </a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="fancy-tab-content">
                      <div class="row no-gutters overflow-hidden" data-zanim-timeline="{&quot;delay&quot;:0}" data-zanim-trigger="scroll">
                        <div class="col"><img class="position-absolute r-0 rounded-soft" src="/resources/assets/img/food/egg.png" alt="" width="200" data-zanim-xs='{"from":{"x":50,"y":-50,"opacity":0},"to":{"x":0,"y":0,"opacity":1},"delay":0.4,"duration":2}' /><img class="position-absolute b-0 l-0 rounded-soft d-none d-md-block" src="/resources/assets/img/food/bread.png" alt="" width="400" data-zanim-xs='{"animation":"slide-right","delay":0.8,"duration":1}' />
                          <div class="row py-8 rounded-soft no-gutters">
                            <div class="col-lg-4 border-lg-right border-2x border-300 px-5" data-zanim-xs='{"animation":"","delay":0.4,"duration":2}'><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">Breakfast Bowl</h6>
                                    <p class="text-danger font-weight-bold mb-0">$8.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Black Bean Cake, Greens, Tomato &amp; Avocado Pico drizzled with Lime Cream (Add egg $1)</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">EGG SANDWICH</h6>
                                    <p class="text-danger font-weight-bold mb-0">$7.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Everything Bagel with Cream Cheese, Bacon, Tomato, Red Onion, Basil Pesto, Arugula</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BREAKFAST BURRITO</h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Three Scrambled Eggs, Cheddar, our Housemade Black Bean Cake, Avocado, Pico, &amp; Lime Cream</p>
                              </a>
                            </div>
                            <div class="col-lg-4 border-lg-right border-2x border-300 px-5" data-zanim-xs='{"animation":"","delay":0.5,"duration":2}'><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">VEGGIE JAMMIE</h6>
                                    <p class="text-danger font-weight-bold mb-0">$5.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Everything Bagel with our Homemade Tofu Herb Spread, Cucumber Tomato, Red Onion, &amp; Arugula</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BAGEL WITH CREAM CHEESE</h6>
                                    <p class="text-danger font-weight-bold mb-0">$6.00</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Plain, Cranberry, or Everything</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BREAKFAST PASTRIES</h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.00</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Three Scrambled Eggs, Cheddar, our Housemade Black Bean Cake, Avocado, Pico, &amp; Lime Cream</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">Fried egg</h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Three Fried Eggs, house hot sauce, local cheddar mac, lettuce, pickle &amp; onion on a sesame roll</p>
                              </a>
                            </div>
                            <div class="col-lg-4 px-5" data-zanim-xs='{"animation":"","delay":0.6,"duration":2}'><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">SMOKED SALMON BAGEL </h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Smoked Salmon, Capers, House Pickled Red Onions, &amp; Cream Cheese served on a Toasted Bagel</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BREAKFAST JAMMIE </h6>
                                    <p class="text-danger font-weight-bold mb-0">$6.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Everything Bagel with Cream Cheese, Bacon, Tomato, Red Onion, Basil Pesto, Arugula</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">AVOCADO TOAST</h6>
                                    <p class="text-danger font-weight-bold mb-0">$7.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Crushed Avocado topped with MV Sea Salt on Toasted Multigrain</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">AVOCADO TOAST</h6>
                                    <p class="text-danger font-weight-bold mb-0">$6.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Crushed Avocado topped with MV Sea Salt on Toasted Multigrain</p>
                              </a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="fancy-tab-content">
                      <div class="row no-gutters overflow-hidden" data-zanim-timeline="{&quot;delay&quot;:0}" data-zanim-trigger="scroll">
                        <div class="col"><img class="position-absolute r-0 rounded-soft" src="/resources/assets/img/food/egg.png" alt="" width="200" data-zanim-xs='{"from":{"x":50,"y":-50,"opacity":0},"to":{"x":0,"y":0,"opacity":1},"delay":0.4,"duration":2}' /><img class="position-absolute b-0 l-0 rounded-soft d-none d-md-block" src="/resources/assets/img/food/bread.png" alt="" width="400" data-zanim-xs='{"animation":"slide-right","delay":0.8,"duration":1}' />
                          <div class="row py-8 rounded-soft no-gutters">
                            <div class="col-lg-4 border-lg-right border-2x border-300 px-5" data-zanim-xs='{"animation":"","delay":0.4,"duration":2}'><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">Breakfast Bowl</h6>
                                    <p class="text-danger font-weight-bold mb-0">$8.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Black Bean Cake, Greens, Tomato &amp; Avocado Pico drizzled with Lime Cream (Add egg $1)</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">EGG SANDWICH</h6>
                                    <p class="text-danger font-weight-bold mb-0">$7.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Everything Bagel with Cream Cheese, Bacon, Tomato, Red Onion, Basil Pesto, Arugula</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BREAKFAST BURRITO</h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Three Scrambled Eggs, Cheddar, our Housemade Black Bean Cake, Avocado, Pico, &amp; Lime Cream</p>
                              </a>
                            </div>
                            <div class="col-lg-4 border-lg-right border-2x border-300 px-5" data-zanim-xs='{"animation":"","delay":0.5,"duration":2}'><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">VEGGIE JAMMIE</h6>
                                    <p class="text-danger font-weight-bold mb-0">$5.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Everything Bagel with our Homemade Tofu Herb Spread, Cucumber Tomato, Red Onion, &amp; Arugula</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BAGEL WITH CREAM CHEESE</h6>
                                    <p class="text-danger font-weight-bold mb-0">$6.00</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Plain, Cranberry, or Everything</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BREAKFAST PASTRIES</h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.00</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Three Scrambled Eggs, Cheddar, our Housemade Black Bean Cake, Avocado, Pico, &amp; Lime Cream</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">Fried egg</h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Three Fried Eggs, house hot sauce, local cheddar mac, lettuce, pickle &amp; onion on a sesame roll</p>
                              </a>
                            </div>
                            <div class="col-lg-4 px-5" data-zanim-xs='{"animation":"","delay":0.6,"duration":2}'><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">SMOKED SALMON BAGEL </h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Smoked Salmon, Capers, House Pickled Red Onions, &amp; Cream Cheese served on a Toasted Bagel</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BREAKFAST JAMMIE </h6>
                                    <p class="text-danger font-weight-bold mb-0">$6.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Everything Bagel with Cream Cheese, Bacon, Tomato, Red Onion, Basil Pesto, Arugula</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">AVOCADO TOAST</h6>
                                    <p class="text-danger font-weight-bold mb-0">$7.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Crushed Avocado topped with MV Sea Salt on Toasted Multigrain</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">AVOCADO TOAST</h6>
                                    <p class="text-danger font-weight-bold mb-0">$6.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Crushed Avocado topped with MV Sea Salt on Toasted Multigrain</p>
                              </a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="fancy-tab-content">
                      <div class="row no-gutters overflow-hidden" data-zanim-timeline="{&quot;delay&quot;:0}" data-zanim-trigger="scroll">
                        <div class="col"><img class="position-absolute r-0 rounded-soft" src="/resources/assets/img/food/egg.png" alt="" width="200" data-zanim-xs='{"from":{"x":50,"y":-50,"opacity":0},"to":{"x":0,"y":0,"opacity":1},"delay":0.4,"duration":2}' /><img class="position-absolute b-0 l-0 rounded-soft d-none d-md-block" src="/resources/assets/img/food/bread.png" alt="" width="400" data-zanim-xs='{"animation":"slide-right","delay":0.8,"duration":1}' />
                          <div class="row py-8 rounded-soft no-gutters">
                            <div class="col-lg-4 border-lg-right border-2x border-300 px-5" data-zanim-xs='{"animation":"","delay":0.4,"duration":2}'><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">Breakfast Bowl</h6>
                                    <p class="text-danger font-weight-bold mb-0">$8.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Black Bean Cake, Greens, Tomato &amp; Avocado Pico drizzled with Lime Cream (Add egg $1)</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">EGG SANDWICH</h6>
                                    <p class="text-danger font-weight-bold mb-0">$7.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Everything Bagel with Cream Cheese, Bacon, Tomato, Red Onion, Basil Pesto, Arugula</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BREAKFAST BURRITO</h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Three Scrambled Eggs, Cheddar, our Housemade Black Bean Cake, Avocado, Pico, &amp; Lime Cream</p>
                              </a>
                            </div>
                            <div class="col-lg-4 border-lg-right border-2x border-300 px-5" data-zanim-xs='{"animation":"","delay":0.5,"duration":2}'><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">VEGGIE JAMMIE</h6>
                                    <p class="text-danger font-weight-bold mb-0">$5.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Everything Bagel with our Homemade Tofu Herb Spread, Cucumber Tomato, Red Onion, &amp; Arugula</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BAGEL WITH CREAM CHEESE</h6>
                                    <p class="text-danger font-weight-bold mb-0">$6.00</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Plain, Cranberry, or Everything</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BREAKFAST PASTRIES</h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.00</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Three Scrambled Eggs, Cheddar, our Housemade Black Bean Cake, Avocado, Pico, &amp; Lime Cream</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">Fried egg</h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Three Fried Eggs, house hot sauce, local cheddar mac, lettuce, pickle &amp; onion on a sesame roll</p>
                              </a>
                            </div>
                            <div class="col-lg-4 px-5" data-zanim-xs='{"animation":"","delay":0.6,"duration":2}'><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">SMOKED SALMON BAGEL </h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Smoked Salmon, Capers, House Pickled Red Onions, &amp; Cream Cheese served on a Toasted Bagel</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BREAKFAST JAMMIE </h6>
                                    <p class="text-danger font-weight-bold mb-0">$6.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Everything Bagel with Cream Cheese, Bacon, Tomato, Red Onion, Basil Pesto, Arugula</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">AVOCADO TOAST</h6>
                                    <p class="text-danger font-weight-bold mb-0">$7.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Crushed Avocado topped with MV Sea Salt on Toasted Multigrain</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">AVOCADO TOAST</h6>
                                    <p class="text-danger font-weight-bold mb-0">$6.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Crushed Avocado topped with MV Sea Salt on Toasted Multigrain</p>
                              </a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="fancy-tab-content">
                      <div class="row no-gutters overflow-hidden" data-zanim-timeline="{&quot;delay&quot;:0}" data-zanim-trigger="scroll">
                        <div class="col"><img class="position-absolute r-0 rounded-soft" src="/resources/assets/img/food/egg.png" alt="" width="200" data-zanim-xs='{"from":{"x":50,"y":-50,"opacity":0},"to":{"x":0,"y":0,"opacity":1},"delay":0.4,"duration":2}' /><img class="position-absolute b-0 l-0 rounded-soft d-none d-md-block" src="/resources/assets/img/food/bread.png" alt="" width="400" data-zanim-xs='{"animation":"slide-right","delay":0.8,"duration":1}' />
                          <div class="row py-8 rounded-soft no-gutters">
                            <div class="col-lg-4 border-lg-right border-2x border-300 px-5" data-zanim-xs='{"animation":"","delay":0.4,"duration":2}'><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">Breakfast Bowl</h6>
                                    <p class="text-danger font-weight-bold mb-0">$8.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Black Bean Cake, Greens, Tomato &amp; Avocado Pico drizzled with Lime Cream (Add egg $1)</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">EGG SANDWICH</h6>
                                    <p class="text-danger font-weight-bold mb-0">$7.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Everything Bagel with Cream Cheese, Bacon, Tomato, Red Onion, Basil Pesto, Arugula</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BREAKFAST BURRITO</h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Three Scrambled Eggs, Cheddar, our Housemade Black Bean Cake, Avocado, Pico, &amp; Lime Cream</p>
                              </a>
                            </div>
                            <div class="col-lg-4 border-lg-right border-2x border-300 px-5" data-zanim-xs='{"animation":"","delay":0.5,"duration":2}'><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">VEGGIE JAMMIE</h6>
                                    <p class="text-danger font-weight-bold mb-0">$5.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Everything Bagel with our Homemade Tofu Herb Spread, Cucumber Tomato, Red Onion, &amp; Arugula</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BAGEL WITH CREAM CHEESE</h6>
                                    <p class="text-danger font-weight-bold mb-0">$6.00</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Plain, Cranberry, or Everything</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BREAKFAST PASTRIES</h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.00</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Three Scrambled Eggs, Cheddar, our Housemade Black Bean Cake, Avocado, Pico, &amp; Lime Cream</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">Fried egg</h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Three Fried Eggs, house hot sauce, local cheddar mac, lettuce, pickle &amp; onion on a sesame roll</p>
                              </a>
                            </div>
                            <div class="col-lg-4 px-5" data-zanim-xs='{"animation":"","delay":0.6,"duration":2}'><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">SMOKED SALMON BAGEL </h6>
                                    <p class="text-danger font-weight-bold mb-0">$9.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Smoked Salmon, Capers, House Pickled Red Onions, &amp; Cream Cheese served on a Toasted Bagel</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">BREAKFAST JAMMIE </h6>
                                    <p class="text-danger font-weight-bold mb-0">$6.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Everything Bagel with Cream Cheese, Bacon, Tomato, Red Onion, Basil Pesto, Arugula</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">AVOCADO TOAST</h6>
                                    <p class="text-danger font-weight-bold mb-0">$7.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Crushed Avocado topped with MV Sea Salt on Toasted Multigrain</p>
                              </a><a class="text-decoration-none" href="#" data-toggle="modal" data-target="#foodItemModel">
                                <div class="row no-gutters">
                                  <div class="col d-flex justify-content-between">
                                    <h6 class="fs-0 font-weight-bold text-uppercase text-black mr-4">AVOCADO TOAST</h6>
                                    <p class="text-danger font-weight-bold mb-0">$6.50</p>
                                  </div>
                                </div>
                                <p class="w-xl-75 text-600 mb-4">Crushed Avocado topped with MV Sea Salt on Toasted Multigrain</p>
                              </a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
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


      <div class="modal fade" id="foodItemModel" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content border-0">
            <div class="modal-body">
              <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">Ã</span></button>
              <div class="row">
                <div class="border border-primary border-2x ml-5 rounded-soft"></div>
                <div class="col-10">
                  <p class="fs-2 font-weight-bold text-uppercase lh-3 mt-3">Bagel with<br />Cream Cheese</p>
                </div>
              </div>
              <div class="row mt-4">
                <div class="col-md-8 col-7 pl-0"><img class="img-fluid" src="/resources/assets/img/food/silo-bagel.png" alt="" style="margin-left: -1px" /></div>
                <div class="col-md-4 col-5 border-left border-200 border-2x h-50">
                  <ul class="list-unstyled text-500">
                    <li>Bagel</li>
                    <li>Cream Cheese</li>
                    <li>Dusted Sugar</li>
                  </ul>
                </div>
              </div>
              <div class="row justify-content-center bg-light">
                <div class="col-10 pt-3">
                  <p>A bagel and cream cheese (also known as bagel with cream cheese) is a common food pairing in American cuisine, consisting in its basic form of an open-faced sandwich.</p>
                </div>
              </div>
              <div class="modal-footer justify-content-center">
                <button class="btn btn-primary btn-block text-center" type="button">order online</button>
              </div>
            </div>
          </div>
        </div>
      </div>


      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="pb-0 pt-7 bg-dark" data-zanim-timeline='{"delay":0}' data-zanim-trigger="scroll">

        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-3 px-xxl-5 col-5 d-none d-md-block order-md-1 order-lg-0">
              <div class="overflow-hidden"><img class="position-absolute b-0" src="/resources/assets/img/food/fried-clipart-transparent-background-7.png" alt="" height="350" data-zanim-xs='{"animation":"","from":{"y":100},"to":{"y":0},"delay":0,"duration":1.5}' /></div>
            </div>
            <div class="col-lg-4 col-md-6 pb-7 ml-xl-4 ml-lg-6 text-center text-md-left">
              <P class="text-primary mb-1 font-weight-bold">Hungry?</P>
              <h4 class="text-white">We will home deliver !</h4>
              <button class="btn btn-primary mt-3" type="button">Make an order</button>
            </div>
          </div>
        </div>
        <!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->


      <!--catering....................................-->


      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="bg-light">

        <div class="container">
          <!--.row.flex-center.text-center
          .col-auto
            +sectionHeader({
              sub: 'Catering',
              head: 'We Manage Your Events'
            })
          -->
          <div class="row flex-center" data-zanim-timeline="{&quot;delay&quot;:0}" data-zanim-trigger="scroll"><img class="position-absolute l-0 d-none d-xxl-block" src="/resources/assets/img/food/cateringillustration.png" width="600" alt="" data-zanim-xs='{"animation":"zoom-out-slide-right","delay":0.3,"duration":2}' />
            <div class="col-xl-8 col-xxl-5 col-lg-10 text-center ml-xxl-auto">
              <div class="overflow-hidden">
                <p class="fs-2 text-1000 mb-1 font-weight-bold" data-zanim-xs='{"animation":"","delay":0,"duration":1}'>Catering</p>
                <h2 class="fs-3 fs-sm-4 font-weight-bold" data-zanim-xs='{"animation":"","delay":0.1,"duration":1}'>We Manage Your Events</h2>
              </div>
              <p class="mt-4" data-zanim-xs='{"animation":"zoom-in","delay":0.2,"duration":2}'>Allow our Chef to deliver the perfect private dinner or cocktail party experience in your home; or let us simply add a little extra flavor to your next office meeting, boat trip, or beach picnic. By partnering with our sibling location Rosewater Wine & Spirits, we can offer a full array of bar services and beverage selections. Email us to learn more.</p>
            </div>
            <div class="col-xxl-3 col-xl-7 col-lg-8 col-10 text-center mt-6 mt-xxl-0">
              <div class="card bg-light shadow-lg ml-xxl-6" data-zanim-xs='{"animation":"zoom-out","delay":0.4,"duration":2}'>
                <div class="card-body">
                  <div class="row">
                    <div class="col-xl-6 col-xxl-12"><img class="img-fluid rounded" src="/resources/assets/img/food/pancake_PNG94.png" alt="" /></div>
                    <div class="col-xl-6 col-xxl-12">
                      <p class="font-weight-bold my-4">We Cater in Weddings,<br />Corporate Functions<br />and Events</p><a class="btn btn-primary mb-3" href="#contact" data-fancyscroll="data-fancyscroll">hire us Now</a>
                    </div>
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
      <section class="bg-light pt-lg-8 pt-7" id="gallery">

        <div class="container">
          <div class="row no-gutters">
            <div class="col pl-0">
              <div class="row no-gutters mb-2">
                <div class="col-md-5 px-2 mb-3 mb-md-0"><a href="/resources/assets/img/gallery/big/bigimg.jpg" data-fancybox="gallery" data-caption="Image caption">
                    <img class="img-fluid rounded-soft" src="/resources/assets/img/gallery/thumb/bigimg.jpg" alt="" />
                  </a></div>
                <div class="col-md-7">
                  <div class="row no-gutters">
                    <div class="col-4 px-2 mb-3"><a href="/resources/assets/img/gallery/big/1.jpg" data-fancybox="gallery" data-caption="Image caption">
                        <img class="img-fluid rounded-soft" src="/resources/assets/img/gallery/thumb/1.jpg" alt="" />
                      </a></div>
                    <div class="col-4 px-2 mb-3"><a href="/resources/assets/img/gallery/big/2.jpg" data-fancybox="gallery" data-caption="Image caption">
                        <img class="img-fluid rounded-soft" src="/resources/assets/img/gallery/thumb/2.jpg" alt="" />
                      </a></div>
                    <div class="col-4 px-2 mb-3"><a href="/resources/assets/img/gallery/big/3.jpg" data-fancybox="gallery" data-caption="Image caption">
                        <img class="img-fluid rounded-soft" src="/resources/assets/img/gallery/thumb/3.jpg" alt="" />
                      </a></div>
                    <div class="col-4 px-2 mb-3"><a href="/resources/assets/img/gallery/big/4.jpg" data-fancybox="gallery" data-caption="Image caption">
                        <img class="img-fluid rounded-soft" src="/resources/assets/img/gallery/thumb/4.jpg" alt="" />
                      </a></div>
                    <div class="col-4 px-2 mb-3"><a href="/resources/assets/img/gallery/big/5.jpg" data-fancybox="gallery" data-caption="Image caption">
                        <img class="img-fluid rounded-soft" src="/resources/assets/img/gallery/thumb/5.jpg" alt="" />
                      </a></div>
                    <div class="col-4 px-2"><a href="/resources/assets/img/gallery/big/6.jpg" data-fancybox="gallery" data-caption="Image caption">
                        <img class="img-fluid rounded-soft" src="/resources/assets/img/gallery/thumb/6.jpg" alt="" />
                      </a></div>
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


      <section class="overflow-hidden" id="about" data-zanim-timeline="{&quot;delay&quot;:0}" data-zanim-trigger="scroll">
        <div class="bg-holder d-none d-lg-block" style="background-image:url(/resources/assets/img/food/soup.png);background-position:right;background-size:40%; transform:none;" data-zanim-xs='{"animation":"slide-left","delay":0.2,"duration":1.5,"from":{"x":"200"},"to":{"x":0}}'>
        </div>
        <!--/.bg-holder-->

        <div class="container">
          <div class="row">
            <div class="col-lg-7 col-xl-6 col-xxl-5">
              <div class="overflow-hidden">
                <p class="fs-2 text-1000 mb-1 font-weight-bold" data-zanim-xs='{"animation":"","delay":0,"duration":1}'>About Us</p>
                <h2 class="fs-3 fs-sm-4 font-weight-bold" data-zanim-xs='{"animation":"","delay":0.1,"duration":1}'>Who Are We?</h2>
              </div>
              <div class="overflow-hidden">
                <p class="mb-4 mt-3" data-zanim-xs='{"animation":"","delay":0.5,"duration":1}'>We are a chain of theme restaurant founded in 1971 in London. In 1979, the cafe began covering its walls with rock and roll memorabilia, a tradition which expanded to others in the chain.</p>
              </div>
              <div class="overflow-hidden">
                <button class="btn btn-primary" type="button" data-zanim-xs='{"animation":"","delay":0.5,"duration":1}'>Learn more</button>
              </div>
              <div class="row mt-5">
                <div class="col-md-4 col-6 mb-4 text-center" data-zanim-xs='{"animation":"","delay":"0.0","duration":2}'>
                  <div class="overflow-hidden">
                    <div class="overflow-hidden"><img class="mb-2 img-fluid rounded-circle" src="/resources/assets/img/team/1.png" alt="" />
                      <p class="font-weight-bold mb-0">Gordon Ramsey</p>
                      <p class="fs--1">Owner &amp; Founder</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-6 mb-4 text-center" data-zanim-xs='{"animation":"","delay":"0.1","duration":2}'>
                  <div class="overflow-hidden">
                    <div class="overflow-hidden"><img class="mb-2 img-fluid rounded-circle" src="/resources/assets/img/team/2.png" alt="" />
                      <p class="font-weight-bold mb-0">Gordon Ramsey</p>
                      <p class="fs--1">Owner &amp; Founder</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-6 mb-4 text-center" data-zanim-xs='{"animation":"","delay":"0.2","duration":2}'>
                  <div class="overflow-hidden">
                    <div class="overflow-hidden"><img class="mb-2 img-fluid rounded-circle" src="/resources/assets/img/team/3.png" alt="" />
                      <p class="font-weight-bold mb-0">Gordon Ramsey</p>
                      <p class="fs--1">Owner &amp; Founder</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-6 mb-4 text-center" data-zanim-xs='{"animation":"","delay":"0.3","duration":2}'>
                  <div class="overflow-hidden">
                    <div class="overflow-hidden"><img class="mb-2 img-fluid rounded-circle" src="/resources/assets/img/team/4.png" alt="" />
                      <p class="font-weight-bold mb-0">Gordon Ramsey</p>
                      <p class="fs--1">Owner &amp; Founder</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-6 mb-4 text-center" data-zanim-xs='{"animation":"","delay":"0.4","duration":2}'>
                  <div class="overflow-hidden">
                    <div class="overflow-hidden"><img class="mb-2 img-fluid rounded-circle" src="/resources/assets/img/team/5.png" alt="" />
                      <p class="font-weight-bold mb-0">Gordon Ramsey</p>
                      <p class="fs--1">Owner &amp; Founder</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 col-6 mb-4 text-center" data-zanim-xs='{"animation":"","delay":"0.5","duration":2}'>
                  <div class="overflow-hidden">
                    <div class="overflow-hidden"><img class="mb-2 img-fluid rounded-circle" src="/resources/assets/img/team/6.png" alt="" />
                      <p class="font-weight-bold mb-0">Gordon Ramsey</p>
                      <p class="fs--1">Owner &amp; Founder</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!--contact ...............................................-->
      <section class="bg-light" id="contact" data-zanim-timeline="{&quot;delay&quot;:0}" data-zanim-trigger="scroll"><img class="position-absolute b-0 d-none d-xl-block" src="/resources/assets/img/food/green.png" width="475" alt="" data-zanim-xs='{"animation":"slide-right","delay":0.4,"duration":2}' />
        <div class="container">
          <div class="row" id="location">
            <div class="col text-center mb-lg-6 mb-5 mt-7 mt-lg-0">
              <div class="overflow-hidden">
                <p class="fs-2 text-1000 mb-1 font-weight-bold" data-zanim-xs='{"animation":"","delay":0,"duration":1}'>Location &amp; Timing</p>
                <h2 class="fs-3 fs-sm-4 font-weight-bold" data-zanim-xs='{"animation":"","delay":0.1,"duration":1}'>Contact with us</h2>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-4 mt-4 mt-lg-0">
              <div class="card shadow-sm h-100">
                <div class="card-body pl-5">
                  <div class="media mt-4"><span class="fas fa-map text-danger mt-1 mr-2"></span>
                    <div class="media-body">
                      <p>Av. Paz SoldÃ¡n 290, San<br />Isidro, Lima 27 - Peru</p>
                    </div>
                  </div>
                  <div class="media"><span class="fas fa-phone mt-1 mr-2 text-danger"></span>
                    <div class="media-body"><a class="text-600" href="tel:12345678910">+511 442-2777</a></div>
                  </div>
                  <div class="media mt-2"><span class="fas fa-envelope mt-1 mr-2 text-danger"></span>
                    <div class="media-body"><a class="text-600" href="mailto:mail@restaurantpro.com">mail@restaurantpro.com</a></div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 mt-4 mt-lg-0">
              <div class="card shadow-sm h-100">
                <div class="card-body pl-5">
                  <p class="text-danger font-weight-bold">Hours of service</p>
                  <p class="mb-0 text-1000">Monday to Saturday</p>
                  <p class="text-600">1:00 pm - 3:00 pm and<br />7:00 pm - 11:00 pm</p>
                  <p class="mb-0 text-1000">Sunday</p>
                  <p>12:30 pm - 3:30 pm</p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 mt-4 mt-lg-0 overflow-hidden">
              <div class="card shadow-sm h-100 overflow-hidden"><img class="position-absolute rounded-top r-0 d-none d-md-block d-lg-none d-xl-block" src="/resources/assets/img/food/kisspng-soup.png" alt="" width="120" data-zanim-xs='{"from":{"x":50,"y":-50,"opacity":0},"to":{"x":0,"y":0,"opacity":1},"delay":0.5,"duration":2}' />
                <div class="card-body pl-5 mt-3">
                  <p class="mb-0 font-weight-bold">Telephone support:</p>
                  <p>Monday to Saturday from<br />9:00 am to 9:00 pm</p>
                  <button class="btn btn-danger mt-3" type="button" data-toggle="modal" data-target="#reservation"><span class="d-none d-sm-inline d-lg-none d-xl-inline mr-2">Make a</span>Reservation</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!--map....................-->
      <section class="py-0">
        <div class="googlemap radius-primary" data-latlng="33.9901867,-118.3806147" data-scrollwheel="false" data-icon="/resources/assets/img/icons/map-marker.png" data-zoom="16" data-theme="Gray" style="min-height: 450px">
          <div class="marker-content p-3">
            <h5 class="mb-2">California Restaurant</h5>
            <p class="mb-0">Gustave Eiffel's iconic, wrought-iron 1889 tower,<br /></p>with steps and elevators to observation decks
          </div>
        </div>
      </section>


      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="bg-light" data-zanim-timeline='{"delay":0}' data-zanim-trigger="scroll">

        <div class="container">
          <div class="row justify-content-center">
            <div class="col-xxl-8">
              <div class="row text-center justify-content-center">
                <div class="col-md-10 col-lg-7">
                  <div class="overflow-hidden">
                    <h2 class="font-weight-bold fs-2 fs-sm-3 fs-md-4" data-zanim-xs='{"animation":"","delay":0.4,"duration":1}'>Feel free to drop us a line!</h2>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"animation":"","delay":0.5,"duration":1}'>Let's talk if you have any query or suggestion. We are open to learn from you. So don't hesitate to reach us anytime.</p>
                  </div>
                </div>
              </div>
              <form class="zform mt-4" method="post">
                <input type="hidden" name="to" value="username@domain.extension" />
                <div class="row">
                  <div class="col-md">
                    <div class="form-group">
                      <input class="fs-0 form-control form-control-lg" type="text" placeholder="Your Name" required="required" />
                    </div>
                    <div class="form-group">
                      <input class="fs-0 form-control form-control-lg" type="text" placeholder="Subject" required="required" />
                    </div>
                    <div class="form-group">
                      <input class="fs-0 form-control form-control-lg" type="email" placeholder="Email Address" required="required" />
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox">
                        <input class="custom-control-input" id="sendeMeACopyCheck" type="checkbox" />
                        <label class="custom-control-label" for="sendeMeACopyCheck">Send me a copy</label>
                      </div>
                    </div>
                  </div>
                  <div class="col-md">
                    <div class="form-group">
                      <textarea class="fs-0 form-control contact-message resize-none" rows="6" placeholder="Type your message here" required="required"></textarea>
                    </div>
                    <button class="btn btn-dark" type="submit">Give us a shot</button>
                    <div class="zform-feedback my-2"></div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
        <!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->


      <section class="bg-white overflow-hidden" data-zanim-timeline="{&quot;delay&quot;:0}" data-zanim-trigger="scroll"><img class="position-absolute r-0 b-0 d-none d-lg-block" src="/resources/assets/img/food/pizza2.png" alt="" width="300" data-zanim-xs='{"animation":"slide-left","delay":0.5,"duration":1}' />
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-sm-10 col-lg-5 text-center"><span class="fas fa-quote-left mb-2"></span>
              <div class="owl-carousel owl-theme owl-hvr-nav owl-nav-outer" data-options='{"autoplay":true,"loop":true,"items":1,"responsive":{"0":{"dots":true,"nav":false},"767":{"dots":false,"nav":true}}}'>
                <div class="item">
                  <div class="row mb-2">
                    <div class="col text-danger"><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span></div>
                  </div>
                  <p>Restaurant Pro probably make one of the best pizza in Town. I would definitely post their pizza picture someday. But today I have tasted their another items. So there I have mentioned that</p>
                  <p class="fs-1 font-weight-bold">-Richard Hendriks</p>
                </div>
                <div class="item">
                  <div class="row mb-2">
                    <div class="col text-danger"><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span></div>
                  </div>
                  <p>Restaurant & Cafe, we aim at promoting the foodstuff industry through the branches , we establish and through the new dishes. and integrate between different cultures, by merging different Oriental and its western recipes</p>
                  <p class="fs-1 font-weight-bold">-Lily Rose</p>
                </div>
                <div class="item">
                  <div class="row mb-2">
                    <div class="col text-danger"><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span><span class="fas fa-star"></span></div>
                  </div>
                  <p>am thrilled with the possibilities that Slick brought to my web design agency. Creating is easier with Slick.</p>
                  <p class="fs-1 font-weight-bold">-Noah Kingon</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->

     <c:import url="footer.jsp" />


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

</html>