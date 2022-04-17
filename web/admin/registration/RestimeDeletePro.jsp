<%@ page import="Restaurant.ResDTO" %>
<%@ page import="Restaurant.ResDAO" %><%--
  Created by IntelliJ IDEA.
  User: parkhyeongju
  Date: 2022/04/17
  Time: 1:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Restime Delete</title>
</head>
<body>
  <%
    request.setCharacterEncoding("UTF-8");
    String Name = request.getParameter("Name");
    ResDAO rdao = new ResDAO();
    ResDTO rrdto = rdao.delete_breaktime(Name);


    response.sendRedirect("/admin/registration/crud.jsp");
  %>
</body>
</html>
