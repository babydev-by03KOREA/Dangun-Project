<%--
  Created by IntelliJ IDEA.
  User: parkhyeongju
  Date: 2022/03/18
  Time: 12:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <a class="navbar-brand" href="/index-do.jsp">λΉκ·Όλ§μ§π₯</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/index.jsp">λ§μ§μ‘°ν</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">νλμ λ³΄λ λ§μ§</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="search/search.jsp">λ§μ§ κ²μνκΈ°</a>
                    </li>
                </ul>
            </div>
            <%
                // λ‘κ·ΈμΈμ΄ λμ΄μμ§ μλ κ²½μ°μλ§ 'λ‘κ·ΈμΈ'κ³Ό 'νμκ°μ' μ°½μ΄ λ° μ μλλ‘ λ³κ²½
                if(UserID == null) {
            %>
            <div>
                <a href="/UserLogin/login.jsp" style="text-decoration: none; color: darkslategray">λ‘κ·ΈμΈ</a> &nbsp; &nbsp;
                <a href="/join/mainjoin.jsp" style="text-decoration: none; color: darkslategray">νμκ°μπ</a>
            </div>
            <%
                    // λ‘κ·ΈμΈμ΄ λμ΄μλ κ²½μ°μλ 'λ‘κ·Έμμ'κ³Ό 'κ°μΈμ λ³΄μ€μ 'μ΄ κ°λ₯νκ² ν¨.
                } else {
            %>
            <div>
                <a href="/logout/logoutPro.jsp" style="text-decoration: none; color: darkslategray">λ‘κ·Έμμ</a> &nbsp; &nbsp;
                <a href="/personal/mypage.jsp" style="text-decoration: none; color: darkslategray"><c:out value = "${UserID}" />λ νμν©λλ€!π₯³</a>
                <%-- JSTLλ‘ out κ΅¬νλ¨. κΈ°μ‘΄ %=κ³Ό κ°μν¨κ³Ό. --%>
            </div>
            <%
                }
            %>
        </div>
    </nav>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
