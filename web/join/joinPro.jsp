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
<%--scope : 자바빈 객체가 저장될 영역을 지정. page, request, session, application 중 하나를 값으로 갖는다. 기본값은 page.--%>
<jsp:setProperty name="user" property="userID" />
<%--login 페이지에서 사용자 한명의 userID값을 받아 userID에 넣어줌.--%>
<jsp:setProperty name="user" property="userPassword" />
<%--login 페이지에서 사용자 한명의 userPassword값을 받아 userPassword에 넣어줌.--%>
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userGender" />
<jsp:setProperty name="user" property="userEmail" />
<jsp:setProperty name="user" property="userAgreement"/>
<html>
<head>
    <title>JoinProgress</title>
</head>
<body>
<%
    // Session
    String UserID = null;
    // Attribute란 Servlet간 공유되는 객체이다.
    // 다른 JSP 또는 서블릿에서 값을 가져올때 사용됨.
    if(session.getAttribute(UserID) != null){
        // UserID라는 이름으로 세션값이 존재하는 회원들은
        UserID = (String) session.getAttribute("UserID");
        // UserID에 자신에게 할당된 세션값을 담을 수 있도록 해줌
    }
    if (UserID != null) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('이미 로그인이 되어있습니다.')");
        script.println("location.href = 'index-do.jsp'");
        script.println("</script>");
    }
    if (user.getUserID() == null){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('ID가 입력되지 않았습니다!')");
        script.println("history.back()");
        script.println("</script>");
    }
    if (user.getUserPassword() == null){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('비밀번호가 입력되지 않았습니다!')");
        script.println("history.back()");
        script.println("</script>");
    }
    if (user.getUserName() == null){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('이름이 입력되지 않았습니다!')");
        script.println("history.back()");
        script.println("</script>");
    }
    if (user.getUserGender() == null){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('성별을 선택해주세요!')");
        script.println("history.back()");
        script.println("</script>");
    }
    if (user.getUserEmail() == null){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('Email 주소가 입력되지 않았습니다!')");
        script.println("history.back()");
        script.println("</script>");
    }
    if (user.getUserAgreement() == null){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('개인정보 수집에 동의해주세요!(필수)')");
        script.println("history.back()");
        script.println("</script>");
    }else{
        userDAO UserDAO = new userDAO();
        int result = UserDAO.join(user);
//        join()이 user 매개변수를 받아서 작업을 수행함.
        if (result == -1) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('이미 존재하는 ID입니다ㅠㅠ 🥺')");
            script.println("history.back()");
            script.println("</script>");
        }else{
            PrintWriter script = response.getWriter();
            session.setAttribute("UserID", user.getUserID());
            script.println("<script>");
            script.println("location.href='/index-do.jsp'");
            script.println("alert('회원가입을 진심으로 환영합니다! 바로 사용 가능한 10% 할인 쿠폰을 넣어드렸어요!')");
            script.println("</script>");
        }
    }

%>
</body>
</html>
