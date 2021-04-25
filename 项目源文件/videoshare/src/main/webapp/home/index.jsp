<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<base href="${base}/" />
<title>个人中心首页</title>
<link rel="stylesheet" href="css/index.css" />
</head>

<body>
	<div
		class="v3-app-layout layoutstatus-header--Normal layoutstatus-side--Hidden limitWidth">
		<jsp:include page="../header.jsp"></jsp:include>
		<div class="v3-app-layout__content">
			<div class="UserCenter">
				<div class="UserCenter__tab">
					<h4 class="UserCenter__tab-title">个人中心</h4>
					<jsp:include page="left1.jsp"></jsp:include>
				</div>
				<div class="UserCenter__content">
					<div class="UserCenter__setting">
						<div class="compoent-sortTabs__container UserCenter__Setting__tab">
							<div class="compoent-sortTabs__tabItemWrapper first">
								<div class="compoent-sortTabs__tabItem active first">
									<span>基本信息</span>
									<div class="ink"></div>
								</div>
							</div>
							<div class="compoent-sortTabs__appendNode"></div>
						</div>
						<div class="UserCenter__setting__content">
							<div class="UserCenter__profile">
								<div class="UserCenter__profile__title">账号信息</div>
								<div class="UserCenter__profile__content">
									<div class="UserCenter__profile__right">
										<div class="UserCenter__profile__item">
											<div class="UserCenter__profile__item-wrapper">
												<div class="UserCenter__profile__item-field">头像</div>
												<div class="UserCenter__profile__item-value">
													<div class="component-avatar UserCenter__profile__avatar"
														style="width: 48px; height: 48px; border: none;">
														<span class="component-avatar__inner"><picture>
															<source srcset="" type="image/webp">
															<img class="BU-MagicImage" src="images/tx.jpg" alt="" style="width: 100%; height: 100%; transition: transform 0.3s ease 0s; object-fit: cover;"></picture></span>
													</div>
												</div>
												<div class="UserCenter__profile__item-edit ">更换</div>
											</div>
										</div>

										<div class="UserCenter__profile__item">
											<div class="UserCenter__profile__item-wrapper">
												<div class="UserCenter__profile__item-field">账号:</div>
												${user.account}
												<%--<div class="UserCenter__profile__item-edit ">更换</div>--%>
											</div>
										</div>
										<div class="UserCenter__profile__item">
											<div class="UserCenter__profile__item-wrapper">
												<div class="UserCenter__profile__item-field">邮箱:</div>
												${user.email}
												<%--<div class="UserCenter__profile__item-edit ">更换</div>--%>
											</div>
										</div>
										<div class="UserCenter__profile__item">
											<div class="UserCenter__profile__item-wrapper">
												<div class="UserCenter__profile__item-field">视频数:</div>
												${user.video_num}
												<%--<div class="UserCenter__profile__item-edit ">更换</div>--%>
											</div>
										</div>
										<div class="UserCenter__profile__item">
											<div class="UserCenter__profile__item-wrapper">
												<div class="UserCenter__profile__item-field">注册时间:</div>
												${user.reg_time}
												<%--<div class="UserCenter__profile__item-edit ">更换</div>--%>
											</div>
										</div>
									</div>
								</div>
								<input type="file"
									accept="image/png, image/jpeg, image/jpg, image/jpg2, image/webp, image/bmp"
									style="display: none;">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>