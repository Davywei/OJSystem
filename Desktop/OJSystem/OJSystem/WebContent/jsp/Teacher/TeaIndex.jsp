<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
<link rel="SHORTCUT ICON" href="${pageContext.request.contextPath}/resources/image/logo.png">
<link rel="BOOKMARK" href="${pageContext.request.contextPath}/resources/image/logo.png">
 <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
 <link href="${pageContext.request.contextPath}/resources/css/index.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/umeditor1_2_2-utf8-jsp/themes/default/css/umeditor.css"
	type="text/css" rel="stylesheet">
 <script charset="utf-8"
	src="${pageContext.request.contextPath}/resources/umeditor1_2_2-utf8-jsp/umeditor.config.js"></script> 
 <script charset="utf-8" src="${pageContext.request.contextPath}/resources/umeditor1_2_2-utf8-jsp/umeditor.min.js"></script>
 <script src="${pageContext.request.contextPath}/resources/umeditor1_2_2-utf8-jsp/lang/zh-cn/zh-cn.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script> 
</head>
<body ng-controller="managerIndexCtr">

	<div id="topNav">
		<div class="navbar navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container-fluid">
					<a class="btn btn-navbar" data-toggle="collapse"
						data-target=".nav-collapse"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</a> <a class="brand" href="javascript:;"><i
						class="icon-laptop icon-large"></i>&nbsp;Online Judge&nbsp;管理后台</a>
					<div class="nav-collapse collapse">
						<ul class="nav pull-right">
							<li class="dropdown"><a href="javascript:;"
								class="dropdown-toggle"> <i class="icon-user" ></i>
									欢迎：{{nickname}}
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="leftNav">
		<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
			<li onclick="selectLi(this)"><a href="#/index">系统管理<i
					class="icon-chevron-right"></i></a></li>
			<li onclick="selectLi(this)"><a href="#/manager/index">教师管理<i
					class="icon-chevron-right"></i></a></li>
			<li onclick="selectLi(this)"><a href="#/user/index">学生管理<i
					class="icon-chevron-right"></i></a></li>
			<li onclick="selectLi(this)"><a href="#/problemType/index">题目类别管理<i
					class="icon-chevron-right"></i></a></li>
			<li onclick="selectLi(this)"><a href="#/problem/index">题目管理<i
					class="icon-chevron-right"></i></a></li>
			<li onclick="selectLi(this)"><a href="#/announcement/index">公告管理<i
					class="icon-chevron-right"></i></a></li>
		</ul>
	</div>

	<div id="content">
		<div ng-view></div>
	</div>
	<script type="text/javascript">
		function selectLi(li) {
			var allLi = $("#leftNav ul li");
			for (var n = 0; n < allLi.length; n++) {
				$(allLi[n]).removeClass("active");
			}

			$(li).addClass("active");
		};

		function check() {
			var allLi = $("#leftNav ul li");
			// 获取#后面的内容
			var path = window.location.hash;
			if (path == "") {
				$(allLi[0]).addClass("active");
				return;
			}
			for (var n = 0; n < allLi.length; n++) {
				if ($(allLi[n]).html().indexOf(path) > -1) {
					$(allLi[n]).addClass("active");
				}
			}
		}

		function getNickname(){
			
			$.ajax({
				type : "get" , 
				url : "${pageContext.request.contextPath}/User/getNickName",
				async : false,
				dataType : "json",
				success : function(data) {
					
				}
			})
				
			
			
		}
		
		check();
	</script>
</body>