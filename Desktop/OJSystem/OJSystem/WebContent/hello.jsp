<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在线评测</title>
<!-- <link rel="SHORTCUT ICON" href="resources/image/logo.png">
<link rel="BOOKMARK" href="../image/logo.png"> -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
body,html {
	width: 100%;
	height: 100%;
	background: #444 url("resources/image/login.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-position: center center;
}

#content {
	position: absolute;
	top: 50%;
	height: 300px;
	margin-top: -150px;
	width: 100%;
	text-align: center;
}

#title {
	position: relative;
	top: -32%;
	display: inline-block;
	width: 300px;
	height: 100%;
	color: white;
	text-align: right;
	margin-right: 30px;
}

#round {
	width: 100px;
	height: 100px;
	border-radius: 50px 50px 50px 50px;
	background: rgba(55, 236, 186, 1);
	text-align: center;
	display: inline-block;
}

#round h3 {
	margin: 0;
	padding: 0;
	margin-top: 25px;
}

#form {
	position: relative;
	background: rgb(255, 255, 255);
	width: 300px;
	height: 140%;
	display: inline-block;
	margin-right: 180px;
	text-align: left;
	padding-left: 20px;
	padding-right: 20px;
	padding-top: 50px;
}

#form div div {
	padding-bottom: 20px;
}

#submitButton {
	width: 100%;
}

#author {
	color: black;
	position: absolute;
	bottom: 0;
	width: 100%;
	text-align: center;
}
</style>
</head>
<body>
	<div id="content">
		<div id="title">
			<h1>
				Online Judge<br />
			</h1>
			<div id="round">
				<h3>
					用户<br>登录
				</h3>
			</div>
		</div>
		<div id="form">
		   <form id = "formValue" >
			<div class="form-group">
			    <div>职称：</div>
			    <div class="form-control" >
				<select id="position">
				   <option value="教师" >教师</option>
				   <option value="学生" selected="selected">学生</option>
				</select>
				</div>
				<div>账号：</div>
				<div>
					<input type="text" class="form-control" id="account">
				</div>
				<div>密码：</div>
				<div>
					<input type="password" class="form-control" id="password">
				</div>
			</div>
			</form>
				<p id="message"></p>
				<button id="submitButton" class="btn btn-primary" type="submit"
					onclick="submit()">登陆</button>
				
		</div>
	</div>
	<p id="author">
		<a href="#">@by 刘正伟</a>
	</p>


<script src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
	function submit() {
	
		$.ajax({
			type : "post",
			url : "${pageContext.request.contextPath}/User/queryUser",
			data :
				
				  {
				position : $('#position option:selected').val(),
				account : $("#account").val(),
				password : $("#password").val(),
				/*  $("#formValue").serialize(), */
				
			}, 
			async : false,
			dataType : "json",
			success : function(data) {
				if (data.success) {
					if("教师登录"==(data.msg)){
					window.location = "${pageContext.request.contextPath}/jsp/Teacher/TeaIndex.jsp";
					}else{
						window.location = "${pageContext.request.contextPath}/index.html"
					}
					}else {
					$("#message").html(data.msg).css("color","red");
				}
			},
			error : function(data) {
				$("#message").html(data.msg);
			},
		});
	}
</script>
</body>

</html>