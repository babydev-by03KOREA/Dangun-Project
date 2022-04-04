<%--
  Created by IntelliJ IDEA.
  User: parkhyeongju
  Date: 2022/03/23
  Time: 10:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="user.userDAO" %>
<%@ page import="java.io.PrintWriter"%>

<html>
<head>
    <title>JoinProgress</title>
</head>
<body>
    <%
        session.invalidate();
    %>
    <script>
        location.href = "/index-do.jsp";
    </script>
</body>
</html>
