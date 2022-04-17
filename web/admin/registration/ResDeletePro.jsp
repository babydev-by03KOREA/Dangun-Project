<%@ page import="Restaurant.ResDTO" %>
<%@ page import="Restaurant.ResDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Restaurants Delete</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String Name = request.getParameter("Name");
    ResDAO rdao = new ResDAO();
    ResDTO rrdto = rdao.delete_Res(Name);

    response.sendRedirect("/admin/registration/crud.jsp");
%>
</body>
</html>
