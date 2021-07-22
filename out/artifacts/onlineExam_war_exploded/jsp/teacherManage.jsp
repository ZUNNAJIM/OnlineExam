<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/20
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 管理员对教师信息管理界面 -->
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rookies在线考试系统</title>
    <!-- 处理默认样式 -->
    <link rel="stylesheet" href="../statics/css/reset.css" />
    <!-- 主页css样式 -->
    <link rel="stylesheet" href="../statics/css/admin/teacherManagement.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../statics/OES_favicon .ico" type="image/x-icon">
    <!-- 引入iconfont图标 -->
    <link rel="stylesheet" href="../statics/css/iconfont/iconfont.css">
</head>

<body>
<div class="top">
    <img src="../statics/img/image/logo.png" alt="logo">
    <div class="identity">身份：管理员</div>
    <span>管理教师信息</span>
</div>
<button class="back"><a href="${pageContext.request.contextPath}/jsp/adminPage.jsp">返回主页</a></button>

<!-- 分割线 -->
<div class="line"></div>

<div class="search">
    <input type="text" placeholder="输入账号或编号查询教师信息">
</div>

<table>
    <tr class="thead">
        <td>教师编号</td>
        <td>教师账号</td>
        <td>教师密码</td>
        <td>教师姓名</td>
        <td>教师性别</td>
        <td>教师邮箱</td>
        <td>考试名称</td>
        <td>点击删除</td>
    </tr>
    <c:forEach items="${requestScope.teacherList}" varStatus="status" var="item">
        <tr>
            <td>${item.teacherID}</td>
            <td>${item.account}</td>
            <td>${item.password}</td>
            <td>${item.name}</td>
            <td>${item.gender}</td>
            <td>${item.mail}</td>
            <td>${item.exam_name}</td>
            <td> <input type="submit" class="del" value="${status.index}" name="index"></td>
        </tr>
    </c:forEach>
</table>
</body>

</html>