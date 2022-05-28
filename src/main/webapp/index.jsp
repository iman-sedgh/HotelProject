<!DOCTYPE html>
<html lang="en" class="wide smoothscroll">
<head>
<title>Vacation Travel</title>
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/css.css?family=Lato:400,400i,700,700i,900,900i">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/rtl.css">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
              <li class="active"><a href="index.html">خانه</a> </li>
              <li><a href="/hotels">هتل ها</a>
                <ul class="rd-navbar-dropdown">
                  <li><a href="tours-grid.html">پنج ستاره</a></li>
                  <li><a href="tours-grid-variant-2.html">چهار ستاره</a></li>
                  <li><a href="tours-list.html">سه ستاره</a></li>
                  <li><a href="tours-single.html">دو ستاره</a></li>
                </ul>
              </li>
              <li><a href="about.html">درباره ما</a>
              </li>
              <li><a href="/login">ورود</a></li>
              <li><a href="/register">ثبت نام</a></li>

            </ul>
          </div>
        </div>
      </nav>
    </div>
    <div data-height="" data-min-height="400px" data-simulate-touch="false" data-slide-effect="fade" class="swiper-container swiper-slider">
      <div class="swiper-wrapper">
        <div data-slide-bg="images/1920x900.jpg" class="swiper-slide"></div>
        <div data-slide-bg="images/1920x900.jpg" class="swiper-slide"></div>
        <div data-slide-bg="images/1920x900.jpg" class="swiper-slide"></div>
      </div>
      <div class="swiper-caption-absolute">
        <div class="shell">
          <div class="range range-xs-center">
            <div class="cell-lg-10">
              <div>
                <h1 class="text-white">سامانه رزرو هتل</h1>
              </div>
              <div class="offset-top-8">
                <p class="h6 text-white">مدیریت و رزرواسیون آنلاین هتل</p>
              </div>
			 </div>
          </div>
        </div>
      </div>
      <div class="swiper-pagination"></div>
      <div class="swiper-button-prev"><span class="icon icon-xxs icon-circle icon-filled-white mdi mdi-chevron-left text-gray"></span></div>
      <div class="swiper-button-next"><span class="icon icon-xxs icon-circle icon-filled-white mdi mdi-chevron-right text-gray"></span></div>
    </div>
  </header>
  <main class="page-content">

    <section data-wow-delay=".2s" class="wow fadeIn section-parallax">
      <div data-on="false" data-md-on="true" class="rd-parallax">
        <div data-speed="0.25" data-type="media" data-url="images/options1.jpeg" class="rd-parallax-layer"></div>
        <div data-speed="0" data-type="html" data-md-fade="false" class="rd-parallax-layer">
          <div class="bg-overlay-inverse-md-darker">
            <div class="shell section-80 section-md-top-70">
              <h3 class="text-white">امکانات و قابلیت های سامانه</h3>
              <div class="range range-xs-center range-md-left text-xs-left offset-top-35">
                <div class="cell-sm-6 cell-md-4">
                  <div class="box box-sm bg-white reveal-lg-block">
                    <div class="unit unit-xs unit-xs-horizontal unit-spacing-sm">
                      <div class="unit-left">
                        <div class="icon-circle icon-circle-lg icon-filled-turquoise center-block"><img src="images/icon-11-20x18.png" width="20" height="18" alt="" class="img-responsive center-block"></div>
                      </div>
                      <div class="unit-body offset-top-4 offset-xs-top-0">
                        <div>
                          <p class="text-small text-gray-base text-uppercase text-ubold">رزرو آنلاین</p>
                        </div>
                        <div class="offset-top-4">
                          <p class="text-small text-silver-chalice">امکان مشاهده و رزرو اتاق های آزاد هتل هم توسط مشتری و هم توسط کارمندان هتل</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="cell-sm-6 cell-md-4 offset-top-30 offset-sm-top-0">
                  <div class="box box-sm bg-white reveal-lg-block">
                    <div class="unit unit-xs unit-xs-horizontal unit-spacing-sm">
                      <div class="unit-left">
                        <div class="icon-circle icon-circle-lg icon-filled-turquoise center-block"><img src="images/icon-06-14x21.png" width="14" height="21" alt="" class="img-responsive center-block"></div>
                      </div>
                      <div class="unit-body offset-top-4 offset-xs-top-0">
                        <div>
                          <p class="text-small text-gray-base text-uppercase text-ubold">پنل مدیریت هتل</p>
                        </div>
                        <div class="offset-top-4">
                          <p class="text-small text-silver-chalice">امکاناتی نظیر حذف و اضافه اتاق،کارمندان،مسافران هتل و...</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="cell-sm-6 cell-md-4 offset-top-30 offset-md-top-0">
                  <div class="box box-sm bg-white reveal-lg-block">
                    <div class="unit unit-xs unit-xs-horizontal unit-spacing-sm">
                      <div class="unit-left">
                        <div class="icon-circle icon-circle-lg icon-filled-turquoise center-block"><img src="images/icon-07-21x18.png" width="21" height="18" alt="" class="img-responsive center-block"></div>
                      </div>
                      <div class="unit-body offset-top-4 offset-xs-top-0">
                        <div>
                          <p class="text-small text-gray-base text-uppercase text-ubold">کدنویسی تمیز و استاندارد</p>
                        </div>
                        <div class="offset-top-4">
                          <p class="text-small text-silver-chalice"></p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="cell-sm-6 cell-md-4 offset-top-30">
                  <div class="box box-sm bg-white reveal-lg-block">
                    <div class="unit unit-xs unit-xs-horizontal unit-spacing-sm">
                      <div class="unit-left">
                        <div class="icon-circle icon-circle-lg icon-filled-turquoise center-block"><img src="images/icon-08-17x19.png" width="17" height="19" alt="" class="img-responsive center-block"></div>
                      </div>
                      <div class="unit-body offset-top-4 offset-xs-top-0">
                        <div>
                          <p class="text-small text-gray-base text-uppercase text-ubold">24/7 support</p>
                        </div>
                        <div class="offset-top-4">
                          <p class="text-small text-silver-chalice">Our travel agents are always there to support you during your trip.</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="cell-sm-6 cell-md-4 offset-top-30">
                  <div class="box box-sm bg-white reveal-lg-block">
                    <div class="unit unit-xs unit-xs-horizontal unit-spacing-sm">
                      <div class="unit-left">
                        <div class="icon-circle icon-circle-lg icon-filled-turquoise center-block"><img src="images/icon-09-20x20.png" width="20" height="20" alt="" class="img-responsive center-block"></div>
                      </div>
                      <div class="unit-body offset-top-4 offset-xs-top-0">
                        <div>
                          <p class="text-small text-gray-base text-uppercase text-ubold">Handpicked Hotels</p>
                        </div>
                        <div class="offset-top-4">
                          <p class="text-small text-silver-chalice">We pick the hotels with the utmost reputation and positive reviews.</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="cell-sm-6 cell-md-4 offset-top-30">
                  <div class="box box-sm bg-white reveal-lg-block">
                    <div class="unit unit-xs unit-xs-horizontal unit-spacing-sm">
                      <div class="unit-left">
                        <div class="icon-circle icon-circle-lg icon-filled-turquoise center-block"><img src="images/icon-10-25x24.png" width="25" height="24" alt="" class="img-responsive center-block"></div>
                      </div>
                      <div class="unit-body offset-top-4 offset-xs-top-0">
                        <div>
                          <p class="text-small text-gray-base text-uppercase text-ubold">highly qualified service</p>
                        </div>
                        <div class="offset-top-4">
                          <p class="text-small text-silver-chalice">Our high level of service is officially recognized by thousands of clients.</p>
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
    </section>


    <section dir="rtl" class="section-80 section-md-top-70 bg-wild-wand">
      <div class="shell">
        <div>
          <h3>هتل های منتخب</h3>
        </div>
        <div class="offset-top-10">
          <p></p>
        </div>
        <div class="range range-xs-center offset-top-45">
    <c:forEach items="${recentHotels}" var="recentHotel">
		<div class="cell-sm-5 cell-md-4 offset-top-30">
            <div data-wow-delay=".2s" class="box-offer wow bounceIn">
              <div class="box-offer-img-wrap"><a href="tours-single.html"><img src="images/370x310.jpg" width="370" height="310" alt="" class="img-responsive center-block"></a></div>
              <div class="box-offer-caption text-right">
                <div class="pull-right">
                  <div class="box-offer-title text-ubold"><a href="tours-single.html" class="text-gray-base">${recentHotel.name}</a></div>
                </div>
                <div class="pull-left">
                  <div class="box-offer-price text-gray-base">
                    <c:forEach var = "i" begin ="1" end ="${recentHotel.starNumber}">
                    <b style="color:orange"> ✫</b>
                    </c:forEach>
                  </div>
                </div>
                <div class="clearfix"></div>
                <div class="offset-top-8 offset-xs-top-0">
                  <ul class="list-inline list-inline-13 list-inline-marked text-silver-chalice text-small">
                    <li>${recentHotel.floorNumber} طبقه</li>
                    <li class="pull-left">${recentHotel.city}</li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
    </c:forEach>


        </div>
        <div class="offset-top-50"><a href="tours-grid.html" class="btn btn-primary">View ALL TOURs</a></div>
      </div>
    </section>


  </main>
  <footer class="page-footer section-top-80 section-bottom-34 section-lg-bottom-15 text-sm-right">
    <div class="shell">
      <div class="range range-xs-center">
        <div class="cell-sm-8 cell-md-12">
          <div class="range range-xs-center">
            <div class="cell-sm-6 cell-md-3 cell-lg-4 cell-md-push-1"><a href="index.html"><img  height="60" src="images/logo-dark-299x60.png" alt=""></a>
              <div class="offset-top-20 inset-lg-right-80">
                <p class="text-small ">سامانه مدیریت هتل در حدود ۲ ماه توسط تیم ۳ نفره با استفاده از زبان برنامه نویسی جاوا و فریمورک اسپرینگ نوشته شده است</p>
              </div>
            </div>
            <div class="cell-sm-6 cell-md-3 cell-lg-2 cell-md-push-4">
              <p class="text-big text-gray-base">Follow Us</p>
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
                        <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
                      </div>
                      <div class="modal-body">
                        <div class="shell">
                          <div class="range range-xs-center range-xs-middle">
                            <div class="cell-sm-6 bg-image bg-image-1"></div>
                            <div class="cell-sm-6">
                              <div class="modal-body-column-content">
                                <div>
                                  <h5 class="text-ubold">Subscribe to <br class="veil reveal-lg-inline-block">
                                    our newsletter</h5>
                                </div>
                                <div class="offset-top-15">
                                  <p class="text-italic text-small text-gray-base">Subscribe and <code class="text-ubold">get 5% off</code> on your first tour!</p>
                                </div>
                                <div class="offset-top-35">
                                  <form data-form-output="form-output-global" data-form-type="contact" method="post" action="bat/rd-mailform.php" class="rd-mailform rd-mailform-subscribe">
                                    <div class="form-group form-group-xs">
                                      <label for="contact-email" class="form-label">Enter Your email here...</label>
                                      <input id="contact-email" type="email" name="email" data-constraints="@Email @Required" class="form-control">
                                    </div>
                                    <button type="submit" class="btn btn-block btn-primary">SUBSCRIBE</button>
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
              <p class="text-big text-gray-base">Our Contacts</p>
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
          <p class="text-extra-small">Copyright &#169; <span id="copyright-year"></span> Travel & Tourism. All Rights Reserved.</p>
        </div>
        <div class="cell-sm-5 cell-md-4 text-sm-right offset-top-0">
          <ul class="list-inline list-inline-8">
            <li>
              <p class="text-extra-small"><a href="privacy.html" class="text-gray">Privacy Policy</a></p>
            </li>
            <li>
              <p class="text-extra-small"><a href="terms-of-use.html" class="text-gray">Terms of Use</a></p>
            </li>
            <li>
              <p class="text-extra-small"><a href="contacts.html" class="text-gray">Contact Support</a></p>
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