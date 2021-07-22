<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/21
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 管理员管理界面 -->

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rookies在线考试系统</title>
    <!-- 处理默认样式 -->
    <link rel="stylesheet" href="../statics/css/reset.css" />
    <!-- 主页css样式 -->
    <link rel="stylesheet" href="../statics/css/admin/adminManage.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../statics/OES_favicon .ico" type="image/x-icon">
    <!-- 引入iconfont图标 -->
    <link rel="stylesheet" href="../statics/css/iconfont/iconfont.css">
</head>

<body>
<div class="top">
    <img src="../statics/img/image/logo.png" alt="logo">
    <div class="identity">身份：管理员</div>
    <span>管理员管理</span>
</div>
<button class="back"><a href="${pageContext.request.contextPath}/jsp/adminPage.jsp">返回主页</a></button>

<!-- 分割线 -->
<div class="line"></div>

<div class="search">
    <input type="text" placeholder="输入账号或编号查询管理员信息">
</div>
<form name="delAdmin" action="${pageContext.request.contextPath}/admin/delAdmin" method="post">
    <table>
        <tr class="thead">
            <td>管理员编号</td>
            <td>管理员账号</td>
            <td>管理员密码</td>
            <td>点击删除</td>
        </tr>
        <c:forEach items="${requestScope.administratorList}" var="item" varStatus="status">
            <tr>
                <td>${item.adminID}</td>
                <td>${item.account}</td>
                <td>${item.password}</td>
                <td><input class="del" type="submit" name="index" value="${status.index}"></td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>

</html>
