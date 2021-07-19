<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- 登录页面 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>登录</title>
    <!-- 处理默认样式 -->
    <link rel="stylesheet" href="./WEB-INF/css/reset.css" />
    <!-- 登录css样式 -->
    <link rel="stylesheet" href="./WEB-INF/css/login.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../OES_favicon.ico" type="image/x-icon">
</head>
<body>
<form action="LoginService/login" method="post" id="loginForm">
    <legend>账号登录</legend>
    <p id="radio">
        <input type="radio" name="identity" value="管理员" /><label>管理员</label>
        <input type="radio" name="identity" value="教师" checked /><label>教师</label>
        <input type="radio" name="identity" value="学生" /><label>学生</label>
    </p>
    <p>
        <label>用户名：</label>
        <input type="text" id="userName" name="userName" placeholder="请输入账号" />
    </p>
    <p>
        <label>密&nbsp;&nbsp;&nbsp;码：</label>
        <input type="password" id="userPwd" name="userPwd" placeholder="请输入密码" />
    </p>
    <p>
        <input type="submit" id="loginButton" value="登录" />
        <input type="submit" id="registerButton" value="注册" />
    </p>
</form>
</body>
</html>
