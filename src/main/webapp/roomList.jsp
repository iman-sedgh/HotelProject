<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>add room</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>

        <h1>add room form</h1>
 <c:forEach items="${hotel.rooms}" var="room">

            <a>${room.type}</a>
            <a>${room.roomNumber}</a>

        </c:forEach>
         <c:forEach items="${hotel.rooms}" var="room">
                                    <tr role="row" >
                                        <td><a>${room.type}</a></td>
                                        <td><a>${room.roomNumber}</a></td>

                                    </tr>
                                            </c:forEach>

    </body>
</html>