<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0;">
    <title>اضافه کردن اتاق</title>
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
            <li class="item-li i-categories"><a href="/hotel/rooms?hotelId=${hotelId}">اتاق های هتل</a></li>
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

                       <li><a href="/user/hotels" class="is-active">هتل های شما</a></li>
                         <li><a  href="/hotel/rooms?hotelId=${hotelId}"class="is-active">اتاق های هتل</a></li>
                           <li><a  href=""class="is-active">اضافه کردن اتاق</a></li>
            </ul>
        </div>
        <div class="main-content  ">
                                <div class="user-info bg-white padding-30 font-size-13">
                                    <form action="/hotel/rooms/add?hotelId=${hotelId}" method="post" enctype="multipart/form-data">
                                        <div class="profile__info border cursor-pointer text-center">
                                            <div class="avatar__img"><img src="/images/addroom.png" class="avatar___img">
                                                <input name="files" type="file" accept="image/*" class="hidden avatar-img__input" multiple>
                                                <div class="v-dialog__container" style="display: block;"></div>
                                                <div class="box__camera default__avatar"></div>
                                            </div>
                                        </div>
                                        <h1 style="text-align=center;">افزودن هتل</h1><br><br>
                                                                                <input class="text" type="number" placeholder="شماره اتاق" name="roomNumber" min="1">
                                                                                <input class="text" placeholder="نوع اتاق" name="type">
                                                                                <input class="text" placeholder="قیمت اتاق" name="price" type="number" min="1">
                                                                                <br>
                                                                                <br>
                                                                                <input type="submit" class="btn btn-netcopy_net" value="اضافه کردن">
                                    </form>
            </div>
        </div>
    </div>
</body>
<script src="/js/jquery-3.4.1.min.js"></script>
<script src="/js/js.js"></script>
</html>
