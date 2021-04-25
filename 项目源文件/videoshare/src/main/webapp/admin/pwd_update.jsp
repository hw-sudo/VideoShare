<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<base href="/" />
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
</head>
<body>

	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>修改密码</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="admin/updatePwd">
				<div class="form-group">
					<div class="label">
						<label>原密码：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="pwd0" value="" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>新密码：</label>
					</div>
					<div class="field">
						<input type="password" class="input w50" name="pwd1" value="" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>确认密码：</label>
					</div>
					<div class="field">
						<input type="password" class="input w50" name="pwd2" value="" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<button class="button bg-main icon-check-square-o" type="submit">
							提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>