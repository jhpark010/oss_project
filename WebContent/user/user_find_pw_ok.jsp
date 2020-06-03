<%@page import="com.webpage.user.model.UserVO"%>
<%@page import="com.webpage.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String nick = request.getParameter("nick");
	
	UserDAO dao =UserDAO.getInstance();
	UserVO vo = dao.find_Pw(id, nick);
	String pw = vo.getPw();
	
	if(pw==null){%>
		<script>
			alert("일치하는 정보가 없습니다.");
			location.href="/Webpage/user/user_find_pw.jsp";
		</script>
	<%}else{
		session.setAttribute("user_nick",nick);
		session.setAttribute("user_pw", pw);
		response.sendRedirect("/Webpage/user/user_find_pw_success.jsp");
	}
%>