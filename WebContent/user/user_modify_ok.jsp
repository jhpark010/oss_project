<%@page import="com.webpage.user.model.UserVO"%>
<%@page import="com.webpage.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	
	UserDAO dao = UserDAO.getInstance();
	
	int nick_result = dao.nickConfirm(nick);
	
	if(nick_result==1){%>
		<script>
			alert("입력한 닉네임이 중복합니다.");
			history.go(-1);
		</script>
<%	}else {
		UserVO vo = new UserVO(id,pw,nick,email,address,null);
		int result = dao.modify(vo);
		
		if(result==1){
			session.setAttribute("user_nick", nick);
%>			
			<script>
			alert("회원님의 정보수정이 정상적으로 처리되었습니다.");
			location.href='/Webpage/user/user_mypage.jsp';
		</script>
<%		}else{%>
		<script>
			alert("회원님의 정보수정을 실패하였습니다.");
			location.href='/Webpage/user/user_mypage.jsp';
		</script>
<%		}
	}%>