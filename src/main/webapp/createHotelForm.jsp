<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>add Hotel</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>Create hotel form</h1>
        <form action="/hotels/add" method="POST" enctype="utf8">

            Name: <input name="name" type="text"><br>

            City: <input name="city" type="text"><br>

            Address: <input name="address" type="text"><br>

            Summary: <input name="summary" type="text"><br>

            Description: <input name="description" type="text"><br>

            RoomNumber: <input name="roomNumber" type="number"><br>

            FloorNumber: <input name="floorNumber" type="number"><br>

            <input type="submit" value="Create">
        </form>
    </body>
</html>