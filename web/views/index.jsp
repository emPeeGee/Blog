<%--
  Created by IntelliJ IDEA.
  User: Mihail
  Date: 26/01/2020
  Time: 17:08
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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/footer.css">
</head>
<body>

    <section id="main">
        <div class="introduction">
            <div class="introductionContent">
                <ul>
                    <li>Write what is on your mind.</li>
                    <li>Hear what people are talking about. </li>
                    <li>Follow your interests. </li>
                </ul>
            </div>

        </div>

        <div class="action">

            <div class="login">
                <form action="Authentication" method="POST">
                    <input type="text" placeholder="Username" name="username">
                    <input type="password" placeholder="Password" name="password">
                    <button type="submit" value="login">Log in</button>
                </form>
            </div>

            <div class="authentication">
                <img src="${pageContext.request.contextPath}/static/img/icon.png" alt="">
                <h2>See what’s happening in the world right now</h2>
                <h3>Join us today</h3>

                <button class="authFillBlue authButtons authMargin">Sign up</button>
                <button class="authButtons authMargin">Log in</button>
            </div>

        </div>
    </section>

    <jsp:include page="/views/footer.jsp" />

</body>
</html>