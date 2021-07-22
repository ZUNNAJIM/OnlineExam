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
    <title>管理员注册</title>
    <!-- 处理默认样式 -->
    <link rel="stylesheet" href="../statics/css/reset.css" />
    <!-- 首页公共样式 -->
    <link rel="stylesheet" href="../statics/css/index/indexStyle.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../statics/OES_favicon .ico" type="image/x-icon">
    <style type="text/css">
        #adminRegisterForm{
            margin-top: 160px;
        }
    </style>
</head>
<body>
<form action="${pageContext.request.contextPath}/Register/addAdmin" method="post" id="adminRegisterForm">
    <legend>管理员注册</legend>
    <p>
        <label>账&nbsp;号&nbsp;名：</label>
        <input type="text" id="adminName" name="account" placeholder="账号名" />
    </p>
    <p>
        <label>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
        <input type="password" id="adminPwd" name="password1" placeholder="请输入密码" />
    </p>
    <p>
        <label>确&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;认：</label>
        <input type="password" id="adminPwd-repeat" name="password2" placeholder="再次输入密码" />
    </p>
    <p>
        <input type="submit" id="registerButton" value="注册" />
    </p>
</form>
</body>
</html>
