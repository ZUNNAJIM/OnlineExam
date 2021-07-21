<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/20
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 查看知识点 -->
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
    <link rel="stylesheet" href="../statics/css/student/viewKnowledge.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../statics/OES_favicon .ico" type="image/x-icon">
    <!-- 引入iconfont图标 -->
    <link rel="stylesheet" href="../statics/css/iconfont/iconfont.css">
</head>

<body>
<div class="left">
    <img src="../statics/img/image/logo.png" alt="logo">
    <span class="title">知识点汇总</span>
    <div class="line"></div>
    <div class="sum">
        <div class="item"><a href="#single">单选题</a></div>
        <div class="item"><a href="#multiple">多选题</a></div>
        <div class="item"><a href="#judge">判断题</a></div>
    </div>
    <div class="line"></div>
    <button class="back"><a href="studentPage.jsp">返回首页</a></button>
</div>

<div class="right">
    <!-- 单选题single -->
    <div class="single" id="single">
        <!-- id用于左侧点击跳转 -->
        <div class="single-item">
            <div class="question"><span>1</span>. <span class="type">单选</span>中国的英文名是 （ ）。</div>
            <div class="choices">
                <ul>
                    <li><input type="radio" checked="true" name="s1">A.China</li>
                    <li><input type="radio" name="s1">B.England</li>
                    <li><input type="radio" name="s1">C.china</li>
                    <li><input type="radio" name="s1">D.America</li>
                </ul>
            </div>
        </div>
        <div class="single-item">
            <div class="question"><span>2</span>. <span class="type">单选</span>中国的英文名是 （ ）。</div>
            <div class="choices">
                <ul>
                    <li><input type="radio" checked="true" name="s2">A.China</li>
                    <li><input type="radio" name="s2">B.England</li>
                    <li><input type="radio" name="s2">C.china</li>
                    <li><input type="radio" name="s2">D.America</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 多选题multiple -->
    <div class="multiple" id="multiple">
        <div class="single-item">
            <div class="question"><span>1</span>. <span class="type">多选</span>面向对象的基本思想有 （ ）。</div>
            <div class="choices">
                <ul>
                    <li><input type="checkbox" checked="true" name="m1">A.封装</li>
                    <li><input type="checkbox" name="m1">B.集成</li>
                    <li><input type="checkbox" checked="true" name="m1">C.多态</li>
                    <li><input type="checkbox" checked="true" name="m1">D.继承</li>
                </ul>
            </div>
        </div>
        <div class="single-item">
            <div class="question"><span>2</span>. <span class="type">多选</span>面向对象的基本思想有 （ ）。</div>
            <div class="choices">
                <ul>
                    <li><input type="checkbox" checked="true" name="m2">A.封装</li>
                    <li><input type="checkbox" name="m2">B.集成</li>
                    <li><input type="checkbox" checked="true" name="m2">C.多态</li>
                    <li><input type="checkbox" checked="true" name="m2">D.继承</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 判断题judge -->
    <div class="judge" id="judge">
        <div class="single-item">
            <div class="question"><span>1</span>. <span class="type">判断</span>Java是面向对象的语言。 </span> （ ）</div>
            <div class="choices">
                <ul>
                    <li><input type="radio" checked="true" name="j1">A.对</li>
                    <li><input type="radio" name="j1">B.错</li>
                </ul>
            </div>
        </div>
        <div class="single-item">
            <div class="question"><span>2</span>. <span class="type">判断</span>Java是面向对象的语言。 </span> （ ）</div>
            <div class="choices">
                <ul>
                    <li><input type="radio" checked="true" name="j2">A.对</li>
                    <li><input type="radio" name="j2">B.错</li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>

</html>
