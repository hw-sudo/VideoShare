<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>观看历史</title>
</head>
<body>
<table border="1" width="50%" align="center">
    <tr>
        <th>ID</th>
        <th>视频标题</th>
        <th>观看时间</th>
    </tr>
    <c:forEach var="view" items="${views}">
        <tr>
            <td><c:out value="${view.id}"/></td>
            <td><c:out value="${view.title}"/></td>
            <td><c:out value="${view.view_time}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
