<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/20
  Time: 22:38
  To change this template use File | Settings | File Templates.
  NOT CHECKEd!!!
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rookies在线考试系统</title>
    <!-- 处理默认样式 -->
    <link rel="stylesheet" href="../statics/css/reset.css" />
    <!-- 主页css样式 -->
    <link rel="stylesheet" href="../statics/css/admin/adminPage.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../statics/OES_favicon .ico" type="image/x-icon">
    <!-- 引入iconfont图标 -->
    <link rel="stylesheet" href="../statics/css/iconfont/iconfont.css">
</head>

<body>
<div class="top">
    <img src="../statics/img/image/logo.png" alt="logo">
    <span>管理员主界面</span>
</div>
<button class="exit"><a href="../index.jsp">退出登录</a></button>

<!-- 分割线 -->
<div class="line"></div>

<div>
    <form action="${pageContext.request.contextPath}/admin/getInfo" method="post">
        <div class="jump"><input name="name" value="个人信息管理" type="submit"></div>
    </form>
    <form name="teach" action="${pageContext.request.contextPath}/admin/getAllTeach" method="post">
        <div class="jump"><input type="submit" value="教师信息管理"></div>
    </form>
    <form action="${pageContext.request.contextPath}/admin/getAllStu" method="post">
        <div class="jump"><input type="submit" value="学生信息管理"></div>
    </form>
    <form action="${pageContext.request.contextPath}/admin/getAllAdmin" method="post">
        <div class="jump"><input type="submit" value="管理员信息管理"></div>
    </form>
</div>
</body>

</html>