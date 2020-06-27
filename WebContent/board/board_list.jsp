<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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
<body style="background: #101522;">


<%@ include file = "../include/header.jsp" %>

	<section id="board_list">
	<div>
		<h1>게임 정보 공유 게시판</h1>
		<br><br><br><br>
		<p class="caution">로그인을 하지 않은 사용자에게는 읽기 기능만 제공합니다</p>
	</div>
	</section>
	<div class="container">

		<table class="table table-bordered" style="color:white;">
			<thead>
				<tr>
					<!-- <th>글번호</th> -->
					<th>카테고리</th>
					<th>닉네임</th>
					<th>제목</th>
					<th>작성한 날짜</th>
					<th>조회수</th>
				</tr>
			</thead>
			
			<c:forEach var="vo" items="${board_list}">
			<tbody>
				<tr>
					<td>${vo.category}</td>
					<td>${vo.writer}</td>
					<td>
						<a href="content.board?num=${vo.num}">${vo.title}</a>
					</td>
					<td>${vo.regdate}</td>
					<td>${vo.hit}</td>
				</tr>
			</tbody>
			</c:forEach>
			<tbody>
				<tr>
					<td colspan="5" align="center">
						<form action="" class="form-inline" >
						  <div class="form-group">
							<input type="button" value="글 작성" class="btn btn-default" onclick="location.href='write.board' ">
						  </div>
						</form> 
					</td>
				</tr>
			</tbody>
		
		</table>
	</div>

	
	
<%@ include file = "../include/footer.jsp" %>

</body>
</html>