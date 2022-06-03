<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>Staff List</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Staff List</h1>

        ${hotel.name}
        <c:forEach items="${hotel.staffs}" var="staff">
                <p> <h2>staff position </h2>${staff.staffPosition.positionName}</p>
                <p> <h2>staff name </h2>${staff.name}</p>


        </c:forEach>
                <a href="/hotel?hotelId=${hotel.id}">بازگشت به صفحه اطلاعات</a>
    </body>
</html>
