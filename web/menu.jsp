<%--
  Created by IntelliJ IDEA.
  User: parkhyeongju
  Date: 2022/03/18
  Time: 12:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Menu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">맛집Bot</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">맛집조회</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">한눈에 보는 맛집</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">맛집 검색하기</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">맛집 등록하기 - Admin</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">맛집 수정/삭제 - Admin</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
