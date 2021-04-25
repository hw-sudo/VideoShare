<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <base href="/"/>
    <title></title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script>
        window.addEventListener("load",function(){
            document.getElementById("categoryId").value="${condition.categoryId}"
            document.getElementById("pageSelete").value="${pageInfo.pageNum}"

        })

        function goPage(pageNum){
            document.getElementById("pageNum").value=pageNum;
            document.getElementById("queryForm").submit();

        }

    </script>
</head>
<body>
    <div class="panel admin-panel">
        <div class="panel-head">
            <strong class="icon-reorder"> 视频列表</strong>
        </div>
        <div class="padding border-bottom">
            <form method="get" action="video/list">
                <input type="hidden" name="opr" value="query" />
                <ul class="search" style="padding-left:10px;">
                    <li>视频名：<input type="text"
                                    name="name" class="input" value="${condition.title}"
                                    style="width:150px; line-height:17px;display:inline-block" />
                    </li>
                    <li>发布时间：<input type="text"
                                    name="" class="input" value=""
                                    style="width:150px; line-height:17px;display:inline-block" />-
                        <input type="text"
                               name="" class="input" value=""
                               style="width:150px; line-height:17px;display:inline-block" />
                    </li>

                    <li><select name="categoryId" class="input" id="klassId"
                                style="width:200px; line-height:17px;">
                        <option value="0">不限</option>
                        <c:forEach items="${categoryId}" var="category">
                            <option value="${category.id}">${category.name}</option>
                        </c:forEach>
                    </select></li>
                    <li><button class="button border-main icon-search">搜索</button></li>
                </ul>
            </form>
        </div>
        <table class="table table-hover text-center">
            <tr>
                <th>序号</th>
                <th>视频名称</th>
                <th>视频地址</th>
                <th>类别</th>
                <th>作者</th>
                <th>发布时间</th>
                <th>播放数</th>
                <th>点赞数</th>
                <th>状态</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${pageInfo.list}" var="video" varStatus="s">
                <tr>
                    <td>${s.count}</td>
                    <td>${video.title}</td>
                    <td>${video.url}</td>
                    <td>${video.category.name}</td>
                    <td>${video.user.account}</td>
                    <td>${video.pubTime}</td>
                    <td>${video.viewNum}</td>
                    <td>${video.praiseNum}</td>
                    <td>${video.status}</td>
                    <td>
                        <div class="button-group">
                            <a class="button border-main" href=""><span
                                    class="icon-edit"></span> 修改</a> <a class="button border-red"
                                                                        href="javascript:void(0)"
                                                                        onclick="javascript:location.href=''"><span
                                class="icon-trash-o"></span> 删除</a>
                        </div>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="8">
                    <div class="pagelist">
                        <c:forEach begin="1" end="${pageInfo.pages}" var="p">
                            <a href="javascript:void(0)" onclick="goPage(${p})">${p}</a>
                        </c:forEach>
                        <select onchange="goPage(this.value)" id="pageSelete">
                            <c:forEach begin="1" end="${pageInfo.pages}" var="p">
                                <option>${p}</option>
                            </c:forEach>
                        </select>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>