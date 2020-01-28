<%@ page import="com.empeegee.model.User" %>
<%@ page import="com.empeegee.model.Article" %><%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 28.01.2020
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/static/img/icon.png" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/footer.css">
</head>
<body>

    <header id="userHeader">

        <div class="container">

            <div class="userHeaderContent">

                <div class="userMain">

                    <a href="">
                        <img src="${pageContext.request.contextPath}/static/img/icon.png" alt="" id="headerLogo">
                    </a>

                    <p>
                        <% User currentUser = (User) session.getAttribute("currentSessionUser");%>
                        <%= currentUser.getName() %>
                    </p>
                </div>

                <div class="userSecond">
                    <ul>
                        <a href="">
                            <li>Home</li>
                        </a>

                        <a href="">
                            <li>Messages</li>
                        </a>
                        <a href="../LogOut" class="red">
                            <li>Log out</li>
                        </a>
                    </ul>
                </div>
            </div>

        </div>

    </header>
    <%
        Article article = (Article) request.getAttribute("article");
    %>


    <h1><%=article.getTitle()%></h1>
    <p><%=article.getText()%></p>
    <h4><%=article.getDate()%></h4>

    <jsp:include page="footer.jsp"/>
</body>
</html>
