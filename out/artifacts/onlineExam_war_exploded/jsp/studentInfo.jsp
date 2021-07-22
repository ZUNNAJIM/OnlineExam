<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/20
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Rookies在线考试系统</title>
    <!-- 处理默认样式 -->
    <link rel="stylesheet" href="../statics/css/reset.css" />
    <!-- 引入公共样式 -->
    <link rel="stylesheet" href="../statics/css/teacher/teacherStyle.css" />
    <!-- 引入考生信息样式 -->
    <link rel="stylesheet" href="../statics/css/teacher/studentInformation.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../statics/OES_favicon%20.ico" type="image/x-icon">
    <!-- 引入iconfont图标 -->
    <link rel="stylesheet" href="../statics/css/iconfont/iconfont.css">
</head>
<body>
<!-- 侧边栏 -->
<!-- 侧边栏 -->
<div id="sidebar">
    <img src="../statics/img/image/logo.png" />
    <ul>
        <li>
            <h1><span class="iconfont icon-ziyuan143"></span>考试管理</h1>
        </li>
        <li>
            <a href="">创建考试</a>
        </li>
        <li>
            <form method="post" action="${pageContext.request.contextPath}/PaperService/manageQuestion" >
                <input type="submit" value="题库管理">
            </form>
        </li>
        <li>
            <form action="${pageContext.request.contextPath}/PaperService/getAllPaper" method="post">
                <input type="submit" value="考试列表">
            </form>
        </li>
        <li>
            <form action="" method="post">
                <input type="submit" value="数据统计">
            </form>
        </li>
        <li>
            <form action="" method="post">
                <input type="submit" value="考试记录">
            </form>
        </li>
        <li>
            <form action="" method="post">
                <input type="submit" value="考生信息">
            </form>
        </li>
        <li>
            <h1><span class="iconfont icon-yonghu"></span>个人中心</h1>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/jsp/teacherInfo.jsp" >信息管理</a>
        </li>
    </ul>
</div>

<!-- 版心 -->
<div id="container">
    <div id="logout">退出登录</div>
    <!-- 考生信息 -->
    <div id="stu-information">
        <ul class="stu-head">
            <li>账号</li>
            <li>学号</li>
            <li>姓名</li>
            <li>性别</li>
            <li>年级</li>
            <li>专业</li>
        </ul>
        <ul class="stu-main">
            <li>001</li>
            <li>001</li>
            <li>张三</li>
            <li>男</li>
            <li>2018</li>
            <li>计算机</li>
        </ul>
        <ul class="stu-main">
            <li>001</li>
            <li>001</li>
            <li>张三</li>
            <li>男</li>
            <li>2018</li>
            <li>计算机</li>
        </ul>
    </div>
</div>
</body>
</html>