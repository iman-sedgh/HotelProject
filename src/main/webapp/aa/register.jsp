<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>Registration</title>
        <link href="<c:url value="/css/common.css"/>" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>form</h1>
        <form action="/register" method="POST" enctype="utf8">
            <div>
                <label>First Name</label>
                <input name="firstName" type="text">
            </div>
            <div>
                <label>Last Name</label>
                <input name="lastName" type="text">
            </div>
            <div>
                <label>Email</label>
                <input name="email" type="email">
            </div>
            <div>
                <label>Username</label>
                <input name="username" type="text">
            </div>
            <div>
                <label>Password</label>
                <input name="password" type="password">
            </div>
            <div>
                <label>Matching Password</label>
                <input name="matchingPassword" type="password">
            </div>
            <input type="submit" value="signup">
        </form>
    </body>
</html>