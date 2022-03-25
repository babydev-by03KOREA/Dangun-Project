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
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.UserData" scope="page"/>
<jsp:setProperty name="user" property="userID" /> // login 페이지에서 사용자 한명의 userID값을 받아 userID에 넣어줌.
<jsp:setProperty name="user" property="userPassword" />
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        userDAO UserDAO = new userDAO();
        int result = UserDAO.login(user.getUserID(), user.getUserPassword());
        if (result == 1) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("location.href = '/index.jsp'");
            script.println("</script>");
        }
        else if (result == 0) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('비밀번호를 한번 더 확인해주세요!')");
            script.println("history.back()");
            script.println("</script>");
        }
        else if (result == -1) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('존재하지 않는 아이디입니다. 한번 더 확인해주세요!')");
            script.println("history.back()");
            script.println("</script>");
        }
        else if (result == 2) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('내부 DB Error: 관리자에게 문의하세요.')");
            script.println("history.back()");
            script.println("</script>");
        }
    %>
</body>
</html>
