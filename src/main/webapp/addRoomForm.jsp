<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>add room</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>add room form</h1>
        <form action="/hotel/rooms/add?hotelId=${hotelId}" method="post">
            type: <input type="text" name="type">
            <input type="submit" value="Add">
        </form>
    </body>
</html>