<%--
  Created by IntelliJ IDEA.
  User: parkhyeongju
  Date: 2022/03/18
  Time: 12:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.PrintWriter" %>
<html>
<head>
  <title>Menu</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%
  String UserID = null;
  if (session.getAttribute("UserID") != null){
    UserID = (String) session.getAttribute("UserID");
  }
%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="/index-do.jsp" id="active">๋น๊ทผ๋ง์ง๐ฅ</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="/admin/registration/register.jsp">๋ง์ง ๋ฑ๋กํ๊ธฐ - Admin๐</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/registration/crud.jsp">๋ง์ง ์์ /์ญ์  - Admin๐</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">์ฌ์ดํธ ๋์์๋ฆฌ</a>
        </li>
      </ul>
    </div>
    <%
      if(UserID == null) {
    %>
    <div>
      <a href="/UserLogin/login.jsp" style="text-decoration: none; color: darkslategray">๋ก๊ทธ์ธ</a> &nbsp; &nbsp;
    </div>
    <%
    } else {
    %>
    <div>
      <a href="/logout/logoutPro.jsp" style="text-decoration: none; color: darkslategray">๋ก๊ทธ์์</a> &nbsp; &nbsp;
      <a href="/personal/mypage.jsp" style="text-decoration: none; color: darkslategray"><%=UserID%>๊ด๋ฆฌ์</a>
    </div>
    <%
      }
    %>
  </div>
</nav>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
