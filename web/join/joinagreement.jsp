<%--
  Created by IntelliJ IDEA.
  User: parkhyeongju
  Date: 2022/03/23
  Time: 10:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입을 환영합니다!🥳</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script>
        // 개인정보 약관동의 popup()
        function popup(){
            var url = "/join/agree.html";
            var name = "popup test";
            var option = "width = 500, height = 500, top = 100, left = 200, location = no"
            window.open(url, name, option);
        }
        let check1;
        check1 = document.getElementById('box1');

    </script>
</head>
<body>
    <jsp:include page="/menu.jsp"/>
    <h2 id = "welcome" style="margin-left: 80px; margin-top: 50px">회원가입을 환영합니다!🥳</h2>
    <p style="margin-left: 80px; font-size: 12px">
        ⚠This site is dedicated to Koreans living in Korea.<br/>
        If you are a foreigner, please change your country/language settings.<br/>
        (Foreign language/foreigner services will be released later.)
    </p>
    <div style="margin-left: 80px; margin-top: 60px;">
    <h4>약관 동의</h4>
    <p style="font-size: 16px">약관 및 개인정보 수집 이용에 동의해주세요.</p>
    </div>
    <form method="post" action="joinPro.jsp">
    <div>
        <div class="form-check" style="margin: 40px 80px" id="box1"> <!--CheckBox Area / BootStrap-->
            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
            <label class="form-check-label" for="flexCheckDefault"><strong>개인정보 수집에 동의합니다(필수) &nbsp;</strong></label>
            <button type="button" class="btn btn-secondary btn-sm" onclick="popup()">약관보기</button>
        </div>

        <input type="submit" class="btn btn-outline-info" style="margin: 30px 80px;" value="다음으로 넘어가기 ✈️" />
    </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
