<%--
  Created by IntelliJ IDEA.
  User: parkhyeongju
  Date: 2022/03/23
  Time: 10:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="user.userDAO" %>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.UserData" scope="page"/>
<%--scope : 자바빈 객체가 저장될 영역을 지정. page, request, session, application 중 하나를 값으로 갖는다. 기본값은 page.--%>
<jsp:setProperty name="user" property="userID" />
<%--login 페이지에서 사용자 한명의 userID값을 받아 userID에 넣어줌.--%>
<jsp:setProperty name="user" property="userPassword" />
<%--login 페이지에서 사용자 한명의 userPassword값을 받아 userPassword에 넣어줌.--%>
<html>
<head>
    <title>LoginProgressed</title>
</head>
<body>
    <%
        String UserID = null;
        if(session.getAttribute(UserID) != null){
            UserID = (String) session.getAttribute("UserID");
        }
        if (UserID != null) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('이미 로그인이 되어있습니다.')");
            script.println("location.href = 'index-do.jsp'");
            script.println("</script>");
        }
        userDAO UserDAO = new userDAO();
        int result = UserDAO.login(user.getUserID(), user.getUserPassword());
        if (result == 1) {
            session.setAttribute("UserID", user.getUserID());
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
