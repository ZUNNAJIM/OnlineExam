<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/20
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  pageEncoding="UTF-8" language="java" %>
<!-- 教师主页 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Rookies在线考试系统</title>
    <!-- 处理默认样式 -->
    <link rel="stylesheet" href="../statics/css/reset.css" />
    <!-- 引入公共样式 -->
    <link rel="stylesheet" href="../statics/css/teacher/teacherStyle.css" />
    <!-- 教师主页css样式 -->
    <link rel="stylesheet" href="../statics/css/teacher/creatExam.css" />
    <!-- 引入网页标题图标 -->
    <link rel="shortcut icon" href="../statics/OES_favicon%20.ico" type="image/x-icon">
    <!-- 引入iconfont图标 -->
    <link rel="stylesheet" href="../statics/css/iconfont/iconfont.css">
</head>


<body>
<script type="text/javascript">
    window.onload = function() {
        var oTestPaper = document.getElementById("test-paper");
        var oTopical = document.getElementById("topical");
        var oSaveBtn = document.getElementById("save-btn");
        var oPaper = document.getElementById("paper");
        var oTimu = document.getElementById("timu");
        oPaper.onclick = function() {
            oTestPaper.style.display = "block";
            this.className = "active";
            oTopical.style.display = "none";
            oTimu.removeAttribute("class");
        }
        oTimu.onclick = function() {
            oTopical.style.display = "block";
            this.className = "active";
            oTestPaper.style.display = "none";
            oPaper.removeAttribute("class");
        }
        oSaveBtn.onclick = function() {
            oTopical.style.display = "block";
            oTimu.className = "active";
            oTestPaper.style.display = "none";
            oPaper.removeAttribute("class");
        }
    }
</script>
<%--侧边栏--%>
<div id="sidebar">
    <img src="../statics/img/image/logo.png" />
    <ul>
        <li>
            <h1><span class="iconfont icon-ziyuan143"></span>考试管理</h1>
        </li>
        <li>
            <a href="">创建考试</a>
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
            <form action="" method="post">
                <input type="submit" value="数据统计">
            </form>
        </li>
        <li>
            <form action="${pageContext.request.contextPath}/PaperService/examResult" method="post">
                <input type="submit" value="考试记录">
            </form>
        </li>
        <li>
            <form action="" method="post">
                <input type="submit" value="考生信息">
            </form>
        </li>
        <li>
            <h1><span class="iconfont icon-yonghu"></span>个人中心</h1>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/jsp/teacherInfo.jsp" >信息管理</a>
        </li>
    </ul>
</div>


<!-- 版心 -->
<div id="container">
    <div id="logout"><a href="${pageContext.request.contextPath}/LogService/logout">退出登录</a></div>
    <!-- 创建考试 -->
    <div id="create-exam">
        <ul class="tab">
            <li id="paper" class="active"><span class="iconfont icon-guizeshuoming"></span>试卷设置</li>
            <li id="timu"><span class="iconfont icon-kaoshi"></span></li>
        </ul>
        <!-- 试卷设置 -->
        <form action="${pageContext.request.contextPath}/PaperService/addPaper" method="post">
            <div id="test-paper">
                <div>
                    <label class="iconfont icon-title-bar">考试标题：</label>
                    <input type="text" name="exam_name" placeholder="请输入考试标题" />
                </div>
                <div>
                    <label class="iconfont icon-xuexiao_kemu">考试科目：</label>
                    <input type="text" name="major" placeholder="请输入考试科目" />
                </div>
                <div>
                    <label class="iconfont icon-riqi">考试日期：</label>
                    <input  name="start_date" type="date" />
                    <label style="text-align: center;margin: 0 -10px;">————</label>
                    <input name="end_date" type="date" />
                </div>
                <div>
                    <label class="iconfont icon-naozhong_huaban1">考试时间：</label>
                    <input name="exam_time" style="width: 50px;" type="text" value="60" />
                    <label>分钟</label>
                </div>
                <div>
                    <label class="iconfont icon-guizeshuoming">考试说明：</label><br />
                    <textarea rows="10" cols="120" style="resize: none;"></textarea><br />
                    <input id="save-btn" type="submit" value="保存并进入下一步" />
                </div>
            </div>
        </form>



        <!-- 题目设置 -->
