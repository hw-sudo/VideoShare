<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <title>登录</title>
    <link rel="stylesheet" href="../css/pintuer.css">
    <link rel="stylesheet" href="../css/admin.css">
    <script type="text/javascript">

    </script>
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom"></div>
            <form action="login" method="post">
                <div class="panel loginbox">
                    <div class="text-center margin-big padding-big-top">
                        <h1>后台管理中心</h1>
                    </div>
                    <div class="panel-body"
                         style="padding:30px; padding-bottom:10px; padding-top:10px;">
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="text" class="input input-big" name="account"
                                       placeholder="登录账号" value=""/> <span
                                    class="icon icon-user margin-small"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="field field-icon-right">
                                <input type="password" class="input input-big" name="password"
                                       placeholder="登录密码" value="" /> <span
                                    class="icon icon-key margin-small"></span>
                            </div>
                        </div>
                        <%--<div class="form-group">
                            <div class="field">
                                <input type="text" class="input input-big" name="code"
                                       placeholder="填写右侧的验证码" /> <img src="safecode"
                                                                      alt="" width="100" height="32" class="passcode"
                                                                      style="height:43px;cursor:pointer;"
                                                                      onclick="this.src=this.src+'?'">

                            </div>
                        </div>--%>
                        <div class="tips">${msg}</div>
                    </div>
                    <div style="padding:30px;">
                        <input type="submit"
                               class="button button-block bg-main text-big input-big"
                               value="登录">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>