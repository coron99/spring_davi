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
    
    <!-- 보고서 style 양식  -->
	
  </head>


  <body>

    <!-- ===============================================-->
    <!--    Main Content-->
    <!-- ===============================================-->
    <main class="main" id="top">
      <!-- ============================================-->
      <!-- Preloader ==================================-->
      <div class="preloader p-0" id="preloader">
        <div class="loader d-flex flex-column align-items-center"><img src="/resources/assets/img/illustrations/egg.gif" alt="" /></div>
      </div>
      <!-- ============================================-->
      <!-- End of Preloader ===========================--><a class="bottom-to-top rounded-soft" href="#top" data-fancyscroll><span class="fas fa-angle-up lg" data-fa-transform="down-2"></span></a>
      <!--+navbar.navbar-expand-md.navbar-dark.bg-dark.sticky-top.font-weight-semi-bold.fs--1-->
      <nav class="navbar navbar-expand-lg navbar-dark bg-black fixed-top">
        <div class="container"><a class="navbar-brand" href="index.html"><img class="pb-1" src="/resources/assets/img/logo.png" alt="logo" /></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item dropdown dropdown-menu-on-hover pr-4"><a class="nav-link dropdown-toggle" id="navbarDropdownHomes" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Home</a>
                <div class="dropdown-menu bg-black pt-0 pt-lg-3 bg-black border-0" aria-labelledby="navbarDropdownHomes"><a class="dropdown-item" href="index.html">Header Static</a><a class="dropdown-item" href="index-slider.html">Header Slider</a><a class="dropdown-item" href="index-youtube.html">Youtube Background</a><a class="dropdown-item" href="index-selfhosted.html">Self Hosted Video</a><a class="dropdown-item border-bottom-0" href="index-rtl.html">RTL</a></div>
              </li>
              <li class="nav-item dropdown dropdown-menu-on-hover pr-4"><a class="nav-link dropdown-toggle" id="navbarDropdownPages" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pages</a>
                <div class="dropdown-menu bg-black border-0 py-3" aria-labelledby="navbarDropdownPages"><a class="dropdown-item" href="menu.html">Menu</a><a class="dropdown-item" href="gallery.html">Gallery</a><a class="dropdown-item" href="about.html">About</a><a class="dropdown-item border-bottom-0" href="contact.html">Contact</a></div>
              </li>
              <li class="nav-item"><a class="nav-link pr-4" href="index.html#menu">Menu</a></li>
              <li class="nav-item dropdown dropdown-menu-on-hover pr-4"><a class="nav-link dropdown-toggle" id="navbarDropdownComponents" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Components</a>
                <div class="dropdown-menu bg-black border-0 dropdown-menu-card" aria-labelledby="navbarDropdownComponents">
                  <div class="card navbar-dropdown-col-4 bg-black">
                    <div class="card-body p-0">
                      <div class="row">
                        <div class="col-6 col-md-auto">
                          <div class="nav flex-column"><a class="dropdown-item" href="components/alerts.html">Alerts</a><a class="dropdown-item" href="components/background.html">Background</a><a class="dropdown-item" href="components/badges.html">Badges</a><a class="dropdown-item" href="components/breadcrumb.html">Breadcrumb</a><a class="dropdown-item" href="components/buttons.html">Buttons</a><a class="dropdown-item" href="components/cards.html">Cards</a><a class="dropdown-item" href="components/carousel.html">Carousel</a>
                          </div>
                        </div>
                        <div class="col-6 col-md-auto">
                          <div class="nav flex-column"><a class="dropdown-item" href="components/collapse.html">Collapse</a><a class="dropdown-item" href="components/dropdowns.html">Dropdowns</a><a class="dropdown-item" href="components/fancyscroll.html">Fancyscroll</a><a class="dropdown-item" href="components/forms.html">Forms</a><a class="dropdown-item" href="components/hoverbox.html">Hoverbox</a><a class="dropdown-item" href="components/list-group.html">List group</a><a class="dropdown-item" href="components/modals.html">Modals</a>
                          </div>
                        </div>
                        <div class="col-6 col-md-auto">
                          <div class="nav flex-column"><a class="dropdown-item" href="components/media-object.html">Media object</a><a class="dropdown-item" href="components/navs.html">Navs</a><a class="dropdown-item" href="components/navbar.html">Navbar</a><a class="dropdown-item" href="components/page-headers.html">Page headers</a><a class="dropdown-item" href="components/pagination.html">Pagination</a><a class="dropdown-item" href="components/popovers.html">Popovers</a><a class="dropdown-item" href="components/progress.html">Progress</a>
                          </div>
                        </div>
                        <div class="col-6 col-md-auto">
                          <div class="nav flex-column"><a class="dropdown-item" href="components/scrollspy.html">Scrollspy</a><a class="dropdown-item" href="components/spinners.html">Spinners</a><a class="dropdown-item" href="components/tables.html">Tables</a><a class="dropdown-item" href="components/tabs.html">Tabs</a><a class="dropdown-item" href="components/tooltips.html">Tooltips</a><a class="dropdown-item" href="components/toasts.html">Toasts</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li class="nav-item dropdown dropdown-menu-on-hover pr-4"><a class="nav-link dropdown-toggle" id="navbarDropdownUtilities" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Utilities</a>
                <div class="dropdown-menu bg-black border-0" aria-labelledby="navbarDropdownUtilities"><a class="dropdown-item" href="utilities/borders.html">Borders</a><a class="dropdown-item" href="utilities/clearfix.html">Clearfix</a><a class="dropdown-item" href="utilities/close-icon.html">Close icon</a><a class="dropdown-item" href="utilities/colors.html">Colors</a><a class="dropdown-item" href="utilities/display.html">Display</a><a class="dropdown-item" href="utilities/embed.html">Embed</a><a class="dropdown-item" href="utilities/flex.html">Flex</a><a class="dropdown-item" href="utilities/figures.html">Figures</a><a class="dropdown-item" href="utilities/grid.html">Grid</a><a class="dropdown-item" href="utilities/sizing.html">Sizing</a><a class="dropdown-item" href="utilities/stretched-link.html">Stretched link</a><a class="dropdown-item" href="utilities/spacing.html">Spacing</a><a class="dropdown-item" href="utilities/typography.html">Typography</a><a class="dropdown-item" href="utilities/vertical-align.html">Vertical align</a><a class="dropdown-item border-bottom-0" href="utilities/visibility.html">Visibility</a>
                </div>
              </li>
              <li class="nav-item dropdown dropdown-menu-on-hover pr-4"><a class="nav-link dropdown-toggle" id="navbarDropdownPlugins" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Plugins</a>
                <div class="dropdown-menu bg-black border-0" aria-labelledby="navbarDropdownPlugins"><a class="dropdown-item" href="plugins/fancytab.html">Fancytab</a><a class="dropdown-item" href="plugins/flexslider.html">Flexslider</a><a class="dropdown-item" href="plugins/owl-carousel.html">Owl carousel</a><a class="dropdown-item border-bottom-0" href="plugins/fancybox.html">Fancybox</a>
                </div>
              </li>
            </ul>
            <ul class="navbar-nav ml-auto my-3 my-lg-0">
              <li class="nav-item">
                <button class="btn btn-outline-primary" type="button" data-toggle="modal" data-target="#reservation"><span class="d-none d-xl-inline">Make a</span>Reservation</button>
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

            <form class="zform modal-body pb-0">
              <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="row">
                <div class="border border-primary border-2x ml-5 rounded-soft"></div>
                <div class="col-8">
                  <h5 class="font-weight-bold mt-2">Make A<br>Reservation</h5>
                </div>
              </div>
              <div class="row mt-4 ml-3 form-group">
                <div class="col-lg-6 mb-3 mb-lg-0">
                  <div class="input-with-icon">
                    <select class="form-control text-base text-500 pl-4">
                      <option>Time</option>
                      <option>09:00 AM</option>
                      <option>11:00 AM</option>
                      <option>12:00 PM</option>
                      <option>01:00 PM</option>
                      <option>02:00 PM</option>
                      <option>03:30 PM</option>
                      <option>04:00 PM</option>
                      <option>05:00 PM</option>
                      <option>07:00 PM</option>
                      <option>08:00 PM</option>
                      <option>09:00 PM</option>
                    </select><span class="position-absolute far fa-clock text-400 icon modal-time-icon"></span>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="input-with-icon">
                    <input class="form-control icon-input" type="date" placeholder="DD/MM/YYYY" aria-label="date"><span class="position-absolute fas fa-calendar-day text-400 icon"></span>
                  </div>
                </div>
              </div>
              <div class="row form-group ml-3">
                <div class="col-lg-6 mb-3 mb-lg-0">
                  <input class="form-control" type="text" placeholder="Name">
                </div>
                <div class="col-lg-6">
                  <input class="form-control" type="tel" placeholder="Phone">
                </div>
              </div>
              <div class="row form-group ml-3">
                <div class="col">
                  <select class="form-control text-base text-500">
                    <option>Person</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                    <option>10+</option>
                  </select>
                </div>
              </div>
              <div class="row form-group ml-3">
                <div class="col">
                  <input class="form-control" type="email" placeholder="Email">
                </div>
              </div>
              <div class="row justify-content-center bg-primary rounded-bottom" style="margin-left:-17px;margin-right:-17px;margin-bottom:-1px">
                <div class="col-10 pt-3 pb-4">
                  <p class="text-900">Apparently we had reached a great height in the atmos, for the sky was a dead black, and the stars had twinkle. By which lifts the light.</p>
                  <input class="btn btn-light btn-block text-center mt-2" type="submit" value="Submit">
                </div>
              </div>
              <div class="zform-feedback"></div>
            </form>
          </div>
        </div>
      </div>


      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="pt-7 pb-4">

        <div class="bg-holder" style="background-image:url(/resources/assets/img/gallery/fullpage-bg.jpg);">
        </div>
        <!--/.bg-holder-->

        <div class="container">
          <div class="row min-vh-25 align-items-center text-center justify-content-center">
            <div class="col col-md-7">
              <h1 class="text-primary fs-2 fs-md-5">Report</h1>
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


      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->




      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="bg-dark py-0" data-zanim-timeline='{"delay":0}' data-zanim-trigger="scroll">

        <div class="container">
          <div class="row justify-content-center">
            <div class="col-auto d-none d-md-block mt-6 align-self-end"><img src="/resources/assets/img/food/pngfood2.png" alt="" width="95" data-zanim-xs='{"delay":0,"duration":2}' /></div>
            <div class="col-md col-lg-10 col-xl-9 my-6">
              <div class="row">
                <div class="col-md-5 col-lg-4 mb-6 mb-md-0 align-self-center"><img class="mb-1" src="/resources/assets/img/logo.png" alt="" />
                  <h3 class="text-white my-3 fs-lg-2 fs-1 mb-4">Want To Taste<br />Our Food?</h3>
                  <button class="btn btn-primary" type="button">order online</button>
                </div>
                <div class="col-auto d-none d-lg-flex offset-lg-1">
                  <div class="border-left border-1000 my-5"></div>
                </div>
                <div class="col-6 col-md-3 ml-auto ml-lg-0">
                  <h6 class="text-base fs-0 mb-4 font-weight-bold text-uppercase text-white">about</h6>
                  <ul class="nav flex-column">
                    <li class="mb-2"><a class="text-600 text-decoration-none active" href="#!">About</a></li>
                    <li class="mb-2"><a class="text-600 text-decoration-none" href="#!">Services</a></li>
                    <li class="mb-2"><a class="text-600 text-decoration-none" href="#!">Careers</a></li>
                    <li class="nav-item"><a class="text-600 text-decoration-none" href="#!">Hire Us</a></li>
                  </ul>
                </div>
                <div class="col-auto d-none d-lg-flex">
                  <div class="border-left border-1000 my-5"></div>
                </div>
                <div class="col-6 col-md-3">
                  <h6 class="text-base fs-0 mb-4 font-weight-bold text-uppercase text-white">Resources</h6>
                  <ul class="nav flex-column">
                    <li class="mb-2"><a class="text-600 text-decoration-none active" href="#!">Terms</a></li>
                    <li class="mb-2"><a class="text-600 text-decoration-none" href="#!">Help</a></li>
                    <li class="mb-4"><a class="text-600 text-decoration-none" href="#!">Privacy</a></li>
                    <li class="nav-item d-flex"><a class="text-600 text-decoration-none mr-4" href="#!"><span class="fab fa-facebook-f"></span></a><a class="text-600 text-decoration-none mr-4" href="#!"><span class="fab fa-instagram"></span></a><a class="text-600 text-decoration-none mr-4" href="#!"><span class="fab fa-google-plus-g"></span></a><a class="text-600 text-decoration-none" href="#!"><span class="fab fa-tripadvisor"></span></a></li>
                  </ul>
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

  </body>

</html>