<%--        <div id="topical">--%>
<%--            <div class="left-bar">--%>
<%--                <!-- 左侧题目类型选择栏 -->--%>
<%--                <p class="iconfont icon-kaoshitiliang">选择添加以下题型</p>--%>
<%--                <ul>--%>
<%--                    <li class="iconfont icon-icon-">单选题</li>--%>
<%--                    <li class="iconfon icon-w_duoxuanti">多选题</li>--%>
<%--                    <li class="iconfont icon-panduanti">判断题</li>--%>
<%--                </ul>--%>
<%--                <!-- 左侧题目快速定位栏 -->--%>
<%--                <div class="guide">--%>
<%--                    <p class="iconfont icon-zhuce">快速定位</p>--%>
<%--                    <span>1</span>--%>
<%--                    <span>1</span>--%>
<%--                    <span>1</span>--%>
<%--                    <span>1</span>--%>
<%--                    <span>1</span>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <!-- 试卷浏览部分 -->--%>
<%--            <div class="shiti">--%>
<%--                <!-- 单选题 -->--%>
<%--                <div class="unit">--%>
<%--                    <div class="timu-header">--%>
<%--                        <span><i>1</i>【<i>单选题</i>】</span>--%>
<%--                        <span class="iconfont icon-shanchu"></span>--%>
<%--                        <input id="subScore" type="button" value="-" />--%>
<%--                        <input id="score" type="text" value="1" />--%>
<%--                        <input id="addScore" type="button" value="+" />--%>
<%--                    </div>--%>
<%--                    <div class="timu-title">--%>
<%--                        <textarea cols="90" rows="5" placeholder="点击输入题目"></textarea>--%>
<%--                    </div>--%>
<%--                    <div class="option">--%>
<%--                        <input type="radio" name="one" id="one" value="选项" /><label>选项</label><br />--%>
<%--                        <input type="radio" name="one" id="one" value="选项" /><label>选项</label><br />--%>
<%--                        <input type="radio" name="one" id="one" value="选项" /><label>选项</label><br />--%>
<%--                        <input type="radio" name="one" id="one" value="选项" /><label>选项</label>--%>
<%--                    </div>--%>
<%--                    <div class="answer">--%>
<%--                        <textarea cols="90" rows="5" placeholder="请输入试题解析"></textarea>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- 多选题 -->--%>
<%--                <div class="mco">--%>
<%--                    <div class="timu-header">--%>
<%--                        <span><i>2</i>【<i>多选题</i>】</span>--%>
<%--                        <span class="iconfont icon-shanchu"></span>--%>
<%--                        <input id="subScore" type="button" value="-" />--%>
<%--                        <input id="score" type="text" value="1" />--%>
<%--                        <input id="addScore" type="button" value="+" />--%>
<%--                    </div>--%>
<%--                    <div class="timu-title">--%>
<%--                        <textarea cols="90" rows="5" placeholder="点击输入题目"></textarea>--%>
<%--                    </div>--%>
<%--                    <div class="option">--%>
<%--                        <input type="checkbox" name="two" id="two" value="选项" /><label>选项</label><br />--%>
<%--                        <input type="checkbox" name="two" id="two" value="选项" /><label>选项</label><br />--%>
<%--                        <input type="checkbox" name="two" id="two" value="选项" /><label>选项</label><br />--%>
<%--                        <input type="checkbox" name="two" id="two" value="选项" /><label>选项</label>--%>
<%--                    </div>--%>
<%--                    <div class="answer">--%>
<%--                        <textarea cols="90" rows="5" placeholder="请输入试题解析"></textarea>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="judge">--%>
<%--                    <div class="timu-header">--%>
<%--                        <span><i>3</i>【<i>判断题</i>】</span>--%>
<%--                        <span class="iconfont icon-shanchu"></span>--%>
<%--                        <input id="subScore" type="button" value="-" />--%>
<%--                        <input id="score" type="text" value="1" />--%>
<%--                        <input id="addScore" type="button" value="+" />--%>
<%--                    </div>--%>
<%--                    <div class="timu-title">--%>
<%--                        <textarea cols="90" rows="5" placeholder="点击输入题目"></textarea>--%>
<%--                    </div>--%>
<%--                    <div class="option">--%>
<%--                        <input type="radio" name="three" id="three" value="对" /><label>对</label><br />--%>
<%--                        <input type="radio" name="three" id="three" value="错" /><label>错</label>--%>
<%--                    </div>--%>
<%--                    <div class="answer">--%>
<%--                        <textarea cols="90" rows="5" placeholder="请输入试题解析"></textarea>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- 右侧试题概况 -->--%>
<%--            <div class="right-bar">--%>
<%--                <p class="iconfont icon-gaikuang">试题概况</p>--%>
<%--                <ul>--%>
<%--                    <li>题目总数：<span>0</span>题</li>--%>
<%--                    <li>题目总分：<span>0</span>分</li>--%>
<%--                </ul>--%>
<%--                <input type="button" value="发布考试" />--%>
<%--            </div>--%>

<%--        </div>--%>

    </div>
</div>
</body>
</html>

