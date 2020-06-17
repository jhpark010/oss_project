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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="find">


		<form action="user_find_id_ok.jsp" method="post">
			<h3 class="subtitle">아이디 찾기</h3>
			<p class="caution">아이디를 찾기 위해서 닉네임과 이메일이 필요합니다</p>
				<table>
					<tr>
						<td>닉네임  </td>
						<td><input type="text" name="nick"></td>

					<tr>
						<td>이메일  </td>
						<td><input type="email" name="email"></td>
					</tr>
				</table>
				<input type="submit"  value="확인">
				<input type="button" value="취소" onclick="window.close();">
		</form>
	


</body>
</html>