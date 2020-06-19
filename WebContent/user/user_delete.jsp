<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("user_id");

	if (session.getAttribute("user_id") == null) {
		response.sendRedirect("/Webpage/user/user_login.jsp");
}

%>

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
<body>

<%@ include file = "../include/header.jsp" %>

	<section id="user">
		<form action="user_delete_ok.jsp" method="post">
			<h2>회원탈퇴</h2>
			<p class="caution"><%=id %>님 정말로 탈퇴하시겠습니까?<br>비밀번호를 입력해주세요.</p>
				<input type="password" name="pw" placeholder="Enter the password">
				<input type="submit"  value="확인">
				<input type="button" value="이전" onclick="location.href='/Webpage/user/user_mypage.jsp'">
				
				
		
		<!-- </div> -->
		</form>
	</section>
<%@ include file = "../include/footer.jsp" %>

</body>
</html>