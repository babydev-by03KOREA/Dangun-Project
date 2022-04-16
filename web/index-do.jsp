<%--
  Created by IntelliJ IDEA.
  User: parkhyeongju
  Date: 2022/03/23
  Time: 5:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="kr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>모두의 맛집, 당근맛집🥕</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/jumbotron/">



    <!-- Bootstrap core CSS -->
    <link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#7952b3">


    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>


</head>
<body>
    <jsp:include page="menu.jsp"/>
<main>
    <div class="container py-4">
        <div class="p-5 mb-4 bg-light rounded-3">
            <div class="container-fluid py-5">
                <h1 class="display-5 fw-bold">내손으로 만드는 맛집 🗺</h1>
                <p class="col-md-8 fs-4">여기까지 왔으니 이건 꼭! 먹어야해! 우리동네에 오시면 이것만큼은 꼭! 먹고가세요! 맛집 예약부터 전 세계가 인정한 Trip advisor까지!</p>
                <button class="btn btn-primary btn-lg" type="button" onclick="location.href='index.jsp'">지금 맛집찾으러 가기 👉</button>
            </div>
        </div>

        <div class="row align-items-md-stretch">
            <div class="col-md-6">
                <div class="h-100 p-5 text-white bg-dark rounded-3">
                    <h2>관리자 또는 승인된 사용자이신가요?</h2>
                    <p>환영합니다~ 우리에 사이트를 더 풍부하게! 우리동네를 더 풍부하게! 관리자 권한으로 우리동네 맛집을 등록, 수정 혹은 삭제하세요. </p>
                    <button class="btn btn-outline-light" type="button" onclick="location.href='/admin/registration/register.jsp'">관리자로 로그인하기(Admin)</button>
                </div>
            </div>
            <div class="col-md-6">
                <div class="h-100 p-5 bg-light border rounded-3">
                    <h2>거짓정보 및  명예회손 신고⚠️</h2>
                    <p>잘못된 정보 혹은 거짓정보가 있을 시, 고객센터와 즉시 연결되어 처리되며, 확인 후 즉시 계정을 정지합니다. 저희 '당근맛집'은 누구나 평등하고 공평하게 정보를 전해드릴것을 점주님만이 아닌 모든 이용자분들께 약속드립니다.</p>
                    <button class="btn btn-outline-secondary" type="button">거짓정보 신고 및 고객센터 연결</button>
                </div>
            </div>
        </div>

        <footer class="pt-3 mt-4 text-muted border-top">
            Copyright &copy; 영앤리치 all right reserved. 무단 복제 및 사용시, 법적 처벌을 받을 수 있습니다.
        </footer>
    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
