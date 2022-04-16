<%@ page import="java.util.ArrayList" %>
<%@ page import="Restaurant.ResDTO" %>
<%@ page import="Restaurant.ResDAO " %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="css/styles.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>식당 information</title>
</head>
<body>
<jsp:include page="/admin_menu.jsp"/>
<h2 style="margin-left: 100px; margin-top: 10px;"><b>관리자 Data수정</b></h2>
<p style="margin-left: 100px; margin-top: 15px;">'상호명'을 클릭하시면 상세정보 수정이 가능합니다!</p>

<table class="table table-striped" style="margin-top: 50px;text-align: center;">
    <%
        request.setCharacterEncoding("UTF-8");
        ResDAO rdao = new ResDAO();
        ArrayList<ResDTO> list = rdao.ResList();
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
        <th scope="col">BreakTime☕️</th>
    </tr>
    </thead>
    <%
        for(int i=0; i<list.size(); i++){
            ResDTO rdto = list.get(i);
    %>
    <tbody>
    <tr>
        <td><%= rdto.getDangun() %></td>
        <td><%= rdto.getType() %></td>
        <td><b><a style="text-decoration: none; color:black" href="/admin/registration/modify.jsp?Name=<%=rdto.getName()%>"><%= rdto.getName() %></a></b></td>
        <td><%= rdto.getPhone() %></td>
        <td><%= rdto.getAddress() %></td>
        <td><%= rdto.getDetail() %></td>
        <td><%= rdto.getOpen() %></td>
        <td><%= rdto.getClosed() %></td>
        <%
            String s = rdto.getBreaktime1();
            String s2 = rdto.getBreaktime2();
            String breaktime = null;
            if (s == null) {
                breaktime = "해당사항이 없습니다.";
            }else{
                breaktime = s + "~" + s2;
            }
        %>
        <td><%= breaktime %></td>

    </tr>
    <%
        }
    %>
    </tbody>
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
