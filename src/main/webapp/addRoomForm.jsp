<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>add room</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>add room form</h1>
        <form action="/hotel/rooms/add?hotelId=${hotelId}" method="POST">
            <input class="text" placeholder="شماره اتاق" name="roomNumber" type="number" min="1"><br>
            <br>
            <input class="text" placeholder="تعداد خواب" name="type" type="number" min="1"><br>
            <br>
            <input class="text" placeholder="هزینه اتاق" name="price" type="number" min="1"><br>
            <br>
            <input type="submit" value="ثبت اتاق">
        </form>
    </body>
</html>