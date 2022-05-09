<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>add room</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>add staff form</h1>
        <form action="/hotel/staffs/add?hotelId=${hotelId}" method="post">
            type: <input type="text" name="positionName">
            <input type="submit" value="Add">
        </form>
    </body>
</html>