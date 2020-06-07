<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<form action="user_signUp_ok.jsp" method="post" name="Form">
			<h1>회원가입</h1>
			<p class="caution">*표시는 필수사항 입니다.</p>
				<table>
					<tr>
						<td>아이디 *</td>
						<td><input type="text" name="id" placeholder="4글자이상 10글자 이하"></td>

					<tr>
						<td>비밀번호 *</td>
						<td><input type="password" name="pw"></td>
					</tr>
					
					<tr>
						<td>비밀번호확인 *</td>
						<td><input type="password" name="pw_check"></td>
					</tr>
					
					<tr>
						<td>닉네임 *</td>
						<td><input type="text" name="nick"></td>
					</tr>
					
					<tr>
						<td>이메일 *</td>
						<td><input type="email" name="email"></td>
					</tr>
					
					<tr>
						<td>주소</td>
						<td><input type="text" name="address"></td>
					</tr>
				</table>
				<br>
				<input type="button" value="확인" onclick="check()">
				<input type="button" value="취소" onclick="location.href='/Webpage/user/user_login.jsp'">
				
	
		
		</form>
		
		<!-- </div> -->
		
	</section>


<%@ include file="../include/footer.jsp" %>

<script>
		function check(){
			if(document.Form.id.value==''){
				alert("아이디는 필수 입력 항목입니다.");
				return;
			}else if(document.Form.id.value.length < 4){
				alert("아이디는 4글자 이상 입력해야만 합니다.");
				return;
			}else if(document.Form.pw.value==''){
				alert("비밀번호는 필수 입력 항목입니다.");
			}else if(document.Form.pw.value!=document.Form.pw_check.value){
				alert("입력하신 두 개의 비밀번호가 일치하지 않습니다.");
				return;
			}else if(document.Form.nick.value==''){
				alert("닉네임은 필수사항입니다.");
				return;
			}else if(document.Form.email.value==''){
				alert("이메일은 필수사항입니다.");
				return;
			}else if(confirm("회원가입을 완료하시겠습니까?")){
				document.Form.submit();
			}
		}
	
	
	</script>
</body>
</html>