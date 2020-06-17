<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String nick = (String)session.getAttribute("user_nick");
	String pw = (String) session.getAttribute("user_pw");
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
<body id="find">

	<h3>비밀번호 찾기 성공!</h3>
	<table>
		<tr>
			<td><%=nick%>님의 비밀번호 > </td>
			<td><a class="find_box"><%= pw%></a></td>
		<tr>
	</table>
	<input type="button" value="이전" onclick="location.href='/Webpage/user/user_find_id.jsp'">
	<input type="button" value="닫기" onclick="window.close();">



</body>
</html>