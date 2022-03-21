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
    <link href="css/styles.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>식당 information</title>
</head>
<body>
    <jsp:include page="menu.jsp"/>
    <h2 style="margin-left: 100px; margin-top: 10px;"><b>우리동네 맛집 구석구석 ☕️</b></h2>
    <table class="table table-striped" style="margin-top: 50px;text-align: center;">
        <thead>
        <tr id="first-row">
            <th scope="col">식당이름</th>
            <th scope="col">전화번호</th>
            <th scope="col">위치</th>
            <th scope="col">여는시간</th>
            <th scope="col">닫는시간</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>@mdo</td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
            <td>@mdo</td>
        </tr>
        <tr>
            <th scope="row">3</th>
            <td>Larry the Bird</td>
            <td>@twitter</td>
            <td>@mdo</td>
            <td>@mdo</td>
        </tr>
        </tbody>
    </table>
    <button type="button" class="btn btn-outline-secondary" onclick="location.href='register.jsp'">식당 등록하기(Admin)</button>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
