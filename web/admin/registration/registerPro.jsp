<%--
Created by IntelliJ IDEA.
User: parkhyeongju
Date: 2022/03/19
Time: 9:08 PM
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Restaurant.*" %>


<html>
<head>
    <title>Data Throw To DB</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String dangun = request.getParameter("dangun").trim();
        String type = request.getParameter("type").trim();
        String name = request.getParameter("name").trim();
        String phone = request.getParameter("phone").trim();
        String address = request.getParameter("address").trim();
        String detail = request.getParameter("detail").trim();
        String open = request.getParameter("open").trim();
        String closed = request.getParameter("closed").trim();
        String breaktime1 = request.getParameter("breaktime1").trim();
        String breaktime2 = request.getParameter("breaktime2").trim();

        ResDTO data = new ResDTO();
        data.setDangun(dangun);
        data.setType(type);
        data.setName(name);
        data.setPhone(phone);
        data.setAddress(address);
        data.setDetail(detail);
        data.setOpen(open);
        data.setClosed(closed);
        data.setBreaktime1(breaktime1);
        data.setBreaktime2(breaktime2);

        ResDAO rdao = new ResDAO();
        rdao.ResData(data);

        response.sendRedirect("/index.jsp");
    %>

</body>
</html>
