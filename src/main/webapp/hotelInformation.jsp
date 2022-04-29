<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>Room Details</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1> Welcome to ${hotel.name}</h1>
        <h2> Room type </h2>
        <h3> ${room.type} </h3>
        <h2> Reserve  </h2>
       <h3> <c:choose>
            <c:when test="${room.reserved==true}">
                otagh reserv shode
                <br />
            </c:when>
            <c:otherwise>
               otagh reserve nashode
                <br />
            </c:otherwise>
        </c:choose> </h3>
        <h2> staff position </h2>
         <h3> ${staffPosition.positionName} </h3>
    </body>
</html>