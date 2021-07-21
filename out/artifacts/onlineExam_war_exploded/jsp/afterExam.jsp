<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/20
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 学生考后信息确认界面 -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rookies在线考试系统</title>
    <!-- 处理默认样式 -->
    <link rel="stylesheet" href="../statics/reset.css" />
    <!-- css样式 -->
    <link rel="stylesheet" href="../statics/css/student/afterExam.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../statics/OES_favicon%20.ico" type="image/x-icon">
    <!-- 引入iconfont图标 -->
    <link rel="stylesheet" href="../statics/css/iconfont/iconfont.css">
</head>
<body>

<div class="top">
    <img src="../statics/img/image/logo.png" alt="logo">
    <span>信息确认</span>
</div>

<!-- 分割线 -->
<div class="line"></div>

<div class="description">
    <div class="main">期末考试</div>
    本次考试共<span> 50 </span>道题，你已完成<span> 50 </span>道题<br>
    距离考试结束还有<span> 20 </span>分<span> 20 </span>秒，确认要交卷吗？
</div>
</div>

<button class="finish"><a href="${pageContext.request.contextPath}/jsp/studentPage.jsp">确认交卷</a></button>
<!-- 这里还要加个alert提示提交成功了，或者当场出成绩啥的 -->
<button class="back"><a href="${pageContext.request.contextPath}/jsp/examing.jsp">继续考试</a></button>

</body>
</html>


