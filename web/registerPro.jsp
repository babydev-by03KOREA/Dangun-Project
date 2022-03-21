<%--
Created by IntelliJ IDEA.
User: parkhyeongju
Date: 2022/03/19
Time: 9:08 PM
To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %><
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Data Throw To DB</title>
</head>
<body>
    <%!
        Connection conn = null;
        PreparedStatement pstmt = null;

        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/Michelin?useSSL=false&serverTimezone=Asia/Seoul";
        String uid = "root";
        String pwd = "database";
        String query = "insert into delicious values(?,?,?,?,?,?,?)";
    %>
    <%
        request.setCharacterEncoding("UTF-8");
        String dangun = request.getParameter("dangun");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String detail = request.getParameter("detail");
        String open = request.getParameter("open");
        String closed = request.getParameter("closed");
    %>
    <%
        try{
            Class.forName(driver);
            conn = DriverManager.getConnection(url, uid, pwd);
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, dangun);
            pstmt.setString(2, name);
            pstmt.setString(3, phone);
            pstmt.setString(4,address);
            pstmt.setString(5,detail);
            pstmt.setString(6,open);
            pstmt.setString(7,closed);

            pstmt.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
    }

        response.sendRedirect("index.jsp");
    %>
</body>
</html>
