<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>Hotel Information</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1> Welcome to ${hotel.name}</h1>
        <p><h2> Room type </h2>${room.type}</p>

        <h1>Rooms</h1>
        <c:forEach items="${hotel.rooms}" var="room">
            <a href="/hotel/rooms/remove?hotelId=${hotel.id}&roomId=${room.id}">
                <span>${room.type}</span>
            </a>
        </c:forEach>
        <c:forEach items="${hotel.images}" var="image">
            <img src="/${image}" alt="image">
        </c:forEach>
        <p><a href="/hotel/rooms/add?hotelId=${hotel.id}">add room</a></p>
        <br>
        <h1>Staffs</h1>
        <c:forEach items="${hotel.staffs}" var="staff">
            <a href="/hotel/staffs/remove?hotelId=${hotel.id}&staffId=${staff.id}">
                <span>${staff.positionName}</span>
            </a>
        </c:forEach>
        <p><a href="/hotel/staffs/add?hotelId=${hotel.id}">add staff</a></p>
                <p><a href="/user/hotels"> کارمندان شما</a></p>
        <p><a href="/hotel/staffs/add?hotelId=${hotel.id}">add staff</a></p>
        <p><a href="/user/hotels">تمام هتل های شما</a></p>
    </body>
</html>