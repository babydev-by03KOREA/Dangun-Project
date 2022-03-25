<%--
  Created by IntelliJ IDEA.
  User: parkhyeongju
  Date: 2022/03/19
  Time: 9:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>식당 등록하기</title>
    <link href="../css/input.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <jsp:include page="../menu.jsp"/>
    <h2 style="margin-left: 100px; margin-top: 10px;"><b>우리동네 맛집 등록하기 🍽</b></h2>
    <form action="register/registerPro.jsp" method="post">
        <div class="input-group mb-3">
            <input type="text" name="dangun" id="address_dangun" class="form-control" placeholder="맛집 동네(자동등록)" aria-label="Recipient's username" readonly>
        </div>
        <div class="input-group mb-3">
            <select class="form-select" aria-label="Default select example" name="type">
                <option value="null" selected>맛집 종류를 선택하세요.</option>
                <option value="한식">한식</option>
                <option value="중식">중식</option>
                <option value="일식">일식</option>
                <option value="양식">양식</option>
                <option value="디저트">디저트</option>
            </select>
        </div>
        <div class="input-group mb-3">
            <input type="text" name="name" class="form-control" placeholder="등록할 맛집 이름을 입력하세요." aria-label="Recipient's username">
        </div>
        <div class="input-group mb-3">
            <input type="text" name="phone" class="form-control" placeholder="등록할 맛집 전화번호를 입력하세요." aria-label="Recipient's username">
        </div>
        <div class="input-group mb-3">
            <input type="text"  name="address" id="address_kakao" class="form-control" placeholder="등록할 맛집 주소를 입력하세요.(자동등록)" aria-label="Recipient's username" readonly>
        </div>
        <div class="input-group mb-3">
            <input type="text" name="detail" id="address_detail" class="form-control" placeholder="등록할 맛집의 상세주소를 입력하세요." aria-label="Recipient's username">
        </div>
        <div class="time">
            맛집의 여는시간을 시계 아이콘⏰을 눌러 선택해주세요!
        </div>
        <div class="input-group mb-3">
            <input type="time" name="open" class="form-control" placeholder="등록할 맛집 여는시간을 입력하세요.(자동등록)" aria-label="Recipient's username">
        </div>
        <div class="time">
            맛집의 닫는시간을 시계 아이콘⏰을 눌러 선택해주세요!
        </div>
        <div class="input-group mb-3">
            <input type="time" name="closed" class="form-control" placeholder="등록할 맛집 닫는시간을 입력하세요." aria-label="Recipient's username">
        </div>
        <button type="submit" class="btn btn-outline-success" style="margin-left: 1550px; margin-top: 40px">맛집 등록하기🤤</button>
    </form>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        window.onload = function(){
            document.getElementById("address_dangun").addEventListener("click", function(){ //주소입력칸을 클릭하면
                //카카오 지도 발생
                new daum.Postcode({
                    oncomplete: function(data) { //선택시 입력값 세팅
                        document.getElementById("address_dangun").value = data.bname2;
                        document.getElementById("address_kakao").value = data.address; // 주소 넣기
                        document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
                    }
                }).open();
            });
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
