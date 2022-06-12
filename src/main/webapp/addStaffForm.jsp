<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>add staff</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>add staff form</h1>

        <form action="/hotel/staffs/add?hotelId=${hotelId}" method="POST">

            staffPosition : <input type="text" name="positionName"><br>
            Salary: <input type="text" name="salary"><br>
            name: <input type="text" name="name"><br>
            familyName: <input type="text" name="familyName"><br>
            address: <input type="text" name="address"><br>
            nationalCode: <input type="text" name="nationalCode"><br>
            phoneNumber: <input type="text" name="phoneNumber"><br>
            <input type="submit" value="Add">
        </form>
    </body>
</html>