<%@page import="com.webpage.user.model.UserVO"%>
<%@page import="com.webpage.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String nick = request.getParameter("nick");
	String email = request.getParameter("email");
	
	UserDAO dao =UserDAO.getInstance();
	UserVO vo = dao.find_Id(nick, email);
	String id = vo.getId();
	
	if(id==null){%>
		<script>
			alert("일치하는 정보가 없습니다.");
			location.href="/Webpage/user/user_find_id.jsp";
		</script>
	<%}else{
		session.setAttribute("user_id", id);
		response.sendRedirect("/Webpage/user/user_find_id_success.jsp");
	}
%>