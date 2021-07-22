<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <form>
                <input type="submit"
                       onclick=window.open('http://localhost:8080/onlineExam_war_exploded/jsp/teacherPage.jsp')
                       value="创建考试">
            </form>
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
            <form action="${pageContext.request.contextPath}/PaperService/examResult" method="post">
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
            <form action="${pageContext.request.contextPath}/PaperService/getTeachInfo" method="post">
                <input type="submit" value="信息管理">
            </form>
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
            <li>账号：<span>${requestScope.teacher.account}</span></li>
            <li>工号：<span>${requestScope.teacher.teacherID}</span></li>
            <li>姓名：<span>${requestScope.teacher.name}</span></li>
            <c:if test="${requestScope.teacher.gender == 1}" >
                <li>性别：<span>男</span></li>
            </c:if>
            <c:if test="${requestScope.teacher.gender == 2}" >
                <li>性别：<span>女</span></li>
            </c:if>
            <li>邮箱：<span>${requestScope.teacher.mail}</span></li>
            <li>负责考试：<span>${requestScope.teacher.exam_name}</span></li>
            <li><input type="button" name="teacher-info-update" id="teacher-info-update" value="修改信息" /></li>
        </ul>
        <!-- 修改密码 -->
        <p>|修改信息</p>
        <form class="update-pwd" action="${pageContext.request.contextPath}/PaperService/updateTeachInfo" method="post">
            <input type="text" name="new_account" id="old-pwd" placeholder="账号" />
            <input type="password" name="new_password" id="repeat-pwd" placeholder="密码：" />
            <input type="text" name="new_name" id="old-pwd" placeholder="姓名" />
            <input type="text" name="gender" id="repeat-pwd" placeholder="男" />
            <input type="text" name="new_mail" id="new-pwd" placeholder="邮箱" />
            <input type="text" name="new_exam_name" id="new-pwd" placeholder="负责考试" />
            <input type="submit" name="pwd-ack" id="pwd-ack" value="确认修改" />
        </form>
    </div>
</div>
</body>
</html>

