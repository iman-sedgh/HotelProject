<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="wide wow-animation smoothscroll">

<head>
    <title>اطلاعات هتل</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport"
        content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="/css/css.css?family=Lato:400,400i,700,700i,900,900i">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/rtl.css">
    <link type="text/css" rel="stylesheet" href="/dist/jalalidatepicker.min.css" />
    <script type="text/javascript" src="/dist/jalalidatepicker.min.js"></script>
</head>
<body>
    <div class="page text-center">
        <header class="page-header slider-menu-position">
            <div class="rd-navbar-wrap">
                <nav data-md-device-layout="rd-navbar-fixed" data-lg-device-layout="rd-navbar-static"
                    data-md-stick-up-offset="1px" data-lg-stick-up-offset="1px"
                    class="rd-navbar rd-navbar-transparent rd-navbar-dark-stuck" data-layout="rd-navbar-fixed"
                    data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fullwidth"
                    data-lg-layout="rd-navbar-static">
                    <div class="rd-navbar-inner">
                        <div class="rd-navbar-panel">
                            <button data-rd-navbar-toggle=".rd-navbar-nav-wrap"
                                class="rd-navbar-toggle"><span></span></button>
                            <div class="rd-navbar-brand veil reveal-md-block"><a href="/index.html"
                                    class="brand-name"><img height="55" src="/images/logo-light-299x60.png" alt=""></a>
                            </div>
                            <div class="rd-navbar-brand veil-md reveal-tablet-md-inline-block"><a href="/index.html"
                                    class="brand-name"><img height="45" src="/images/logo-dark-299x60.png" alt=""></a>
                            </div>
                        </div>
                        <div class="rd-navbar-nav-wrap">
                            <ul class="rd-navbar-nav">
                                <li class="active"><a href="/">خانه</a> </li>
                                <li><a href="/hotels">هتل ها</a>
                                    <ul class="rd-navbar-dropdown">
                                        <li><a href="/tours-grid.html">پنج ستاره</a></li>
                                        <li><a href="/tours-grid-variant-2.html">چهار ستاره</a></li>
                                        <li><a href="/tours-list.html">سه ستاره</a></li>
                                        <li><a href="/tours-single.html">دو ستاره</a></li>
                                    </ul>
                                </li>
                                <li><a href="/about.html">درباره ما</a>
                                </li>
                                <li><a href="/login">ورود</a></li>
                                <li><a href="/register">ثبت نام</a></li>

                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
            <section class="section-height-mac">
                <div data-on="false" data-md-on="true" class="rd-parallax">
                    <div data-speed="0.25" data-type="media" data-url="images/single-hotel.jpg" class="rd-parallax-layer">
                    </div>
                    <div data-speed="0" data-type="html" data-md-fade="false" class="rd-parallax-layer">
                        <div class="bg-overlay-darker">
                            <div class="shell section-34 section-md-60 section-lg-115">
                                <h1 class="veil reveal-md-inline-block text-white text-right">${hotel.name}</h1>
                                <div class="offset-md-top-35">
                                    <ul
                                        class="list-inline list-inline-dashed list-inline-dashed-sm text-small text-white">
                                        <li class="text-uppercase"><img src="/images/icon-16-16x15-light.png" width="16"
                                                height="15" alt=""><span class="text-middle inset-left-10">${hotel.starNumber}
                                                    ستاره</span></li>
                                        <span class="inset-left-10"> در شهر ${hotel.city}</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </header>
        <main class="page-content">
            <section class="section-80 bg-wild-wand text-sm-right">
                <div class="shell">
                    <div class="range range-xs-center">
                        <div class="cell-md-10 cell-lg-12">
                            <div class="text-center box box-lg box-single-post bg-white reveal-block">
                                <h4 class="row text-ubold">توضیحات ${hotel.name}</h4>
                                <div class="row offset-top-35 text-silver-chalice text-small">
                                    <p>
                                    ${hotel.description}
                                    </p>
                                </div><br><hr><br>
                                <h3> رزرواسیون</h3>
                                <c:if test="${isDateForm}">
                                    <form action="/hotel/reserving/setTime" method="get">
                                        <input type="hidden" value="${hotel.id}" name="id">
                                        <div style="margin:15px"><div> از تاریخ: </div><input style="margin:10px" data-jdp name="start"> <br> </div>
                                        <div style="margin:15px"><div> تا تاریخ: </div><input style="margin:10px" data-jdp name="end"> <br> </div>
                                        <input style="position:relative;" class="btn btn-info" value="جستجو" type="submit">
                                    </form>
                                    <script>jalaliDatepicker.startWatch();</script>
                                </c:if>
                                <c:if test="${!isDateForm}">
                                    <div style="margin:15px;position: relative; top:25px">
                                        <form action="/hotel/reserving/submit" method="post">
                                            <c:forEach items="${rooms}" var="room" varStatus="loop">
                                                <div style="margin:15px">
                                                    <input type="checkbox" id="room-${room.id}" name="roomsID" value="${room.id}">
                                                    <label for="room-${room.id}">
                                                        <div class="room">
                                                            <p>
                                                                <span style="margin: 5px"> نوع اتاق: ${room.type}</span>
                                                                <span style="margin: 5px"> قیمت اتاق: ${room.price}</span>
                                                            </p>
                                                        </div>
                                                    </label>
                                                    <br>
                                                </div>
                                            </c:forEach>

                                            <table style="display:flex; justify-content:center ; margin:15px">
                                                <tr>
                                                    <td> نام: </td><td><input name="costumerName"></td>
                                                </tr>
                                                <tr>
                                                    <td> شماره ملی: </td><td><input name="costumerNationalID"></td>
                                                </tr>
                                            </table>

                                            <input type="hidden" name="id" value="${hotel.id}">
                                            <input type="hidden" name="checkIn" value="${start}">
                                            <input type="hidden" name="checkOut" value="${end}">

                                            <input type="submit" value="رزرو" class="btn btn-info">
                                        </form>
                                    </div>
                                </c:if>
                            </div>
                            <div class="offset-top-60">
                                <hr class="hr bg-alto">
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
                    <div class="cell-sm-6 cell-md-3 cell-lg-4 cell-md-push-1"><a href="/index.html"><img  height="60" src="/images/logo-dark-299x60.png" alt=""></a>
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
                                <p class="reveal-block text-small"><a href="#" class="text-gray"><span class="unit unit-horizontal unit-spacing-xs"><span class="unit-left"><img src="/images/icon-01-16x21.png" width="16" height="21" alt="" class="img-responsive center-block offset-top-4"></span><span class="unit-body"><span>1730 M Str., Suite 501, NW. Washington DC. 20036 U.S.A</span></span></span></a></p>
                              </div>
                              <div class="offset-top-20">
                                <p class="reveal-inline-block text-small"><a href="callto:#" class="text-gray"><span class="unit unit-middle unit-horizontal unit-spacing-xs"><span class="unit-left"><img src="/images/icon-02-19x19.png" width="19" height="19" alt="" class="img-responsive center-block"></span><span class="unit-body"><span>19008721</span></span></span></a></p>
                              </div>
                            </div>
                            <div class="cell-sm-6 offset-top-15 offset-sm-top-0">
                              <div>
                                <p class="reveal-inline-block text-small"><a href="callto:#" class="text-gray"><span class="unit unit-middle unit-horizontal unit-spacing-xs"><span class="unit-left"><img src="/images/icon-03-12x20.png" width="12" height="20" alt="" class="img-responsive center-block"></span><span class="unit-body"><span>19008197</span></span></span></a></p>
                              </div>
                              <div class="offset-top-15">
                                <div>
                                  <p class="reveal-inline-block text-small"><a href="/cdn-cgi/l/email-protection#1635" class="text-gray"><span class="unit unit-middle unit-horizontal unit-spacing-xs"><span class="unit-left"><img src="/images/icon-04-20x13.png" width="20" height="13" alt="" class="img-responsive center-block"></span><span class="unit-body"><span><span class="__cf_email__" data-cfemail="a5cccbc3cae5c1c0c8cac9cccbce8bcad7c2">philip@gmail.com</span></span></span></span></a></p>
                                </div>
                              </div>
                              <div class="offset-top-20">
                                <p class="reveal-inline-block text-small"><a href="#" class="text-gray"><span class="unit unit-middle unit-horizontal unit-spacing-xs"><span class="unit-left"><img src="/images/icon-05-19x19.png" width="19" height="19" alt="" class="img-responsive center-block"></span><span class="unit-body"><span>TravelTourism.org</span></span></span></a></p>
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
                      <p class="text-extra-small"><a href="/privacy.html" class="text-gray">Privacy Policy</a></p>
                    </li>
                    <li>
                      <p class="text-extra-small"><a href="/terms-of-use.html" class="text-gray">Terms of Use</a></p>
                    </li>
                    <li>
                      <p class="text-extra-small"><a href="/contacts.html" class="text-gray">Contact Support</a></p>
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
    <script src="/js/core.min.js"></script>
    <script src="/js/script.js"></script>
</body>

</html>