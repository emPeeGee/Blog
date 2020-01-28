<%--
  Created by IntelliJ IDEA.
  User: crm0186
  Date: 1/27/2020
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.empeegee.model.User" %>
<%@ page import="com.empeegee.model.Article" %>
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
                    <a href="LogOut" class="red">
                        <li>Log out</li>
                    </a>
                </ul>
            </div>
        </div>

    </div>

</header>


<section id="create">

    <div class="container">

        <div class="createWrapper">
            <a href="NewArticle">
                <div class="createArticle">
                    +
                </div>
            </a>
        </div>

    </div>

</section>


<section id="feed">

    <div class="container">
        <% for (Article article : currentUser.getArticles()) { %>
        <section class="article">
            <h2 class="articleTitle"><a href="Main/Article?id=<%= article.getId()%>"> <%= article.getTitle()%> </a></h2>

            <p>  <%= article.getText()%> </p>

            <h5> <%= article.getDate()%></h5>
        </section>
           <% } %>


    </div>

</section>


<jsp:include page="/views/footer.jsp" />


</body>
</html>