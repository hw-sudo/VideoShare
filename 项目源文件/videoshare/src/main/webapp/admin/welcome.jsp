<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <base href="/"/>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head" id="add">
        <strong>首页</strong>
    </div>
    <div class="body-content">
        <form method="post" class="form-x" action="category/add">
            <div class="form-group">
                <div class="label">
                    <label>Welcome into System!</label>
                </div>

            </div>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit">
                        添加用户</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>