<%@ page import="java.sql.*" %><%--
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
        <%!
            Connection conn = null;
            PreparedStatement pstmt = null;
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/Michelin?useSSL=false&serverTimezone=Asia/Seoul";
            String uid = "root";
            String pwd = "database";
            ResultSet rs = null;
        %>
        <thead>
        <tr id="first-row">
            <th scope="col">동네</th>
            <th scope="col">식당종류</th>
            <th scope="col">상호명</th>
            <th scope="col">전화번호</th>
            <th scope="col">주소(도로명)</th>
            <th scope="col">상세주소</th>
            <th scope="col">여는시간</th>
            <th scope="col">닫는시간</th>
        </tr>
        </thead>
        <tbody>
        <%
            Class.forName(driver);
            try{
            conn = DriverManager.getConnection(url, uid, pwd);
            pstmt = conn.prepareStatement("select * from delicious");
            rs = pstmt.executeQuery();
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("dangun") %></td>
            <td><%= rs.getString("type")%></td>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("phone") %></td>
            <td><%= rs.getString("address") %></td>
            <td><%= rs.getString("detail") %></td>
            <td><%= rs.getString("open") %></td>
            <td><%= rs.getString("closed") %></td>
        </tr>
        <%
                }
            }catch(Exception e){
                e.printStackTrace();
            }finally {
                if (rs != null) rs.close();
                if (rs != null) pstmt.close();
                if (rs != null) conn.close();
                }
        %>
        </tbody>
    </table>
    <button type="button" class="btn btn-outline-secondary" onclick="location.href='register/register.jsp'">식당 등록하기(Admin)</button>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
