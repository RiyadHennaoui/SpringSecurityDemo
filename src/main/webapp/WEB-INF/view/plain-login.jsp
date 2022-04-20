<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 31010-67-02
  Date: 19/04/2022
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Custom Login Page</title>
</head>
<body>
    <h3>My Custom Login Page</h3>
    <style>
        .failed{
            color: red;
        }
    </style>

    <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="post">

        <c:if test="${param.regError == true}">
            <i class="failed">Sorry You entered invalid username/password !! </i>
        </c:if>
        <p>
            User name: <input type="text" name="username"/>
        </p>
        <p>
            Password: <input type="password" name="password"/>
        </p>

        <input type="submit" value="Login"/>
    </form:form>
</body>
</html>
