<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <base href="${base}/"/>
    <link rel="stylesheet" href="css/index.css"/>
</head>

<body>
<div class="compoent-sortTabs__container">
    <div class="compoent-sortTabs__tabItemWrapper">
        <div class="compoent-sortTabs__tabItem">
            <i class="icon-person2"></i><span><a href="user/index">账号信息</a></span>
            <div class="ink"></div>
        </div>
    </div>
    <div class="compoent-sortTabs__tabItemWrapper">
        <div class="compoent-sortTabs__tabItem">
            <i class="icon-vip"></i><span><a href="video/getView">观看历史</a></span>
            <div class="ink"></div>
        </div>
    </div>
    <div class="compoent-sortTabs__tabItemWrapper">
        <div class="compoent-sortTabs__tabItem">
            <i class="icon-vip"></i><span><a href="video/getMyVideo">我的视频</a></span>
            <div class="ink"></div>
        </div>
    </div>
    <div class="compoent-sortTabs__tabItemWrapper">
        <div class="compoent-sortTabs__tabItem">
            <i class="icon-vip"></i><span><a href="favor/myFavor" >我的收藏</a></span>
            <div class="ink"></div>
        </div>
    </div>
    <div class="compoent-sortTabs__tabItemWrapper">
        <div class="compoent-sortTabs__tabItem">
            <i class="icon-vip"></i><span><a href="praise/myPraise" >我的点赞</a></span>
            <div class="ink"></div>
        </div>
    </div>
    <div class="compoent-sortTabs__tabItemWrapper first">
        <div class="compoent-sortTabs__tabItem active first">
            <i class="icon-vip"></i><span><a href="home/video_add.jsp" >发布视频</a></span>
            <div class="ink"></div>
        </div>
    </div>
    <div class="compoent-sortTabs__appendNode"></div>
</div>
</body>

</html>