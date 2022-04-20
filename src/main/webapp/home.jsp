<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>Hotel Details</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
<h1> Welcome </h1>
<p><h2> Name </h2> ${hotel.name} </p>
<p><h2> city </h2> ${hotel.city} </p>
<p><h2> address </h2> ${hotel.address} </p>
<p><h2> number of rooms </h2> ${hotel.roomNumber} </p>
<p><h2> number of floors </h2> ${hotel.floorNumber} </p>
    </body>
</html>