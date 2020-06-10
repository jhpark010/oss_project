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
<body style="margin-top:70px;">

<%@ include file = "../include/header.jsp" %>
<section id="board">
	<div class="container">

		<h2>게시글 내용</h2>
	<hr>
	<table border="1">
		<tr>

			<td>글제목</td>
			<td class="board_text" colspan="5">${board_content.title}</td>
		</tr>
		<tr>
			<td>카테고리</td>
			<td colspan="5">${board_content.category}</td>
		<tr>	
			<td>작성자</td>
			<td class="board_text">${board_content.writer}</td>
			
			<td>조회수</td>
			<td>${board_content.hit}</td>
			
			<td>작성일</td>
			<td>${board_content.regdate}</td>
		</tr>
		<tr>
			<td>글내용</td>
			<td colspan="5" height="300px" width="700px">${board_content.content}</td>
		</tr>
		<tr>
			<td colspan="6" align="center">
				<input type="button" value="목록" onclick="location.href='list.board'">&nbsp;&nbsp;
<%				String writer = (String)request.getAttribute("board_writer");
				if(nick.equals(writer)){%>
					<input type="button" value="수정" onclick="location.href='modify.board?num=${board_content.num}' " >&nbsp;&nbsp;
					<input type="button" value="삭제" onclick="location.href='delete.board?num=${board_content.num}' ">&nbsp;&nbsp;
				 <%}%>
			</td>
		</tr>
	</table>
	</div>
</section>	

	
<%@ include file = "../include/footer.jsp" %>

</body>
</html>