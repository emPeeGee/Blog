<%--
  Created by IntelliJ IDEA.
  User: crm0186
  Date: 1/27/2020
  Time: 4:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logout</title>
</head>
<body>

    <h1>You are successfully logged out!</h1>
    <a href="${pageContext.request.contextPath}">To welcome page</a>

    <jsp:include page="/views/footer.jsp" />
</body>
</html>
