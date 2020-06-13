<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%
	String nick = (String)session.getAttribute("user_nick");
	request.getSession().setAttribute("c_Nick", nick);
	session.setAttribute("num", request.getAttribute("board_num"));
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
<body style="margin-top:70px; overflow:auto;">


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
<%				
			if(nick==null){%>
				<input type="button" value="목록" onclick="location.href='list.board'">&nbsp;&nbsp;
			<%}else{
				if(nick.equals(request.getAttribute("board_writer"))){%>
					<input type="button" value="목록" onclick="location.href='list.board'">&nbsp;&nbsp;
					<input type="button" value="수정" onclick="location.href='modify.board?num=${board_content.num}' " >&nbsp;&nbsp;
					<input type="button" value="삭제" onclick="location.href='delete.board?num=${board_content.num}' ">&nbsp;&nbsp;
				 <%}else{%>
				 	<input type="button" value="목록" onclick="location.href='list.board'">&nbsp;&nbsp;
<%					} 
				 }
%>
			</td>
		</tr>
	</table>
	</div>
	
	<!-- 댓글 영역 -->
	<br><br>
	
	<div class="comment">
		<table border="1" bordercolor="lightgray">
		<c:if test="${comment_list != null }">
			<c:forEach var="comment" items="${comment_list}">
            <tr>
                
                <td width="80" height="40">
                    <div>
                        ${comment.nick}<br>
                    </div>
                </td>
                
                <td width="400">
                    <div class="text_wrapper">
                        ${comment.content}
                    </div>
                </td>
                
                <td width="80">
                    <div id="btn" style="text-align:center;">
                        <font size="2" color="lightgray">${comment.date}</font><br>
                    
                    <c:if test="${comment.nick == sessionScope.c_Nick}">
                        <a href="comment_modify.board?comment_num=${comment.num}" onclick="window.open(this.href, '_blank', 'width = 550px, height = 300px, toolbars = no, scrollbars = no'); return false;">[수정]</a><br>    
                        <a href="comment_delete.board?comment_num=${comment.num}">[삭제]</a> 
                    </c:if>        
                    </div>
                </td>
            </tr>
            </c:forEach>
            </c:if>
            
            <c:if test="${sessionScope.c_Nick != null }">
            <form action="comment.board" name="Form">
            	<input type="hidden" name="comment_board" value="${board_num}">
                <input type="hidden" name="comment_id" value="${sessionScope.c_Nick}">
                <!-- 아이디-->
                <td width="150">
                    <div>
                        ${sessionScope.c_Nick}
                    </div>
                </td>
                <!-- 본문 작성-->
                <td width="550">
                    <div>
                        <textarea name="comment_content" rows="4" cols="70" ></textarea>
                    </div>
                </td>
                <!-- 댓글 등록 버튼 -->
                <td width="100">
                    <div id="btn" style="text-align:center;">
                        <input type="button" value="[댓글등록]" onclick="check()">
                    </div>
                </td>
            </form>
            </c:if>
		</table>
	</div>
</section>	

	
<%@ include file = "../include/footer.jsp" %>

<script>
		
		function check(){
			if(document.Form.comment_content.value==''){
				alert("내용은 4글자이상 입력해야만 합니다.");
				return;
			}else if(document.Form.comment_content.length < 4){
				alert("내용은 4글자 이상 입력해야만 합니다.");
				return;
			}else if(confirm("댓글 등록을 완료하시겠습니까?")){
				document.Form.submit();
			}
		}
		

	
	
</script>
</body>
</html>