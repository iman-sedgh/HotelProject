<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>add room</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
        <meta name="format-detection" content="telephone=no">
        <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta charset="utf-8">
        <link rel="icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" type="text/css" href="css/css.css?family=Lato:400,400i,700,700i,900,900i">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/rtl.css">
        <link rel="stylesheet" href="css/htels.css">
    </head>

<body>
<div class="page text-center">
<header class="page-header slider-menu-position">
    <div class="rd-navbar-wrap">
      <nav data-md-device-layout="rd-navbar-fixed" data-lg-device-layout="rd-navbar-static" data-md-stick-up-offset="1px" data-lg-stick-up-offset="1px" class="rd-navbar rd-navbar-transparent rd-navbar-dark-stuck" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fullwidth" data-lg-layout="rd-navbar-static">
        <div class="rd-navbar-inner">
          <div class="rd-navbar-panel">
            <button data-rd-navbar-toggle=".rd-navbar-nav-wrap" class="rd-navbar-toggle"><span></span></button>
            <div class="rd-navbar-brand veil reveal-md-block"><a href="index.html" class="brand-name"><img  height="55" src="images/logo-light-299x60.png" alt=""></a></div>
            <div class="rd-navbar-brand veil-md reveal-tablet-md-inline-block"><a href="index.html" class="brand-name"><img  height="45" src="images/logo-dark-299x60.png" alt=""></a></div>
          </div>
          <div class="rd-navbar-nav-wrap">
            <ul class="rd-navbar-nav">
              <li class="active"><a href="/">????????</a> </li>
              <li><a href="/hotels">?????? ????</a>
                 <ul class="rd-navbar-dropdown">
                                <li><a href="tours-grid.html">?????? ??????????</a></li>
                                <li><a href="tours-grid-variant-2.html">???????? ??????????</a></li>
                                <li><a href="tours-list.html">???? ??????????</a></li>
                                <li><a href="tours-single.html">???? ??????????</a></li>
                              </ul>
              </li>
              <li><a href="about.jsp">???????????? ????</a>
              </li>
              <li><a href="/login">????????</a></li>
              <li><a href="/register">?????? ??????</a></li>

            </ul>
          </div>
        </div>
      </nav>
    </div>
    <section class="section-height-mac context-dark">
      <div data-on="false" data-md-on="true" class="rd-parallax">
        <div data-speed="0.25" data-type="media" data-url="images/1920x900.jpg" class="rd-parallax-layer"></div>
        <div data-speed="0" data-type="html" data-md-fade="false" class="rd-parallax-layer">
          <div class="bg-overlay-darker">
            <div class="shell section-34 section-md-100 section-lg-top-170 section-lg-bottom-165">
              <h1 class="veil reveal-md-inline-block">???????? ?????????? ?????????????</h1>
              <div class="offset-top-4">
                <h6 class="text-italic"></h6>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </header>
   <main class="page-content">
      <section class="section-80 bg-wild-wand">
        <div class="shell">
          <div class="range range-xs-center">
            <div class="cell-sm-11 cell-md-9 cell-md-push-1">
              <div class="range range-xs-center range-sm-left range-md-center offset-top-50 offset-md-top-25">
              <c:forEach items="${hotels}" var="hotel">
                <div class="cell-sm-6 cell-md-4 offset-top-30">
                  <div class="box-offer box-offer-xs">
                    <div class="box-offer-img-wrap"><a href="hotel?hotelId=${hotel.id}">
                    <img src="${hotel.images[0]}" width="270" height="240" alt="" class="img-responsive center-block"></a></div>
                    <div class="box-offer-caption text-left">
                      <div class="pull-left">
                        <div class="box-offer-title text-ubold"><a href="hotel?hotelId=${hotel.id}" class="text-gray-base">${hotel.name}</a></div>
                      </div>
                      <div class="pull-right">
                        <div class="stars">
                            <c:forEach var = "i" begin ="1" end ="${recentHotel.starNumber}">
                                <i class="fas fa-star"></i>
                            </c:forEach>
                        </div>
                      </div>
                      <div class="clearfix"></div>
                      <div class="offset-top-8 offset-xs-top-4">
                        <ul class="list-inline list-inline-13 list-inline-marked list-inline-marked-offset-inverse-top text-silver-chalice text-extra-small">
                          <li>${hotel.city}</li>
                          <li>???????? ${hotel.floorNumber}</li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </c:forEach>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
    <footer class="page-footer section-top-80 section-bottom-34 section-lg-bottom-15 text-sm-right">
        <div class="shell">
          <div class="range range-xs-center">
            <div class="cell-sm-8 cell-md-12">
              <div class="range range-xs-center">
                <div class="cell-sm-6 cell-md-3 cell-lg-4 cell-md-push-1"><a href="index.jsp"><img  height="60" src="images/logo-dark-299x60.png" alt=""></a>
                  <div class="offset-top-20 inset-lg-right-80">
                    <p class="text-small ">???????????? ???????????? ?????? ???? ???????? ?? ?????? ???????? ?????? ?? ???????? ???? ?????????????? ???? ???????? ???????????? ?????????? ???????? ?? ?????????????? ?????????????? ?????????? ?????? ??????</p>
                  </div>
                </div>
                <div class="cell-sm-6 cell-md-3 cell-lg-2 cell-md-push-4">
                  <p class="text-big text-gray-base">???? ???? ?????????? ????????</p>
                  <div class="offset-top-20">
                    <ul class="list-inline">
                      <li class="text-center"><a href="#" class="icon icon-square icon-filled-gallery fa fa-facebook-f text-gray"></a></li>
                      <li class="text-center"><a href="#" class="icon icon-square icon-filled-gallery fa fa-twitter text-gray"></a></li>
                      <li class="text-center"><a href="#" class="icon icon-square icon-filled-gallery fa fa-youtube text-gray"></a></li>
                      <li class="text-center"><a href="#" class="icon icon-square icon-filled-gallery fa fa-linkedin text-gray"></a></li>
                    </ul>
                  </div>
                  <div class="offset-top-20 offset-md-top-40">
                    <button type="button" data-toggle="modal" data-target="#subscribe" style="min-width:160px;" class="btn btn-primary">Subscribe</button>
                    <div id="subscribe" tabindex="-1" role="dialog" class="modal modal-custom fade text-center">
                      <div role="document" class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">??</span></button>
                          </div>
                          <div class="modal-body">
                            <div class="shell">
                              <div class="range range-xs-center range-xs-middle">
                                <div class="cell-sm-6 bg-image bg-image-1"></div>
                                <div class="cell-sm-6">
                                  <div class="modal-body-column-content">
                                    <div>
                                      <h5 class="text-ubold">???? ???? ???? ?????????????? ?????????? ????????<br class="veil reveal-lg-inline-block">
                                        our newsletter</h5>
                                    </div>
                                    <div class="offset-top-15">
                                      <p class="text-italic text-small text-gray-base">Subscribe and <code class="text-ubold">???????? ?????????? ?????? ???? ???? ?????????? ???????????? ????????!</code></p>
                                    </div>
                                    <div class="offset-top-35">
                                      <form data-form-output="form-output-global" data-form-type="contact" method="post" action="bat/rd-mailform.php" class="rd-mailform rd-mailform-subscribe">
                                        <div class="form-group form-group-xs">
                                          <label for="contact-email" class="form-label">?????????? ?????? ???? ???????? ????????????</label>
                                          <input id="contact-email" type="email" name="email" data-constraints="@Email @Required" class="form-control">
                                        </div>
                                        <button type="submit" class="btn btn-block btn-primary">???? ???? ?????????? ????????!</button>
                                      </form>
                                    </div>
                                    <div class="offset-top-35">
                                      <ul class="list-inline list-primary list-inline-13">
                                        <li class="text-center"><a href="#" class="icon fa fa-facebook-f text-gray-base"></a></li>
                                        <li class="text-center"><a href="#" class="icon fa fa-twitter text-gray-base"></a></li>
                                        <li class="text-center"><a href="#" class="icon fa fa-youtube text-gray-base"></a></li>
                                        <li class="text-center"><a href="#" class="icon fa fa-linkedin text-gray-base"></a></li>
                                      </ul>
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
                <div class="cell-xs-8 cell-sm-12 cell-md-6 offset-top-40 offset-md-top-0 cell-md-push-2">
                  <p class="text-big text-gray-base">???????????? ???? ????</p>
                  <div class="offset-top-8 offset-sm-top-20">
                    <address class="contact-info text-left">
                      <div class="range range-xs-center">
                        <div class="cell-sm-6">
                          <div>
                            <p class="reveal-block text-small"><a href="#" class="text-gray"><span class="unit unit-horizontal unit-spacing-xs"><span class="unit-left"><img src="images/icon-01-16x21.png" width="16" height="21" alt="" class="img-responsive center-block offset-top-4"></span><span class="unit-body"><span>1730 M Str., Suite 501, NW. Washington DC. 20036 U.S.A</span></span></span></a></p>
                          </div>
                          <div class="offset-top-20">
                            <p class="reveal-inline-block text-small"><a href="callto:#" class="text-gray"><span class="unit unit-middle unit-horizontal unit-spacing-xs"><span class="unit-left"><img src="images/icon-02-19x19.png" width="19" height="19" alt="" class="img-responsive center-block"></span><span class="unit-body"><span>19008721</span></span></span></a></p>
                          </div>
                        </div>
                        <div class="cell-sm-6 offset-top-15 offset-sm-top-0">
                          <div>
                            <p class="reveal-inline-block text-small"><a href="callto:#" class="text-gray"><span class="unit unit-middle unit-horizontal unit-spacing-xs"><span class="unit-left"><img src="images/icon-03-12x20.png" width="12" height="20" alt="" class="img-responsive center-block"></span><span class="unit-body"><span>19008197</span></span></span></a></p>
                          </div>
                          <div class="offset-top-15">
                            <div>
                              <p class="reveal-inline-block text-small"><a href="/cdn-cgi/l/email-protection#1635" class="text-gray"><span class="unit unit-middle unit-horizontal unit-spacing-xs"><span class="unit-left"><img src="images/icon-04-20x13.png" width="20" height="13" alt="" class="img-responsive center-block"></span><span class="unit-body"><span><span class="__cf_email__" data-cfemail="a5cccbc3cae5c1c0c8cac9cccbce8bcad7c2">philip@gmail.com</span></span></span></span></a></p>
                            </div>
                          </div>
                          <div class="offset-top-20">
                            <p class="reveal-inline-block text-small"><a href="#" class="text-gray"><span class="unit unit-middle unit-horizontal unit-spacing-xs"><span class="unit-left"><img src="images/icon-05-19x19.png" width="19" height="19" alt="" class="img-responsive center-block"></span><span class="unit-body"><span>TravelTourism.org</span></span></span></a></p>
                          </div>
                        </div>
                      </div>
                    </address>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="offset-top-110">
            <div class="hr bg-gallery"></div>
          </div>
          <div class="range range-xs-center range-sm-justify offset-top-8">
            <div class="cell-sm-5 cell-md-4 text-sm-left">
              <p class="text-extra-small">Copyright &#169; <span id="copyright-year"></span>?????? ???????? ?????????? ???????????? ?????? ???????? ???? ????????.</p>
            </div>
            <div class="cell-sm-5 cell-md-4 text-sm-right offset-top-0">
              <ul class="list-inline list-inline-8">
                <li>
                  <p class="text-extra-small"><a href="privacy.html" class="text-gray">???????? ??????????</a></p>
                </li>
                <li>
                  <p class="text-extra-small"><a href="terms-of-use.html" class="text-gray">????????????</a></p>
                </li>
                <li>
                  <p class="text-extra-small"><a href="about.jsp" class="text-gray">???????????? ???? ????</a></p>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </footer>
  </div>
  <div id="form-output-global" class="snackbars"></div>
  <div tabindex="-1" role="dialog" aria-hidden="true" class="pswp">
    <div class="pswp__bg"></div>
    <div class="pswp__scroll-wrap">
      <div class="pswp__container">
        <div class="pswp__item"></div>
        <div class="pswp__item"></div>
        <div class="pswp__item"></div>
      </div>
      <div class="pswp__ui pswp__ui--hidden">
        <div class="pswp__top-bar">
          <button title="Close (Esc)" class="pswp__button pswp__button--close"></button>
          <button title="Share" class="pswp__button pswp__button--share"></button>
          <button title="Toggle fullscreen" class="pswp__button pswp__button--fs"></button>
          <button title="Zoom in/out" class="pswp__button pswp__button--zoom"></button>
          <div class="pswp__preloader">
            <div class="pswp__preloader__icn">
              <div class="pswp__preloader__cut">
                <div class="pswp__preloader__donut"></div>
              </div>
            </div>
          </div>
        </div>
        <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
          <div class="pswp__share-tooltip"></div>
        </div>
        <button title="Previous (arrow left)" class="pswp__button pswp__button--arrow--left"></button>
        <button title="Next (arrow right)" class="pswp__button pswp__button--arrow--right"></button>
        <div class="pswp__caption">
          <div class="pswp__caption__cent"></div>
        </div>
        <div class="pswp__counter"></div>
      </div>
    </div>
  </div>
  <script src="js/core.min.js"></script>
  <script src="js/script.js"></script>
  </body>
  </html>
        <h1>hotels</h1>
        <div class="container hotels">
            <c:forEach items="${hotels}" var="hotel">
                <div class="hotel">
                    <p><a href="/hotel?hotelId=${hotel.id}">
                        ${hotel.name}
                    </a></p>
                </div>
            </c:forEach>
        </div>