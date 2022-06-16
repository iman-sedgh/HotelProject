<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0;">
    <title>اطلاعات مالی هتل</title>
    <link rel="stylesheet" href="css/home-style.css">
    <link rel="stylesheet" href="css/responsive_991.css" media="(max-width:991px)">
    <link rel="stylesheet" href="css/responsive_768.css" media="(max-width:768px)">
    <link rel="stylesheet" href="css/font.css">
    <link rel="stylesheet" href="/css/adminPanelStyle.css">
        <link rel="stylesheet" href="/css/responsive_991.css" media="(max-width:991px)">
        <link rel="stylesheet" href="/css/responsive_768.css" media="(max-width:768px)">
        <link rel="stylesheet" href="/css/font.css">
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
        <li class="item-li i-dashboard is-active"><a href="/panel/hotel?hotelId=${hotelId}">اطلاعات هتل</a></li>

        </li>

    </ul>

</div>
<div class="content">
    <div class="header d-flex item-center bg-white width-100 border-bottom padding-12-30">
        <div class="header__right d-flex flex-grow-1 item-center">
            <span class="bars"></span>
        </div>
        <div class="header__left d-flex flex-end item-center margin-top-2">
            <div class="notification margin-15">
                <a class="notification__icon"></a>
                <div class="dropdown__notification">
                    <div class="content__notification">
                        <span class="font-size-13">موردی برای نمایش وجود ندارد</span>
                    </div>
                </div>
            </div>
            <a href="/login" class="logout" title="خروج"></a>
        </div>
    </div>
    <div class="breadcrumb">
        <ul>

                <li class="item-li i-dashboard is-active"><a href="/panel/hotel?hotelId=${hotelId}">اطلاعات هتل</a></li>
                             <li><a <a href=""class="is-active">اطلاعات مالی هتل</a></li>
          </ul>
    </div>
    <div class="main-content">
        <div class="row no-gutters font-size-13 margin-bottom-10">
            <div class="col-3 padding-20 border-radius-3 bg-white margin-left-10 margin-bottom-10">
                <p> مجموع حقوق پرداختی ماه </p>
                   <a>${total_salary}تومان</a></p>
            </div>
            <div class="col-3 padding-20 border-radius-3 bg-white margin-left-10 margin-bottom-10">
                <p> سود خالص هتل</p>
                <p>${total_profit} تومان</p>
            </div>
            <div class="col-3 padding-20 border-radius-3 bg-white margin-bottom-10">
                <p> درآمد کل </p>
                <p>${profit} تومان</p>
            </div>
        </div>
        <div class="row no-gutters font-size-13 margin-bottom-10">

        </div>
        <div class="row no-gutters font-size-13 margin-bottom-10">

        </div>
        <div class="row bg-white no-gutters font-size-13">

        </div>
    </div>
</div>
</body>
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/js.js"></script>
</html>
