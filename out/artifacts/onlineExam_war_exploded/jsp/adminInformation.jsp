<%@ page import="com.cn.online_exam.pojo.Administrator" %><%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/20
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 管理员个人信息界面 -->
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rookies在线考试系统</title>
    <!-- 处理默认样式 -->
    <link rel="stylesheet" href="../statics/css/reset.css" />
    <!-- 主页css样式 -->
    <link rel="stylesheet" href="../statics/css/admin/adminInformation.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../statics/OES_favicon .ico" type="image/x-icon">
    <!-- 引入iconfont图标 -->
    <link rel="stylesheet" href="../statics/css/iconfont/iconfont.css">
</head>

<body>
<div class="top">
    <img src="../statics/img/image/logo.png" alt="logo">
    <div class="identity">身份：管理员</div>
    <span>我的个人信息</span>
</div>
<button class="back"><a href="${pageContext.request.contextPath}/jsp/adminPage.jsp">返回主页</a></button>

<!-- 分割线 -->
<div class="line"></div>

<form action="/admin/update" name="yyy">
<%--    <% Administrator administrator = (Administrator) request.getAttribute("admin"); %>--%>
<%--    <div class="id">编号： <span id="id">123456</span> <button class="changeName">修改编号</button> </div>--%>
    <div class="account">账号： <span id="account">${admin.account}</span> <button class="changeAccount">修改账号</button> </div>
    <div class="pwd">密码： <span id="pwd">${admin.password}</span> <button class="changePwd">修改密码</button> </div>
</form>
<div>
</div>
</body>

</html>