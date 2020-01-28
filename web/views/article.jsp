<%@ page import="com.empeegee.model.User" %>
<%@ page import="com.empeegee.model.Article" %><%--
  Created by IntelliJ IDEA.
  User: Home
  Date: 28.01.2020
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Article article = (Article) request.getAttribute("article");
    %>


    <h1><%=article.getTitle()%></h1>
    <p><%=article.getText()%></p>
    <h4><%=article.getDate()%></h4>

    <jsp:include page="footer.jsp"/>
</body>
</html>
