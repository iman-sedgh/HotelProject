<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<html lang="en">
    <head>
        <title>add room</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
 <meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>اضافه کردن اتاق</title>
    <link rel="stylesheet" href="/css/adminPanelStyle.css">
    <link rel="stylesheet" href="/css/responsive_991.css" media="(max-width:991px)">
    <link rel="stylesheet" href="/css/responsive_768.css" media="(max-width:768px)">
    <link rel="stylesheet" href="/css/font.css">
<title>Snippet - BBBootstrap</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
<link href="#" rel="stylesheet">
                                        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                                        <style>::-webkit-scrollbar {
                                          width: 8px;
                                        }
                                        /* Track */
                                        ::-webkit-scrollbar-track {
                                          background: #f1f1f1;
                                        }

                                        /* Handle */
                                        ::-webkit-scrollbar-thumb {
                                          background: #888;
                                        }

                                        /* Handle on hover */
                                        ::-webkit-scrollbar-thumb:hover {
                                          background: #555;
                                        } body{background-image: linear-gradient(to right, #7B1FA2, #E91E63)}.section{position: relative;height: 100vh}.section .section-center{position: absolute;top: 50%;left: 0;right: 0;-webkit-transform: translateY(-50%);transform: translateY(-50%)}#booking{'Lato', Helvetica, Arial, sans-serif}.booking-form{position: relative;max-width: 642px;width: 100%;margin: auto;padding: 40px;overflow: hidden;background-image: url('https://i.imgur.com/8z1tx3u.jpg');background-size: cover;border-radius: 5px;z-index: 20}.booking-form::before{content: '';position: absolute;left: 0;right: 0;bottom: 0;top: 0;background: rgba(0, 0, 0, 0.7);z-index: -1}.booking-form .form-header{text-align: center;position: relative;margin-bottom: 30px}.booking-form .form-header h1{font-weight: 700;text-transform: capitalize;font-size: 42px;margin: 0px;color: #fff}.booking-form .form-group{position: relative;margin-bottom: 30px}.booking-form .form-control{background-color: rgba(255, 255, 255, 0.2);height: 60px;padding: 0px 25px;border: none;border-radius: 40px;color: #fff;-webkit-box-shadow: 0px 0px 0px 2px transparent;box-shadow: 0px 0px 0px 2px transparent;-webkit-transition: 0.2s;transition: 0.2s}.booking-form .form-control::-webkit-input-placeholder{color: rgba(255, 255, 255, 0.5)}.booking-form .form-control:-ms-input-placeholder{color: rgba(255, 255, 255, 0.5)}.booking-form .form-control::placeholder{color: rgba(255, 255, 255, 0.5)}.booking-form .form-control:focus{-webkit-box-shadow: 0px 0px 0px 2px #ff8846;box-shadow: 0px 0px 0px 2px #ff8846}.booking-form input[type="date"].form-control{padding-top: 16px}.booking-form input[type="date"].form-control:invalid{color: rgba(255, 255, 255, 0.5)}.booking-form input[type="date"].form-control+.form-label{opacity: 1;top: 10px}.booking-form select.form-control{-webkit-appearance: none;-moz-appearance: none;appearance: none}.booking-form select.form-control:invalid{color: rgba(255, 255, 255, 0.5)}.booking-form select.form-control+.select-arrow{position: absolute;right: 15px;top: 50%;-webkit-transform: translateY(-50%);transform: translateY(-50%);width: 32px;line-height: 32px;height: 32px;text-align: center;pointer-events: none;color: rgba(255, 255, 255, 0.5);font-size: 14px}.booking-form select.form-control+.select-arrow:after{content: '\279C';display: block;-webkit-transform: rotate(90deg);transform: rotate(90deg)}.booking-form select.form-control option{color: #000}.booking-form .form-label{position: absolute;top: -10px;left: 25px;opacity: 0;color: #ff8846;font-size: 11px;font-weight: 700;text-transform: uppercase;letter-spacing: 1.3px;height: 15px;line-height: 15px;-webkit-transition: 0.2s all;transition: 0.2s all}.booking-form .form-group.input-not-empty .form-control{padding-top: 16px}.booking-form .form-group.input-not-empty .form-label{opacity: 1;top: 10px}.booking-form .submit-btn{color: #fff;background-color: #e35e0a;font-weight: 700;height: 60px;padding: 10px 30px;width: 100%;border-radius: 40px;border: none;text-transform: uppercase;font-size: 16px;letter-spacing: 1.3px;-webkit-transition: 0.2s all;transition: 0.2s all}.booking-form .submit-btn:hover, .booking-form .submit-btn:focus{opacity: 0.9}</style>

    </head>
    <body>

            <div class="sidebar__nav border-top border-left  ">
                <span class="bars d-none padding-0-18"></span>
                <a class="header__logo  d-none" href="/"></a>
                <div class="profile__info border cursor-pointer text-center">
                    <div class="avatar__img"><img style="top10px;" src="/img/pro.jpg" class="avatar___img">
                        <input name="images" type="file" accept="image/*" class="hidden avatar-img__input" multiple>
                        <div class="v-dialog__container" style="display: block;"></div>
                        <div class="box__camera default__avatar"></div>
                    </div>
                </div>

                <ul>
                    <li class="item-li i-dashboard is-active"><a href="/panel/hotel?hotelId=${hotel.id}">اطلاعات هتل</a></li>


                    <li class="item-li i-categories"><a href="/hotel/rooms?hotelId=${hotel.id}">اتاق های هتل</a></li>

                </ul>
            </div>
            <div class="content">
                <div class="header d-flex item-center bg-white width-100 border-bottom padding-12-30">
                    <div class="header__right d-flex flex-grow-1 item-center">
                        <span class="bars"></span>
                        <a class="header__logo" href="/"></a>
                    </div>
                    <div class="header__left d-flex flex-end item-center margin-top-2">
                        <div class="notification margin-15">
                            <a class="notification__icon"></a>
                            <div class="dropdown__notification">
                                <div class="content__notification">

                                </div>
                            </div>
                        </div>
                        <a href="/login" class="logout" title="خروج"></a>
                    </div>
                </div>
                <div class="breadcrumb">
                    <ul>
                         <ul>
                                        <li><a href="/home.jsp">ادمین پنل</a></li>
                                                        <li><a href="/user/hotels" class="is-active">هتل های شما</a></li>
                                                        <li><a  href="/hotel/rooms?hotelId=${hotel.id}"class="is-active">اتاق های هتل</a></li>
                                                        <li><a  href=""class="is-active">اضافه کردن اتاق</a></li>

                    </div>

            </div>
        <div id="booking" class="section"> <div class="section-center">
        <div class="container"> <div class="row"> <div class="booking-form">
         <div class="form-header"> <h1>اضافه کردن اتاق </h1> </div>
         <form action="/hotel/rooms/add?hotelId=${hotelId}" method="POST"> <div class="form-group">

         <input class="form-control" placeholder="قیمت اتاق" name="price" type="number" min="1"></div>
          <div class="form-group">
         <input class="form-control" type="text" placeholder="نوع اتاق" name="type"></div>
         <div class="form-group">
         <input class="form-control" type="number" placeholder="شماره اتاق" name="type" name="roomNumber" min="1"></div>


          <div class="row"><br>
          </div>
           <div class="row"> <div class="col-md-4"> <div class="form-group"> <span class="form-label">Rooms</span> </div> </div>
                </div> <div class="row">

                 </div>
                <div class="form-btn"> <button class="submit-btn">اضافه کردن</button> </div> </form> </div> </div> </div> </div>
        </div>
    </body>
</html>