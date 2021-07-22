<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/20
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 学生成绩界面 -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rookies在线考试系统</title>
    <!-- 处理默认样式 -->
    <link rel="stylesheet" href="../statics/css/reset.css" />
    <!-- css样式 -->
    <link rel="stylesheet" href="../statics/css/student/checkGrade.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../statics/OES_favicon .ico" type="image/x-icon">
    <!-- 引入iconfont图标 -->
    <link rel="stylesheet" href="../statics/css/iconfont/iconfont.css">
</head>

<body>
<div class="top">
    <img src="../statics/img/image/logo.png" alt="logo">
    <span>我的成绩</span>
    <div class="info">
        <div class="name">姓名： <span>${requestScope.name}</span> </div>
        <div class="id">学号： <span>${requestScope.studentID}</span> </div>
    </div>
</div>
<button class="back"><a href="${pageContext.request.contextPath}/jsp/studentPage.jsp">返回主页</a></button>

<!-- 分割线 -->
<div class="line"></div>

<div class="singleGrade">
    <div class="date">考试时间： <span type="date">${requestScope.examResult.date}</span> </div>
    <div class="paperId">试卷编号： <span id="paperId">${requestScope.examResult.paperID}</span> </div>
    <div class="resultId">成绩编号： <span id="resultId">${requestScope.examResult.resultID}</span> </div>
    <div class="grade">成&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;绩： <span id="grade">${requestScope.examResult.result}</span>
        <button class="checkGrade">
            <a href="${pageContext.request.contextPath}/jsp/checkGrade.jsp">查看详情</a>
        </button>
    </div>
</div>
<div>

</div>
</body>

</html>
