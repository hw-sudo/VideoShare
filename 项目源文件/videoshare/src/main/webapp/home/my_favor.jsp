<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <base href="${base}/"/>
    <title>我的收藏</title>
    <link rel="stylesheet" href="css/index.css"/>
</head>

<body>

<%
    Object message = request.getAttribute("msg");
    if(message!=null && !"".equals(message)){
%>
<script type="text/javascript">
    alert("<%=request.getAttribute("msg")%>");
</script>
<%} %>

<div class="v3-app-layout layoutstatus-header--Normal layoutstatus-side--Hidden limitWidth">
    <jsp:include page="../header.jsp"></jsp:include>
    <div class="v3-app-layout__content">
        <div class="UserCenter">
            <div class="UserCenter__tab">
                <h4 class="UserCenter__tab-title" >我的收藏</h4>
                <jsp:include page="left4.jsp"></jsp:include>
            </div>
            <div class="UserCenter__content">
                <div class="UserCenter__setting">
                    <div class="compoent-sortTabs__container UserCenter__Setting__tab">
                        <div class="compoent-sortTabs__tabItemWrapper first">
                            <div class="compoent-sortTabs__tabItem active first">
                                <span>我的收藏</span>
                                <div class="ink"></div>
                            </div>
                        </div>
                        <div class="compoent-sortTabs__appendNode"></div>
                    </div>
                    <div class="UserCenter__setting__content">
                        <div class="UserCenter__profile">
                            <div class="UserCenter__profile__content">
                                <div class="FeedContainer__itemWrapper">
                                    <c:forEach var="video" items="${videos}" varStatus="s">
                                        <div class="VerticalFeedCard VerticalChannelBlockList__item">
                                            <a class="VerticalFeedCard__coverWrapper" title="${video.title}"
                                               href="video/view/${video.id}" target="_blank"
                                               data-disable_default="true">
                                                <picture>
                                                    <source srcSet="" type="image/webp"/>
                                                    <img class="BU-MagicImage"
                                                         style="width: 100%; height: 100%; transition: transform 0.3s; object-fit: cover"
                                                         src="${video.cover}" alt=""/></picture>
                                            </a><a class="VerticalFeedCard__title" title=""
                                                   href="video/view/${video.id}"
                                                   target="_blank" data-disable_default="true">${video.title}</a>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>