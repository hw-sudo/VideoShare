<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>查询用户</title>
</head>
<body>
<table border="1" width="50%" align="center">
    <tr>
        <th>ID</th>
        <th>用户名</th>
        <th>密码</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td><c:out value="${user.id}"/></td>
            <td><c:out value="${user.account}"/></td>
            <td><c:out value="${user.email}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
