<%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 27.01.2020
  Time: 21:30
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/footer.css">
</head>
<body>

    <section id="newArticle">
        <div class="container">

            <div class="newArticleContent">

                <h1>New Article</h1>

                <form action="NewArticle" method="POST">
                    <div class="formContent">
                        <div class="titleArticle">
                            <h3>Title :</h3>
                            <input type="text" name="title" placeholder="Type Title" id="inputTitle">
                        </div>
                        <div class="textArticle">
                            <h3>Text : </h3>
                            <textarea name="text" cols="70" rows="15" placeholder="Type article text here"></textarea>
                        </div>

                        <div class="submitArticle">
                            <input type="submit">
                        </div>
                    </div>
                </form>

            </div>

        </div>
    </section>

    <jsp:include page="/views/footer.jsp" />


</body>
</html>