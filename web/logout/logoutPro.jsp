<%--
  Created by IntelliJ IDEA.
  User: parkhyeongju
  Date: 2022/03/23
  Time: 10:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>JoinProgress</title>
</head>
<body>
    <%
        // Revoke
        // 현재 접속한 사용자의 세션을 빼았음
        session.invalidate();
    %>
    <script>
        location.href = "/index-do.jsp";
    </script>
</body>
</html>
