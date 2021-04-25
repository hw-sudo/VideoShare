<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>蜗牛视频</title>
<base href="/" />
<link rel="stylesheet" href="css/index.css" />
</head>

<body>
	<div
		class="v3-app-layout layoutstatus-header--Normal layoutstatus-side--Normal limitWidth">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="v3-app-layout__side">
			<div class="v3-app-layout__side__Normal">
				<div class="v3-app-layout__side__Normal__contentWrapper">
					<div class="v3-app-layout__side__block-top">
						<a class="v3-app-layout__side__item active" href="/"><i
							class="icon-home"></i><span>首页</span></a>
					</div>
					<div class="v3-app-layout__side__block-channel">
						<div class="v3-app-layout__side__block-title">特色频道</div>
						<a class="v3-app-layout__side__item" href=""><i
							class="icon-cinema"></i><span>影视</span></a><a
							class="v3-app-layout__side__item" href=""><i
							class="icon-youxi"></i><span>游戏</span></a><a
							class="v3-app-layout__side__item" href=""><i
							class="icon-music"></i><span>音乐</span></a><a
							class="v3-app-layout__side__item" href=""><i
							class="icon-vlog"></i><span>VLOG</span></a><a
							class="v3-app-layout__side__item" href=""><i
							class="icon-shisiwu"></i><span>十四五</span></a><a
							class="v3-app-layout__side__item" href=""><i
							class="icon-documentary"></i><span>纪录片</span></a>
					</div>
					<div class="v3-app-layout__side__block-user">
						<div class="v3-app-layout__side__block-title">我的</div>
						<a class="v3-app-layout__side__item" href="video/getView">
							<i class="icon-history"></i><span>观看历史</span></a>
						<a class="v3-app-layout__side__item" href="favor/myFavor">
							<i class="icon-side_collect"></i><span>我的收藏</span></a>
					</div>
					<div class="v3-app-layout__side__block-agreement">
						<a href="" target="_blank">关于我们</a><a href="" target="_blank">成为创作者</a><br />
						<a href="" target="_blank">侵权投诉</a><a href="" target="_blank">用户服务协议</a><br />
						<a href="" target="_blank">隐私政策</a><a href="" target="_blank">其他政策与协议</a>
					</div>
				</div>
			</div>
		</div>
		<div class="v3-app-layout__content">
			<div class="categoryContent__wrapper">
				<div class="categoryContent categoryPage_home">
					<div
						class="FeedContainer channelBlocklist channelBlocklist--narrow categoryPage_home__LvideoRecomment">
						<div class="FeedContainer__content">
							<div class="FeedContainer__items">
								<c:forEach items="${videos}" var="video" varStatus="s">
									<div class="FeedContainer__itemWrapper">
										<div class="VerticalFeedCard VerticalChannelBlockList__item">
											<a class="VerticalFeedCard__coverWrapper" title=""
												href="video/view/${video.id}" target="_blank" data-disable_default="true">
												<picture>
												<source srcSet="" type="image/webp" />
												<img class="BU-MagicImage"
													style="width: 100%; height: 100%; transition: transform 0.3s; object-fit: cover"
													src="${video.cover}" alt="" /> </picture>
											</a><a class="VerticalFeedCard__title" title="" href="video/view/${video.id}"
												target="_blank" data-disable_default="true">${video.title}</a>
											<div class="VerticalFeedCard__bottomInfo"></div>
										</div>
									</div>
									<c:if test="${s.count mod 5 eq 0 }">
										<br />
									</c:if>
								</c:forEach>
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