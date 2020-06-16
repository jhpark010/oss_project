<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("user_id");
	String nick = (String) session.getAttribute("user_nick");

	if (session.getAttribute("user_id") == null) {
		response.sendRedirect("/Webpage/user/user_login.jsp");
	}
%>

<!DOCTYPE html>
<html>
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

<%@ include file = "../include/header.jsp" %>

	<section id="user">
	<!-- <div class="user_container"> -->
			<h1>Mypage</h1>
			<p class="caution"><%=id %>(<%=nick %>)님 환영합니다</p>
				<input type="button" value="홍보건의" onclick="location.href='/Webpage/user/user_ad.jsp'">
				<input type="button" value="정보수정" onclick="location.href='/Webpage/user/user_modify.jsp'">
				<input type="button"  value="로그아웃" onclick="location.href='/Webpage/user/user_logout.jsp'">
				<input type="button" value="회원탈퇴" onclick="location.href='/Webpage/user/user_delete.jsp'">
				
				
		
		<!-- </div> -->
		
	</section>
	<section id="gallery">

		<div class="container">
			<div class="section-header">
				<p>신작 게임</p>
			</div>
		</div>

		<div class="owl-carousel gallery-carousel">
        <a href="/Webpage/img/gallery/chasing light.jpg" class="venobox" data-gall="gallery-carousel"><img src="/Webpage/img/gallery/chasing light.jpg" alt=""></a>
        <a href="/Webpage/img/gallery/cyber punk.jpg" class="venobox" data-gall="gallery-carousel"><img src="/Webpage/img/gallery/cyber punk.jpg" alt=""></a>
        <a href="/Webpage/img/gallery/deathstranding.jpg" class="venobox" data-gall="gallery-carousel"><img src="/Webpage/img/gallery/deathstranding.jpg" alt=""></a>
        <a href="/Webpage/img/gallery/ghost-of-tsushima.jpg" class="venobox" data-gall="gallery-carousel"><img src="/Webpage/img/gallery/ghost-of-tsushima.jpg" alt=""></a>
        <a href="/Webpage/img/gallery/minecraft.png" class="venobox" data-gall="gallery-carousel"><img src="/Webpage/img/gallery/minecraft.png" alt=""></a>
        <a href="/Webpage/img/gallery/valorant.jpg" class="venobox" data-gall="gallery-carousel"><img src="/Webpage/img/gallery/valorant.jpg" alt=""></a>
        <a href="/Webpage/img/gallery/mbb.jpg" class="venobox" data-gall="gallery-carousel"><img src="/Webpage/img/gallery/mbb.jpg" alt=""></a>
        <a href="/Webpage/img/gallery/predator.jpg" class="venobox" data-gall="gallery-carousel"><img src="/Webpage/img/gallery/predator.jpg" alt=""></a>
      </div>

    </section>
<%@ include file = "../include/footer.jsp" %>

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