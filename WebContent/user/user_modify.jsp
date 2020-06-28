<%@page import="com.webpage.user.model.UserVO"%>
<%@page import="com.webpage.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	if(session.getAttribute("user_id")==null){
		response.sendRedirect("/Webpage/user/user_login.jsp");
	}
	
	String id = (String)session.getAttribute("user_id");

	UserDAO dao = UserDAO.getInstance();
	UserVO vo = dao.getUserInfo(id);
	
	String nick = vo.getNick();
	String email = vo.getEmail();
	String address = vo.getAddress();

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
	
		<form action="user_modify_ok.jsp" method="post" name="Form">
			<h1>정보수정</h1>
			<p class="caution">*표시는 필수사항 입니다.</p>
				<table>
					<tr>
						<td>아이디(변경 X)</td>
						<td><input type="text" name="id" value="<%=id%>" readonly></td>

					<tr>
						<td>비밀번호 *</td>
						<td><input type="password" name="pw"></td>
					</tr>
					
					<tr>
						<td>비밀번호확인 *</td>
						<td><input type="password" name="pw_check"></td>
					</tr>
					
					<tr>
						<td>닉네임(변경 X)</td>
						<td><input type="text" name="nick" value="<%= nick%>" readonly></td>
					</tr>
					
					<tr>
						<td>이메일 *</td>
						<td><input type="email" name="email" value="<%= email%>"></td>
					</tr>
					
					<tr>
						<td>주소</td>
						<td><input type="text" name="address" value="<%= address%>"></td>
					</tr>
				</table>
				<br>
				<input type="button" value="확인" onclick="check()">
				<input type="button" value="이전" onclick="location.href='/Webpage/user/user_mypage.jsp'">
				
	
		
		</form>
		
		
	</section>


<%@ include file="../include/footer.jsp" %>

<script>
		function check(){
			if(document.Form.pw.value==''){
				alert("비밀번호는 필수 입력 항목입니다.");
			}else if(document.Form.pw.value!=document.Form.pw_check.value){
				alert("입력하신 두 개의 비밀번호가 일치하지 않습니다.");
				return;
			}else if(document.Form.email.value==''){
				alert("이메일은 필수사항입니다.");
				return;
			}else if(confirm("정보수정을 완료하시겠습니까?")){
				document.Form.submit();
			}
		}
	
	
	</script>

<body>

</body>
</html>