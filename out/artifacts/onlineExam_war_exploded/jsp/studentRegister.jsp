<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/22
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="utf-8">
		<title>学生注册</title>
		<!-- 处理默认样式 -->
		<link rel="stylesheet" href="../statics/css/reset.css" />
		<!-- 首页公共样式 -->
		<link rel="stylesheet" href="../statics/css/index/indexStyle.css" />
		<!-- 引入网页标题图标 -->
		<link rel="shortcut icon" href="../statics/OES_favicon .ico" type="image/x-icon">
		<style type="text/css">
			#stuRegisterForm{
				margin-top: 80px;
			}
		</style>
	</head>
	<body>
		<form action="${pageContext.request.contextPath}/Register/addStu" method="post" id="stuRegisterForm">
			<legend>学生注册</legend>
			<p>
				<label>账&nbsp;号&nbsp;名：</label>
				<input type="text" id="adminName" name="account" placeholder="请输入账号名" />
			</p>
			<p>
				<label>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</label>
				<input type="text" id="stuName" name="name" placeholder="请输入姓名" />
			</p>
			<p class="sex-radio">
				<label>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</label>
				<input type="radio" name="sex" value="1" checked />男
				<input type="radio" name="sex" value="2" />女
			</p>
			<!-- <p>
				<label>年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;级：</label>
				<input type="text" id="grade" placeholder="请输入年级" />
			</p> -->
			<p>
				<label>专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业：</label>
				<input type="text" id="major" name="major" placeholder="请输入专业" />
			</p>
			<p>
				<label>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
				<input type="password" id="adminPwd" name="password1" placeholder="请输入密码" />
			</p>
			<p>
				<label>确认密码：</label>
				<input type="password" id="adminPwd-repeat" name="password2" placeholder="再次输入密码" />
			</p>
			<p>
				<input type="submit" id="registerButton" value="注册" />
			</p>
		</form>
	</body>
</html>
