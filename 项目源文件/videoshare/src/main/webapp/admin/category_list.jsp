<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<base href="/" />
<title></title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
</head>
<body>
	<form method="post" action="">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 视频类别列表</strong>
			</div>
			<div class="padding border-bottom">
				<button type="button" class="button border-yellow"
					onclick="javascript:location='category/add'">
					<span class="icon-plus-square-o"></span>增加视频类别
				</button>
			</div>
			<table class="table table-hover text-center">
				<tr>
					<th>序号</th>
					<th>类别名称</th>
					<th>操作</th>
				</tr>
				<c:forEach items="${categories}" var="category" varStatus="s">
					<tr>
						<td>${s.count}</td>
						<td>${category.name}</td>
						<td>
							<div class="button-group">
								<a class="button border-main"
									href="javascript:void(0)"
									onclick="javascript:location.href='category/update/${category.id}'">
									<span class="icon-edit"></span> 修改</a> <a class="button border-red"
									href="javascript:void(0)"
									onclick="javascript:location.href='category/del/${category.id}'">
								<span class="icon-trash-o"></span> 删除</a>
							</div>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</form>
</body>
</html>