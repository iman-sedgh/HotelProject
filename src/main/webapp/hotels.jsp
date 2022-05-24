<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>add room</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
        <meta name="format-detection" content="telephone=no">
        <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta charset="utf-8">
        <link rel="icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" type="text/css" href="css/css.css?family=Lato:400,400i,700,700i,900,900i">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/rtl.css">
        <link rel="stylesheet" href="css/htels.css">
    </head>
    <body>
        <h1>hotels</h1>
        <div class="container hotels">
            <c:forEach items="${hotels}" var="hotel">
                <div class="hotel">
                    <p><a href="/hotel?hotelId=${hotel.id}">
                        ${hotel.name}
                    </a></p>
                </div>
            </c:forEach>
        </div>
        <p><a href="/hotels/add"> create hotel</a></p>
    </body>
</html>