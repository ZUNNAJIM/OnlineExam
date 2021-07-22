<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/23
  Time: 1:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/PaperService/addQuestion">
    <label>编号:</label><input name="questionID" type="text">
    <label>问题：</label><input type="text" name="question">
    <label>选项A:</label><input name="option_a" type="text">
    <label>选项B:</label><input name="option_b" type="text">
    <label>选项C:</label><input name="option_c" type="text">
    <label>选项D:</label><input name="option_d" type="text">
    <label>答案：</label><input name="answer" type="text">
    <label>分析:</label><input name="analysis" type="text">
    <label>知识点:</label><input name="point" type="text">
    <label>难度:</label><input name="difficulty" type="text">
    <input type="submit" value="添加">
<%--    <label>选项A:</label><input name="option_a" type="text">--%>
<%--    <label>选项A:</label><input name="option_a" type="text">--%>
</form>
</body>
</html>
