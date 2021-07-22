<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/20
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 考试列表 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Rookies在线考试系统</title>
    <!-- 处理默认样式 -->
    <link rel="stylesheet" href="../statics/css/reset.css" />
    <!-- 引入公共样式 -->
    <link rel="stylesheet" href="../statics/css/teacher/teacherStyle.css" />
    <!-- 考试列表css样式 -->
    <link rel="stylesheet" href="../statics/css/teacher/examList.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../statics/OES_favicon%20.ico" type="image/x-icon">
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
    <div id="exam-list">
        <ul class="list-head">
            <li>考试名称</li>
            <li>考试开始日期</li>
            <li>考试结束日期</li>
            <li>考试时间</li>
            <li>操作</li>
        </ul>
        <form action="">
        <c:forEach items="${requestScope.paperList}" var="item" varStatus="status">
            <ul class="list-main">
                <li>${item.exam_name}</li>
                <li>${item.start_date}</li>
                <li>${item.end_date}</li>
                <li>${item.exam_time}</li>
                <li><input type="submit" name="delete" id="list-delete" value="${status.index}"/>删除</li>
            </ul>
        </c:forEach>
        </form>
    </div>
</div>
</body>
</html>

