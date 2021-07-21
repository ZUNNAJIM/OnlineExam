<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zunnajim
  Date: 2021/7/21
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="delAdmin" action="${pageContext.request.contextPath}/admin/delAdmin" method="post">
    <table border="1">
        <c:forEach items="${requestScope.administratorList}" var="item" varStatus="status">
            <tr>
                <td>${item.adminID}</td>
                <td>${item.account}</td>
                <td>${item.password}</td>
                <td><input type="submit" name="index" value="${status.index}"></td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
