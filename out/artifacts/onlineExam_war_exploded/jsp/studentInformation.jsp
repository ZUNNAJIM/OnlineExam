<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/20
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 学生个人信息界面 -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rookies在线考试系统</title>
    <!-- 处理默认样式 -->
    <link rel="stylesheet" href="../statics/css/reset.css" />
    <!-- 主页css样式 -->
    <link rel="stylesheet" href="../statics/css/student/studentInformation.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../statics/OES_favicon .ico" type="image/x-icon">
    <!-- 引入iconfont图标 -->
    <link rel="stylesheet" href="../statics/css/iconfont/iconfont.css">
</head>

<body>
<div class="top">
    <img src="../statics/img/image/logo.png" alt="logo">
    <span>我的个人信息</span>
</div>
<button class="back"><a href="${pageContext.request.contextPath}/jsp/studentPage.jsp">返回主页</a></button>

<!-- 分割线 -->
<div class="line"></div>

<form action="#" name="yyy">
    <div class="name">姓名： <span id="name">张三</span> <button class="changeName">修改姓名</button></div>
    <div class="sex">性别：
        <span>
        <input type="radio" name="sex">男</input>
            <input type="radio" name="sex" checked="true">女</input>
      </span>
        <button class="changeSex">修改性别</button>
    </div>
    <div class="id">学号： <span id="id">123456</span> <button class="changeName">修改学号</button> </div>
    <div class="account">账号： <span id="account">654321</span> <button class="changeAccount">修改账号</button> </div>
    <div class="pwd">密码： <span id="pwd">654321</span> <button class="changePwd">修改密码</button> </div>
    <div class="major">专业： <span id="major">软件工程</span> <button class="changeMajor">修改专业</button> </div>
    <div class="grade">成绩： <span id="grade"></span>
        <button class="checkGrade">
        <a href="${pageContext.request.contextPath}/jsp/checkGrade.jsp">查看详情</a>
        </button>
    </div>
</form>
<div>

</div>
</body>

</html>
