<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/22
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Rookies在线考试系统</title>
    <!-- 处理默认样式 -->
    <link rel="stylesheet" href="../statics/css/reset.css" />
    <!-- 引入公共样式 -->
    <link rel="stylesheet" href="../statics/css/teacher/teacherStyle.css" />
    <!-- 引入考试记录样式 -->
    <link rel="stylesheet" href="../statics/css/teacher/examNotes.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../statics/OES_favicon .ico" type="image/x-icon">
    <!-- 引入iconfont图标 -->
    <link rel="stylesheet" href="../statics/css/iconfont/iconfont.css">
</head>
<body>
<!-- 侧边栏 -->
<div id="sidebar">
    <img src="../statics/img/image/logo.png" />
    <ul>
        <li>
            <h1><span class="iconfont icon-ziyuan143"></span>考试管理</h1>
        </li>
        <li>创建考试</li>
        <li>题库管理</li>
        <li>考试列表</li>
        <li>
            <h1><span class="iconfont icon-shuju"></span>数据统计</h1>
        </li>
        <li>考试记录</li>
        <li>考生信息</li>
        <li>
            <h1><span class="iconfont icon-yonghu"></span>个人中心</h1>
        </li>
        <li>信息管理</li>
    </ul>
</div>

<!-- 版心 -->
<div id="container">
    <div id="logout"><a href="${pageContext.request.contextPath}/index.jsp">退出登录</a> </div>
    <!-- 考生信息 -->
    <div id="exam-notes">
        <ul class="notes-head">
            <li>考试编号</li>
            <li>学生学号</li>
            <li>考试日期</li>
            <li>成绩</li>
        </ul>
        <c:forEach items="${requestScope.examResults}" var="item">
            <ul class="notes-main">
                <li>${item.paperID}</li>
                <li>${item.studentID}</li>
                <li>${item.date}</li>
                <li>${item.result}</li>
            </ul>
        </c:forEach>
    </div>
</div>
</body>
</html>
