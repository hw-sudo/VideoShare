<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="${base}/" />
<title>后台管理中心</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
</head>
<body style="background-color: #f2f9fd;">
	<div class="header bg-main">
		<div class="logo margin-big-left fadein-top">
			<h1>蜗牛短视频分享管理系统</h1>
		</div>
		<div class="head-l">
			<a class="button button-little bg-green" href="admin/welcome.jsp"
				target="right"> <span class="icon-home"></span>管理首页
			</a> &nbsp;&nbsp; <a class="button button-little bg-red"
				href="/admin/logout"> <span class="icon-power-off"></span>退出登录
			</a> Welcome! ${sessionScope.admin.account}!
		</div>
	</div>
	<div class="leftnav">
		<div class="leftnav-title">
			<strong><span class="icon-list"></span>菜单列表</strong>
		</div>
		<h2>
			<span class="icon-user"></span>视频管理
		</h2>
		<ul>
			<li><a href="category/add" target="right"><span
					class="icon-caret-right"></span>增加视频分类</a></li>
			<li><a href="category/list" target="right"><span
					class="icon-caret-right"></span>视频分类列表</a></li>
			<li><a href="video/list" target="right"><span
					class="icon-caret-right"></span>视频列表</a></li>
		</ul>

		<h2>
			<span class="icon-user"></span>用户管理
		</h2>
		<ul>
			<li><a href="user/list" target="right"><span
					class="icon-caret-right"></span>用户列表</a></li>
			<li><a href="javascipt:void(0)" target="right"><span class="icon-caret-right"></span>报表统计</a></li>
		</ul>
		<h2>
			<span class="icon-pencil-square-o"></span>个人中心
		</h2>
		<ul>
			<li><a href="admin/pwd_update.jsp" target="right"><span
					class="icon-caret-right"></span>修改密码</a></li>
		</ul>
	</div>
	<div class="admin">
		<iframe src="admin/welcome.jsp" name="right" width="100%" height="100%"></iframe>
	</div>
</body>
</html>