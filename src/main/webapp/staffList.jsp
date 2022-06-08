<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0;">
    <title>لیست کارمند</title>
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
           <li class="item-li i-dashboard is-active"><a href="/panel/hotel?hotelId=${hotel.id}">اطلاعات هتل</a></li>
           <br>
                                   <li class="item-li i-users"><a href="/hotel/staffs/add?hotelId=${hotel.id}">اضافه کردن کارمند</a></li>

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
                <li><a href="/home.jsp">ادمین پنل</a></li>
                <li><a href="/user/hotels" class="is-active">هتل های شما</a></li>
                <li><a <a href="/hotel/staffs?hotelId=${hotel.id}"class="is-active">کارمندان هتل</a></li>
            </ul>
        </div>
                <div class="table__box">
                    <table class="table">

                        <thead role="rowgroup">
                        <tr role="row" class="title-row">
                            <th>نام</th>
                            <th>نام خانوادگی</th>
                            <th>رده کاری</th>
                            <th>آدرس</th>
                            <th>کد ملی</th>
                            <th>شماره تلفن</th>
                            <th>حقوق</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${hotel.staffs}" var="staff">
                            <tr role="row" >
                                <td><a>${staff.name}</a></td>
                                <td><a>${staff.familyName}</a></td>
                                <td><a>${staff.staffPosition.positionName}</a></td>
                                <td><a>${staff.address}</a></td>
                                <td><a>${staff.nationalCode}</a></td>
                                <td><a>${staff.phoneNumber}</a></td>
                                <td><a>${staff.salary}ریال</a></td>
                                <td>
                                    <a href="/hotel/staffs/remove?staffId=${staff.id}&hotelId=${hotel.id}" class="item-delete mlg-15" title="حذف"></a>
                                    <a href="/hotel?hotelId=${hotel.id}" target="_blank" class="item-eye mlg-15" title="مشاهده"></a>
                                    <a href="" class="item-edit " title="ویرایش"></a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
    </div>
</body>
<script src="/js/jquery-3.4.1.min.js"></script>
<script src="/js/js.js"></script>
</html>
