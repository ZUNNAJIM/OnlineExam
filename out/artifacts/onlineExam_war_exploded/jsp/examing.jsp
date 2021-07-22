<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/20
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 学生考试界面 -->
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
    <link rel="stylesheet" href="../statics/css/student/examing.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../statics/OES_favicon%20.ico" type="image/x-icon">
    <!-- 引入iconfont图标 -->
    <link rel="stylesheet" href="../statics/css/iconfont/iconfont.css">
</head>

<body>
<div class="left">
    <img src="../statics/img/image/logo.png" alt="logo">
    <span class="title">期末考试</span>
    <div class="line"></div>
    <div class="sum">
        <div class="item"><a href="#single">单选题</a></div>
        <div class="item"><a href="#multiple">多选题</a></div>
        <div class="item"><a href="#judge">判断题</a></div>
    </div>
    <div class="line"></div>
    <div class="sums">已完成  <span class="finished">20</span> / <span class="total"> 50</span></div>
    <div class="time">本次考试还剩 20：30</div>
    <button class="finish">
        <a href="${pageContext.request.contextPath}/jsp/afterExam.jsp">提前交卷</a>
    </button>
</div>

<form action="#" name="xxx">
    <!-- 单选题 -->
    <div class="single" id="single">
        <c:forEach items="${requestScope.questionList}" var="item">
            <div class="single-item">
                <div class="question"><span>${item.questionID}</span>. <span class="type">单选</span>${item.question}</div>
                <div class="choices">
                    <ul>
                        <li><input type="radio" name="s1">${item.option_a}</li>
                        <li><input type="radio" name="s1">${item.option_b}</li>
                        <li><input type="radio" name="s1">${item.option_c}</li>
                        <li><input type="radio" name="s1">${item.option_d}</li>
                    </ul>
                </div>
            </div>
        </c:forEach>
<%--        <div class="single-item">--%>
<%--            <div class="question"><span>2</span>. <span class="type">单选</span>中国的英文名是 （ ）。</div>--%>
<%--            <div class="choices">--%>
<%--                <ul>--%>
<%--                    <li><input type="radio" name="s2">A.China</li>--%>
<%--                    <li><input type="radio" name="s2">B.England</li>--%>
<%--                    <li><input type="radio" name="s2">C.china</li>--%>
<%--                    <li><input type="radio" name="s2">D.America</li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <!-- 多选题 -->--%>
<%--    <div class="multiple" id="multiple">--%>
<%--        <div class="single-item">--%>
<%--            <div class="question"><span>1</span>. <span class="type">多选</span>面向对象的基本思想有 （ ）。</div>--%>
<%--            <div class="choices">--%>
<%--                <ul>--%>
<%--                    <li><input type="checkbox" name="m1">A.封装</li>--%>
<%--                    <li><input type="checkbox" name="m1">B.集成</li>--%>
<%--                    <li><input type="checkbox" name="m1">C.多态</li>--%>
<%--                    <li><input type="checkbox" name="m1">D.继承</li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="single-item">--%>
<%--            <div class="question"><span>2</span>. <span class="type">多选</span>面向对象的基本思想有 （ ）。</div>--%>
<%--            <div class="choices">--%>
<%--                <ul>--%>
<%--                    <li><input type="checkbox" name="m2">A.封装</li>--%>
<%--                    <li><input type="checkbox" name="m2">B.集成</li>--%>
<%--                    <li><input type="checkbox" name="m2">C.多态</li>--%>
<%--                    <li><input type="checkbox" name="m2">D.继承</li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <!-- 判断题 -->--%>
<%--    <div class="judge" id="judge">--%>
<%--        <div class="single-item">--%>
<%--            <div class="question"><span>1</span>. <span class="type">判断</span>Java是面向对象的语言。 </span> （ ）</div>--%>
<%--            <div class="choices">--%>
<%--                <ul>--%>
<%--                    <li><input type="radio" name="j1">A.对</li>--%>
<%--                    <li><input type="radio" name="j1">B.错</li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="single-item">--%>
<%--            <div class="question"><span>2</span>. <span class="type">判断</span>Java是面向对象的语言。 </span> （ ）</div>--%>
<%--            <div class="choices">--%>
<%--                <ul>--%>
<%--                    <li><input type="radio" name="j2">A.对</li>--%>
<%--                    <li><input type="radio" name="j2">B.错</li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </div>--%>
    </div>
</form>


</body>

</html>