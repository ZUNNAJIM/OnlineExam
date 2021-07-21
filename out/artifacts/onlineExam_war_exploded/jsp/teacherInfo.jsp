<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/20
  Time: 21:43
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
    <!-- 引入教师个人信息样式 -->
    <link rel="stylesheet" href="../statics/css/teacher/teacherInformation.css" />
    <!-- 引入公共样式 -->
    <link rel="stylesheet" href="../statics/css/teacher/teacherStyle.css" />
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
            <a href="${pageContext.request.contextPath}/jsp/teacherPage.jsp">创建考试</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/jsp/questionManage.jsp">题库管理</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/jsp/examList.jsp" >考试列表</a>
        </li>
        <li>
            <h1><span class="iconfont icon-shuju"></span>数据统计</h1>
        </li>
        <li>
            <a href="" >考试记录</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/jsp/studentInfo.jsp" >考生信息</a>
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
    <!-- 教师个人信息 -->
    <div id="teacher-information">
        <!-- 基础信息 -->
        <p>|基础信息</p>
        <ul class="basic">
            <li>账号：<span>12345</span></li>
            <li>工号：<span>12345</span></li>
            <li>姓名：<span>12345</span></li>
            <li>性别：<span>12345</span></li>
            <li>邮箱：<span>12345</span></li>
            <li><input type="button" name="teacher-info-update" id="teacher-info-update" value="修改信息" /></li>
        </ul>
        <!-- 修改密码 -->
        <p>|修改密码</p>
        <form class="update-pwd" method="post">
            <input type="password" name="old-pwd" id="old-pwd" placeholder="输入当前密码" />
            <input type="password" name="repeat-pwd" id="repeat-pwd" placeholder="重复当前密码" />
            <input type="password" name="new-pwd" id="new-pwd" placeholder="输入新密码" />
            <input type="submit" name="pwd-ack" id="pwd-ack" value="确认修改" />
        </form>
    </div>
</div>
</body>
</html>

