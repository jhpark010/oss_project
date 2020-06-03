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
	int result1 = dao.idConfirm(id);
%>
<% if(result1==1){%>
	<script>
		alert("아이디가 중복됩니다.");
		history.go(-1);
	</script>
	<%}else{
		UserVO vo = new UserVO(id,pw,nick,email,address,null); //마지막의 null은 회원가입 했을 때의 시간이라 vo생성 시에는 null값으로 한다.
		int result2 = dao.signUp(vo);							//해당 값은 mysql내에서 테이블에 새로운 레코드를 추가 할 때 자동으로 시간이 저장됨
		
		if(result2==1){%>
			<script>
				alert("회원가입을 축하합니다!");
				location.href="/Webpage/user/user_login.jsp";
			</script>
		<%}else{%>
			<script>
				alert("회원가입을 실패했습니다!");
				histroy.go(-1);
			</script>
		<%}
	}%>
