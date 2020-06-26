<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>OIS - Onlinegame Information Sharing site</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="/Webpage/img/favicon.png" rel="icon">
  <link href="/Webpage/img/icon.png" rel="apple-touch-icon">

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
<body style="margin-top:70px;">

<%@ include file = "../include/header.jsp" %>

	<section id="contact" class="section-bg wow fadeInUp">

      <div class="container">

        <div class="section-header">
          <h2>고객센터</h2>
          <p>홈페이지 이용에 불편한 점이나 개선할 점은 아래 양식을 작성해서 제출해주시기 바랍니다.</p>
          <p>이메일,제목,내용은 필수입력 항목입니다.</p>
        </div>

        <div class="row contact-info">

          <div class="col-md-4">
            <div class="contact-address">
              <i class="ion-ios-location-outline"></i>
              <h3>Address</h3>
              <address>서울 특별시 강남구 ***</address>
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-phone">
              <i class="ion-ios-telephone-outline"></i>
              <h3>Phone Number</h3>
              <p><a href="tel:+821111111111">02-2222-2222</a></p>
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-email">
              <i class="ion-ios-email-outline"></i>
              <h3>Email</h3>
              <p><a href="mailto:info@example.com">info@example.com</a></p>
            </div>
          </div>

        </div>

        <div class="form">
				<form action="Contact_servlet" method="post" role="form" class="contactForm" name="Form">
					<div>
						<input type="hidden" name="value" value="service">
					</div>
					<div class="form-group">
						<input type="email" class="form-control" name="email" placeholder="이메일을 입력하세요.">
					</div>

					<div class="form-group">
						<input type="text" class="form-control" name="subject" placeholder="제목을 입력하세요.">
					</div>
					<div class="form-group">
						<textarea class="form-control" name="message" rows="5" placeholder="내용을 입력해주세요."></textarea>
					</div>
					<div class="text-center">
						<button type="button" onclick="check()">확인</button>
					</div>
				</form>
			</div>

      </div>
    </section>
<%@ include file = "../include/footer.jsp" %>

<script>
		function check(){
			if(document.Form.email.value==''){
				alert("이메일은 필수 입력 항목입니다.");
				return;
			}else if(document.Form.subject.value==''){
				alert("제목은 필수 입력 항목입니다.");
			}else if(document.Form.message.value==''){
				alert("내용은 필수 입력 항목입니다.");
				return;
			}else if(confirm("해당 내용을 접수하시겠습니까?")){
				document.Form.submit();
			}
		}
	
	
</script>


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
  <script src="../contactform/contactform.js"></script>	<!-- 홍보건의 창에서 아무것도 입력안했을 때 경고 메시지 출력을 위해 -->

  <!-- Template Main Javascript File -->
  <script src="/Webpage/js/main.js"></script>

</body>
</html>