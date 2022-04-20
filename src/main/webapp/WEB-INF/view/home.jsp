<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 31010-67-02
  Date: 19/04/2022
  Time: 08:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>


    <h2>Home Page - Yoohoo!!!!</h2>
<br>

Welcome to the home page !
    <hr>
    <p>
        User: <security:authentication property="principal.username"/>
        <br><br>
        Role(s): <security:authentication property="principal.authorities"/>
    </p>

    <security:authorize access="hasRole('MANAGER')">
    <hr>
    <p>
        <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
        (Only for Manager peeps)
    </p>

    </security:authorize>
    <security:authorize access="hasRole('ADMIN')">
    <hr>
    <p>
        <a href="${pageContext.request.contextPath}/systems">Admin Systems</a>
        (Only for Admin peeps)
    </p>
    </security:authorize>
    <hr>

    <form:form action="${pageContext.request.contextPath}/logout" method="post">

        <input type="submit" value="Logout">

    </form:form>


</body>
</html>
