<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>蜗牛短视频分享平台</title>
<base href="/" />
<link rel="stylesheet" href="css/index.css" />
<link rel="stylesheet" href="css/comment.css" />
<script src="js/jquery-3.3.1.js"></script>
<script>
		$(function(){
			//为收藏事件注册按钮
			$("favor").click(function (){
				alert("ok")
				//发送请求到Controller
				$.getJSON("favor/add/${video.id}",function (r){
					if(r.code==200){
						alert("收藏成功");
					}
				})
			});
		} )
	</script>
</head>
<body>
	<div
		class="v3-app-layout layoutstatus-header--Normal layoutstatus-side--Hidden limitWidth header-theme--Dark">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="v3-app-layout__content">
			<div class="teleplayPage__wrapper">
				<div class="teleplayPage teleplayPage--theater">
					<div class="teleplayPage__main">
						<div class="teleplayPage__playerSection">
							<div class="teleplayPage__playerSection__left">
								<div class="teleplay__playerContainer__wrapper">
									<div class="xgplayerContainer teleplay__playerContainer">
											<video src="${video.url}" controls="controls" width="1530" height="700"></video></div>
								</div>
								<div class="teleplayPage__interactionZone">
									<div class="teleplayPage__interactionZone__LeftActions">
										<div class="action-collect">
											<i class="action-collect__lottie"></i><span
												class="action-collect__txt" id="favor"><a href="favor/add/${video.id}">收藏</a></span>
										</div>
										<div class="action-collect">
											<i class="action-collect__lottie"></i><span
												class="action-collect__txt" id="praise"><a href="praise/add/${video.id}">点赞</a></span>
										</div>

										<div class="action-collect">
											<i class="action-collect__lottie"></i><span
												class="action-collect__txt" id="pl"><a href="video/comment/add/${video.id}">评论</a></span>
										</div>
										<span
											class="video_action_item action video_action_item--tirggerAnywhere"><i
											class="icon-share2"></i><span>分享</span></span>
									</div>
									<form action="video/comment/${video.id}">
										<%--<input name="comment1" type="text" style="width:80%;height:30px;">
                                        <input type="submit" value="评论" >--%>

										<div class="input_control">
											<input name="comment1" type="text" class="form_input" placeholder="请 输 入 评 论"/>
											<input type="submit" value="评论" >
										</div>
									</form>
								</div>

							</div>

							<div class="teleplayPage__playerSection__right fold"></div>
						</div>
					</div>
				</div>
				<div class="xiguaBuddyPub xiguaBuddyPub__Lvideo"
					data-album-id="6862666133141455367"
					data-episode-id="6862904232702378503"></div>
			</div>
		</div>
	</div>



</body>
</html>