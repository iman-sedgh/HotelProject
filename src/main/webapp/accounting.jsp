<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>Accounting</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>مجموع درآمد کارکنان</h1>

<c:set var="total" value="${0}"/>
<c:forEach var="staff" items="${hotel.staffs}">
    <c:set var="total" value="${total + staff.salary}" />
</c:forEach>
<a>${total}ریال</a>

        <h1>درآمد هتل </h1>



    </body>
</html>