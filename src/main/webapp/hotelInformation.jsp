<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>Room Details</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1> Welcome </h1>
        <p><h2> Room type </h2>${room.type}</p>
       <p> <h2> Reserve</h2>
        <c:choose>
            <c:when test="${room.reserved==true}">
                otagh reserv shode
                <br />
            </c:when>
            <c:otherwise>
               otagh reserve nashode
                <br />
            </c:otherwise>
        </c:choose> </p>
        <p><h2> staff position </h2> ${staffPosition.positionName}<p>
    </body>
</html>