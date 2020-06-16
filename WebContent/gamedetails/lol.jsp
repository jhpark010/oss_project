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
 

    <section id="games-details" class="wow fadeIn">
      <div class="container">
        <div class="section-header">
          <h2 style="color:white;">리그 오브 레전드</h2>
          <p>League of Legends</p>
        </div>

		<div class="introduce">
          <p>게임 소개 및 소개 영상</p>
        </div>

        <div class="row">
          <div class="col-md-12">
            <iframe width="1120" height="540" src="https://www.youtube.com/embed/BGtROJeMPeE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>

          <div class="col-md-12">
            <div class="details">
              <h2>리그오브레전드란?</h2>
              <div class="social">
                <a href="/Webpage/index.jsp"><i class="fa fa-arrow-left"></i></a>
                <a href="https://kr.leagueoflegends.com/ko-kr/how-to-play/"><i class="fa fa-home"></i></a>
                <a href="/Webpage/user/user_login.jsp"><i class="fa fa-sign-in"></i></a>
              </div>
              <p>리그 오브 레전드는 5명의 강력한 챔피언으로 구성된 양 팀이 서로의 기지를 파괴하기 위해</p>
              <p>치열한 사투를 벌이는 전략 게임입니다.</p>
              <p>140여 명의 챔피언 중 하나를 선택해 화려한 플레이를 펼치며</p> 
              <p> 적을 처치하고 포탑을 파괴해 승리를 쟁취하세요.</p>
              
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
