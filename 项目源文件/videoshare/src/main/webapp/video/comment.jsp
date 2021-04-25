<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>评论列表</title>
</head>
<body>
<table border="1" width="50%" align="center">
    <tr>
        <th>ID</th>
        <th>评论</th>
        <th>用户</th>
    </tr>
    <c:forEach var="item" items="${comments}">
        <tr>
            <td><c:out value="${item.id}"/></td>
            <td><c:out value="${item.comment}"/></td>
            <td><c:out value="${item.user_id}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
