<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%
	String nick = (String)session.getAttribute("user_nick");
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
<body style="margin-top:70px;">

<%@ include file = "../include/header.jsp" %>
<section id="board">
	<div class="container">

		<h2>게시글 수정</h2>
	<hr>
	<form action="update.board" method="post">
	<table border="1">
		<tr>
			<td>
				<input style="display:none" name="num" value="${board_content.num }">
				<!-- 수정을 위해서는 num의 값(게시물 마다의 고유한 번호)이 필요해서 해당 input태그는 숨김처리한다. -->
			</td>
		</tr>
		<tr>

			<td>글제목</td>
			<td class="board_text" colspan="5">
			<a>${board_content.title}</a>
			</td>
		</tr>
		<tr>
			<td>카테고리</td>
			<td colspan="5">
				<select name="category">
						<option value="자유">자유</option>
						<option value="RTS">RTS</option>
						<option value="스포츠">스포츠</option>
						<option value="FPS">FPS</option>
						<option value="RPG">RPG</option>
						<option value="RTS">RTS</option>
				</select>
			</td>
		<tr>	
			<td>작성자</td>
			<td class="board_text" colspan="5">
			<a style="background:#101522">${board_content.writer}</a>
			</td>
		</tr>
		<tr>
			<td>글내용</td>
			<td colspan="5" height="300px" width="700px">
			<textarea class="board_textarea" rows="10" style="width: 95%; height : 295px;" name="content">${board_content.content}</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="6" align="center">
			<input type="submit" value="수정">&nbsp;&nbsp;
			<input type="button" value="이전" onclick="location.href='content.board?num=${board_content.num}' ">
			</td>
		</tr>
	</table>
	</form>
	</div>
</section>	

	
<%@ include file = "../include/footer.jsp" %>

</body>
</html>