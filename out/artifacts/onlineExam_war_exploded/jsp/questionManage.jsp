<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/20
  Time: 21:38
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
    <!-- 引入题库管理样式 -->
    <link rel="stylesheet" href="../statics/css/teacher/quesManage.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../statics/OES_favicon%20.ico" type="image/x-icon">
    <!-- 引入iconfont图标 -->
    <link rel="stylesheet" href="../statics/css/iconfont/iconfont.css">
</head>
<body>
<!-- 侧边栏 -->
<%--侧边栏--%>
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
            <h1><span class="iconfont icon-shuju">数据统计</span></h1>
        </li>
        <li>
            <form action="${pageContext.request.contextPath}/PaperService/examResult" method="post">
                <input type="submit" value="考试记录">
            </form>
        </li>
        <li>
            <form action="${pageContext.request.contextPath}/PaperService/getAllStu" method="post">
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
    <!-- 题库管理 -->
    <div id="ques-manage">
        <div class="ques-manage-bar">
            <p>科目</p>
            <label>${requestScope.exam_name}</label>
            <div><input type="button" onclick=window.open('http://localhost:8080/onlineExam_war_exploded/jsp/addQuestion.jsp') name="add-ques" id="add-ques" value="添加题目"></div>
        </div>
<%--        <form>--%>
            <div class="ques-manage-main">
                <ol>
                    <c:forEach items="${requestScope.questionList}" var="item">
                        <li>${item.questionID}.${item.question}</li>
                        <ol>
                            <li>${item.option_a}</li>
                            <li>${item.option_b}</li>
                            <li>${item.option_c}</li>
                            <li>${item.option_d}</li>
                            <li>答案：${item.answer}</li>
                            <li><input type="button" name="update-ques" id="update-ques" value="修改" /></li>
                        </ol>
                    </c:forEach>
                </ol>
            </div>
<%--        </form>--%>
    </div>
</div>
</body>
</html>
