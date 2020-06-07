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
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

	<section id="user_ad" style="margin-top: 70px;">

      <div class="container">

        <div>
          <h1>홍보 건의</h1>
          <p class="caution">게임홍보를 원하시는 분들은 아래의 양식을 작성해서 보내면<br>개발자의 이메일로 전송됩니다.<br>건의에 관한 결과는 이메일로 전송됩니다.</p>
        </div>

        <div class="row contact-info">

          <div class="col-md-4">
            <div class="contact-address">
              <i class="ion-ios-location-outline"></i>
              <h3>Address</h3>
              <address>주소</address>
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-phone">
              <i class="ion-ios-telephone-outline"></i>
              <h3>Phone Number</h3>
              <p><a href="tel:+155895548855">02-2222-2222</a></p>
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

		<div>
				<form action="SendMailAttachServlet" method="post" enctype="multipart/form-data" name="Form">
					<table  border="0" width="60%" align="center">
						<tr>
							<td width="50%">연락받을 이메일</td>
							<td><input type="text" name="email" size="40"/></td>
						</tr>
						<tr>
							<td>제목</td>
							<td><input type="text" name="subject" size="40"/></td>
						</tr>
						<tr>
							<td>내용</td>
							<td><textarea rows="15" cols="41" name="message"></textarea></td>
						</tr>
						<tr>
							<td>첨부파일</td>
							<td><input type="file" name="file" size="50" /></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
							<button type="button" type="button" onclick="check()">확인</button>
							<button type="button" onclick="location.href='/Webpage/user/user_mypage.jsp'">이전페이지</button>
							</td>
						</tr>
					</table>
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
			}else if(confirm("홍보건의를 완료하시겠습니까?")){
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