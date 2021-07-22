<%@ page language="java" import="java.util.*"
         errorPage="/errorPage.jsp" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 登录页面 -->
<html>
<head>
    <meta charset="utf-8">
    <title>登录</title>
    <!-- 处理默认样式 -->
    <link rel="stylesheet" href="./statics/css/reset.css" />
    <!-- 登录css样式 -->
    <link rel="stylesheet" href="./statics/css/index/indexStyle.css">
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="./statics/OES_favicon%20.ico" type="image/x-icon">
    <style type="text/css">
        #loginForm{
            margin-top: 160px;
        }
        #identity-radio input{
            margin-left: 20px;
        }
        #registerButton{
            margin-left: 110px;
        }
    </style>
</head>
<body>
<form action="${pageContext.request.contextPath}/LogService/login" method="post" id="loginForm">
    <legend>账号登录</legend>
    <p id="identity-radio">
        <input type="radio" name="identity" value="admin"  /><label>管理员</label>
        <input type="radio" name="identity" value="teacher" checked /><label>教师</label>
        <input type="radio" name="identity" value="student" /><label>学生</label>
    </p>
    <p>
        <label>用户名：</label>
        <input type="text" id="userName" name="name" value="teach01" placeholder="请输入账号" />
    </p>
    <p>
        <label>密&nbsp;&nbsp;&nbsp;码：</label>
        <input type="password" id="userPwd" name="password" value="teach01" placeholder="请输入密码" />
    </p>
    <p>
        <input type="submit" id="loginButton" value="登录" />
        <input type="button" id="registerButton"  value="注册"
<%--               onclick=window.open('http://localhost:8080/onlineExam_war_exploded/jsp/adminRegister.jsp')--%>
<%--               onclick="function Register(){--%>
<%--                   window.location.href='http://localhost:8080/onlineExam_war_exploded/jsp/adminRegister.jsp';--%>
<%--                   console.log(window.location.href);--%>
<%--               }" value="注册">--%>
        />
    </p>
</form>
<script type="text/javascript">
    var unkonwn = document.getElementById("registerButton");
    unkonwn.onclick=function (){
        var radio = document.getElementsByName("identity");
        var value = null;
        for (var i=0;i<radio.length;i++) {
            if(radio[i].checked)
            {
                value = radio[i].value;
            }
            switch (value)
            {
                case "admin":
                    window.open('http://localhost:8080/onlineExam_war_exploded/jsp/adminRegister.jsp');

                    break;
                case "teacher":
                    window.open('http://localhost:8080/onlineExam_war_exploded/jsp/teacherRegister.jsp');
                    break;
                case "student":
                    window.open('http://localhost:8080/onlineExam_war_exploded/jsp/studentRegister.jsp');
                    break;
            }

        }
    }



</script>
</body>
</html>

