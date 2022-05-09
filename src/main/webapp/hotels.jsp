<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>add room</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>hotels</h1>
        <c:forEach items="${hotels}" var="hotel">
            <p>
                <a href="/hotel?hotelId=${hotel.id}">${hotel.name}</a>
            </p>
        </c:forEach>
        <p><a href="/hotels/add"> create hotel</a></p>
    </body>
</html>