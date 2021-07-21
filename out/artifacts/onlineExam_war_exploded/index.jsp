<%@ page language="java" import="java.util.*"
         errorPage="/errorPage.jsp" pageEncoding="utf-8"%>

<!-- 登录页面 -->
<html>
<head>
    <meta charset="utf-8">
    <title>登录</title>
    <!-- 处理默认样式 -->
    <link rel="stylesheet" href="./statics/css/reset.css" />
    <!-- 登录css样式 -->
    <link rel="stylesheet" href="./statics/css/index/login.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="./statics/OES_favicon%20.ico" type="image/x-icon">
</head>
<body>
<form action="${pageContext.request.contextPath}/LogService/login" method="post" id="loginForm">
    <legend>账号登录</legend>
    <p id="radio">
        <input type="radio" name="identity" value="admin" /><label>管理员</label>
        <input type="radio" name="identity" value="teacher" checked /><label>教师</label>
        <input type="radio" name="identity" value="student" /><label>学生</label>
    </p>
    <p>
        <label>用户名：</label>
        <input type="text" id="userName" name="name" placeholder="请输入账号" />
    </p>
    <p>
        <label>密&nbsp;&nbsp;&nbsp;码：</label>
        <input type="password" id="userPwd" name="password" placeholder="请输入密码" />
    </p>
    <p>
        <input type="submit" id="loginButton" value="登录" />
        <input type="submit" id="registerButton" value="注册" />
    </p>
</form>
</body>
</html>

