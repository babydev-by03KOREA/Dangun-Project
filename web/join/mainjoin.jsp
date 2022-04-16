<%--
  Created by IntelliJ IDEA.
  User: parkhyeongju
  Date: 2022/04/02
  Time: 1:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입을 환영합니다!🥳</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
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
    <%-- 회원ID, 회원PW, 회원이름, 회원성별, 회원Email 정보를 기본적으로 받습니다. --%>
    <jsp:include page="/menu.jsp"/>
    <h3 style="text-align: center; margin-top: 40px"><b>회원가입을 환영합니다!🥳</b></h3><br/>
    <div style="display:flex; align-items: center; justify-content: center;">
        <form method="post" action="/join/joinPro.jsp">
            <div class="mb-3">
                <label for="exampleInputID" class="form-label">가입하실 ID를 입력하세요.</label>
                <input type="text" class="form-control" id="exampleInputID" aria-describedby="emailHelp" name="userID" placeholder="아이디를 입력하세요.">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword" class="form-label">가입하실 PW를 입력하세요.</label>
                <input type="password" class="form-control" id="exampleInputPassword" name="userPassword" placeholder="비밀번호를 입력하세요.">
            </div>
            <div class="mb-3">
                <label for="exampleInputName" class="form-label">가입하실 성함을 입력하세요.</label>
                <input type="text" class="form-control" id="exampleInputName" name="userName" placeholder="성함을 입력하세요.">
            </div>
            <div class="mb-3">
                <label for="exampleInputName" class="form-label">회원님의 성별을 선택해주세요.</label>
                <select class="form-select" aria-label="Default select example" name="userGender">
                    <option selected value="null">--성별 선택--</option>
                    <%-- 유효성 검사 시, value = null일 경우 alert --%>
                    <option value="남자" name="male">남자</option>
                    <option value="여자" name="female">여자</option>
                    <option value="무응답" name="no-answer">무응답</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">가입하실 E-Mail 주소를 입력해주세요.</label>
                <%-- browser Default Service --%>
                <input type="email" name="userEmail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="'@'가 들어간 E-mail을 입력해주세요.">
                <div id="emailHelp" class="form-text">E-Mail로 비밀번호 분실 시 임시 비밀번호가 발송됩니다. 정확한 E-Mail 주소를 입력바랍니다!</div>
            </div>
            <p style="font-size: 16px">약관 및 개인정보 수집 이용에 동의해주세요.</p>
            <div class="form-check" id="box1"> <%--CheckBox Area / BootStrap--%>
                <input class="form-check-input" type="checkbox" id="flexCheckDefault" name="userAgreement" value="Y">
                <label class="form-check-label" for="flexCheckDefault"><strong>개인정보 수집에 동의합니다(필수) &nbsp;</strong></label>
                <button type="button" class="btn btn-secondary btn-sm" onclick="popup()">약관보기</button>
            </div>
            <button type="submit" class="btn btn-outline-success" style="margin-top: 40px; width: 600px; text-align: center">회원가입하기 ✈️</button>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
