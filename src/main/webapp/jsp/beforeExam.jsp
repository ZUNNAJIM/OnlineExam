<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/20
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 学生考前信息确认界面 -->
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
    <link rel="stylesheet" href="../statics/css/student/beforeExam.css" />
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
<!-- <button class="exit"><a href="#">退出登录</a></button> -->

<!-- 分割线 -->
<div class="line"></div>

<div class="middle">
    <div class="main">期末考试</div>
    <div class="description">
        本次考试仅有 <span>1</span> 次作答机会<br>
        共 <span>20</span> 道题，总分 <span>100</span> 分，其中包含单选、多选和判断题 <br>
        考试总时长：<span>60</span> 分钟 <br>
        请您认真阅读以下注意事项，再开始考试:
    </div>
    <ul>
        <li>1.在电脑端进行考试，推荐使用最新版谷歌浏览器；</li>
        <li>2.答题时请关闭聊天工具、视频等其他无关的软件、工具、插件，避免影响您本次答题；</li>
        <li>3.需要一次性作答并提交，答题过程中不要切换或关闭页面，一旦开启考试，倒计时将不会停止；</li>
        <li>4.完成答题后，如果截止时间未到，请您手动提交,并在页面上确认考试提交成功再离开考试；</li>
    </ul>
</div>

<form action="${pageContext.request.contextPath}/PaperService/generateExam" method="post">
    <button type="submit" class="begin">确认开始</button>
    <button class="back" onclick=window.open('http://localhost:8080/onlineExam_war_exploded/jsp/studentPage.jsp');>返回主页</button>
</form>

</body>
</html>
