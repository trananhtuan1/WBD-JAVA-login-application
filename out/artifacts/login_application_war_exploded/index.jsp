<%--
  Created by IntelliJ IDEA.
  User: tinca
  Date: 5/4/2018
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index.jsp</title>
</head>
<body>
<h1>Home</h1>
<%
    String username = (String) session.getAttribute("username");
    if (username != null) {%>
Welcome : <%= username%>
<a href="/logout?islogout=ok">logout</a>
<%}%>
</body>
</html>
