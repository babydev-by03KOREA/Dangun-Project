<%--
  Created by IntelliJ IDEA.
  User: parkhyeongju
  Date: 2022/03/02
  Time: 7:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JavaServerPage</title>
    <link rel="stylesheet" href="css/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <header>
            <a href="index.jsp">
                <img src="Asiana_Airlines-Logo_New.svg.png"  id="header-png">
            </a>
            <span id="header-text">아시아나와 함께하는 제주도 맛집투어!</span>
    </header>


    <div id="add-button">
        <button type="button" class="btn btn-outline-primary" onclick="location.href='req.jsp'">식당 등록</button>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
