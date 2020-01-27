<%--
  Created by IntelliJ IDEA.
  User: crm0186
  Date: 1/27/2020
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.empeegee.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<a href="LogOut">Logout</a>

<h1>
    <% User currentUser = (User) session.getAttribute("currentSessionUser");%>

    Welcome <%= currentUser.getName() %>
</h1>


</body>
</html>
