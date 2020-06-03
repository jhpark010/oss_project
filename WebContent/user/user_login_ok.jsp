<%@page import="com.webpage.user.model.UserVO"%>
<%@page import="com.webpage.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	UserDAO dao = UserDAO.getInstance();
	int result = dao.login(id,pw);
	
	if(result==1){
		UserVO vo = dao.getUserInfo(id);
		String nick = vo.getNick();
		
		session.setAttribute("user_id", id);
		session.setAttribute("user_nick", nick);
		
		response.sendRedirect("/Webpage/index.jsp");
	}else{%>
		<script>
			alert("아이디 혹은 비밀번호가 틀렸습니다.");
			history.go(-1);
		</script>
<%	}%>
