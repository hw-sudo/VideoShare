<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div class="v3-app-layout__header">
		<div class="siteHeader">
			<div class="siteHeader__inner">
				<div class="v3-app-layout__logo-wrap">
					<a class="logo" href="video/index" title="首页">首页</a>
				</div>
				<div class="search-wrap">
					<input type="text" class="input" />
					<div class="SearchPreset show" style="height: 33px; margin: 4px 0">
						<ul></ul>
					</div>
					<a class="search-btn"><i class="icon-search btn__search"></i><span>搜索</span></a>
					<div class="SearchList ">
						<div class="SearchList__history" style="display: none">
							<h5 class="SearchList__history__title">搜索历史</h5>
							<a class="SearchList__history__clear">清空历史</a>
						</div>
					</div>
				</div>
				<div class="right-wrap">
					<ul class="nav-list">
						<li class=""><a href="home/video_add.jsp" target="_blank" rel="nofollow">
								<div>
									<i class="icon-publish-video"></i>
								</div>发布视频
						</a></li>
					</ul>
					<div class="BU-Component-Header-Avatar">
						<div class="BU-Component-Header-Avatar__container">
							<a href="/home/index.jsp" target="_blank" data-disable_default="true">
								<div class="BU-Component-Header-Avatar__image"
									style="display: inline-block; width: 44px; height: 44px; border-radius: 22px; background-size: 100%; background-image: url(//sf1-ttcdn-tos.pstatp.com/img/mosaic-legacy/3792/5112637127~360x360.image); cursor: pointer">
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>