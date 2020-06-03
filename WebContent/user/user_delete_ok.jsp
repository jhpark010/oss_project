<%@page import="com.webpage.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("user_id");
	String pw = request.getParameter("pw");
	
	UserDAO dao = UserDAO.getInstance();
	int result1 = dao.login(id, pw);
	
	if(result1==0){%>
		<script>
			alert("입력하신 비밀번호가 틀렸습니다.");
			history.go(-1);
		</script>
	<%}else{
		int result2 = dao.delete(id);
			if(result2==1){
				session.invalidate();
%>
				<script>
					alert("정상적으로 회원탈퇴 되었습니다.");
					location.href='/Webpage/user/user_login.jsp';
				</script>
<%			}else{%>
				<script>
					alert("회원탈퇴에 실패하였습니다. 다시 시도해주세요.");
					history.go(-1);
				</script>
<%				
			
		}
	}
	
%>