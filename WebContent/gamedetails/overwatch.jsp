<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>TheEvent - Bootstrap Event Template</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="/Webpage/img/favicon.png" rel="icon">
  <link href="/Webpage/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="/Webpage/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="/Webpage/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="/Webpage/lib/animate/animate.min.css" rel="stylesheet">
  <link href="/Webpage/lib/venobox/venobox.css" rel="stylesheet">
  <link href="/Webpage/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="/Webpage/css/style.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: TheEvent
    Theme URL: https://bootstrapmade.com/theevent-conference-event-bootstrap-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>

<body>
 
 <%@ include file="../include/header.jsp" %>
 

    <section id="speakers-details" class="wow fadeIn">
      <div class="container">
        <div class="section-header">
          <h2 style="color:white;">오버워치</h2>
          <p>OVERWATCH</p>
        </div>
        
        <div class="introduce">
          <p>게임 소개 및 소개 영상</p>
        </div>
        
        <div class="row">
          <div class="col-md-12">
            <iframe width="1120" height="540" src="https://www.youtube.com/embed/dushZybUYnM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>

          <div class="col-md-12">
            <div class="details">
              <h2>오버워치란?</h2>
              <div class="social">
                <a href="/Webpage/index.jsp"><i class="fa fa-arrow-left"></i></a>
                <a href="https://playoverwatch.com/ko-kr/"><i class="fa fa-home"></i></a>
                <a href="/Webpage/user/user_login.jsp"><i class="fa fa-sign-in"></i></a>
              </div>
              <p>오버워치는 다수의 강력한 영웅을 플레이할 수 있는 다채로운 팀전 슈팅게임입니다.</p>
              <p>32명의 영웅을 골라서 직접 게임을 플레이 할 수 있고 게임 도중에도 영웅을 교체할 수 있고</p>
              <p>각 영웅들은 돌격, 공격, 지원 성향들을 가지고 있어서 게임 내에서 전략적으로 영웅을 선택할 수 있습니다.</p> 
              <p>오버워치를 즐기는 방법에는 여러 가지가 있으나, 우선 튜토리얼을 통해 가장 기본적인 플레이 방법을 배우길 권장합니다.</p>
              <p>이미 튜토리얼을 완료했다면 주 메뉴를 통해 다시 플레이해볼 수 있습니다.</p>
              
            </div>
          </div>
          
        </div>
      </div>

    </section>



  <!--==========================
    Footer
  ============================-->
  
  <%@include file="../include/footer.jsp" %>
  
  <!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="/Webpage/lib/jquery/jquery.min.js"></script>
  <script src="/Webpage/lib/jquery/jquery-migrate.min.js"></script>
  <script src="/Webpage/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/Webpage/lib/easing/easing.min.js"></script>
  <script src="/Webpage/lib/superfish/hoverIntent.js"></script>
  <script src="/Webpage/lib/superfish/superfish.min.js"></script>
  <script src="/Webpage/lib/wow/wow.min.js"></script>
  <script src="/Webpage/lib/venobox/venobox.min.js"></script>
  <script src="/Webpage/lib/owlcarousel/owl.carousel.min.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="/Webpage/contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="/Webpage/js/main.js"></script>
</body>

</html>
