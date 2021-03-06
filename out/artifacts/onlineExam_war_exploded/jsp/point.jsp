<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/20
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 查看知识点 -->
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rookies在线考试系统</title>
    <!-- 处理默认样式 -->
    <link rel="stylesheet" href="../statics/css/reset.css" />
    <!-- 主页css样式 -->
    <link rel="stylesheet" href="../statics/css/student/viewKnowledge.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../statics/OES_favicon .ico" type="image/x-icon">
    <!-- 引入iconfont图标 -->
    <link rel="stylesheet" href="../statics/css/iconfont/iconfont.css">
</head>

<body>
<div class="left">
    <img src="../statics/img/image/logo.png" alt="logo">
    <span class="title">知识点汇总</span>
    <div class="line"></div>
    <div class="sum">
        <div class="item"><a href="#single">单选题</a></div>
        <div class="item"><a href="#multiple">多选题</a></div>
        <div class="item"><a href="#judge">判断题</a></div>
    </div>
    <div class="line"></div>
    <button class="back"><a href="studentPage.jsp">返回首页</a></button>
</div>

<div class="right">
    <!-- 单选题single -->
    <div class="single" id="single">
        <!-- id用于左侧点击跳转 -->
        <ol>
            <% int j=1; %>
        <c:forEach items="${requestScope.pointMap}" var="point">
        <div class="single-item">
            <div class="question"><span><%=j++%></span>. <span class="type">单选</span>${point.key}</div>
            <div class="choices">
                    <li>知识点：${point.value}</li>
            </div>
            </c:forEach>
        </div>
        </ol>

    </div>
</div>
</body>

</html>
