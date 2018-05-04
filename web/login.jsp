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
    <title>login.jsp</title>
</head>
<body>
<%
    Cookie[] listCookie = request.getCookies();
    String user = "";
    String pass = "";
    int count = 0;
    if(listCookie != null){
        while(count < listCookie.length){
            if(listCookie[count].getName().equals("user")){
                user = listCookie[count].getValue();
            }
            if(listCookie[count].getName().equals("pass")){
                pass = listCookie[count].getValue();
            }
            count++;
        }
    }
%>
${error}
<h1>Login</h1>
<form method="post" action="/login">
    <table>
        <tr>
            <td>Username</td>
            <td><input type="text" name="txtUsername" placeholder="Enter username"/></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="txtPassword" placeholder="Enter password"/></td>
        </tr>
        <tr>
            <td><input type="checkbox" name="chkRemember" value="ON"/>Remember to me</td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Login"/></td>
        </tr>
    </table>
</form>
</body>
</html>
