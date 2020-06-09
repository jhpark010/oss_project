<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!--==========================
    Header
  ============================-->
  <header id="header" class="header-fixed">
    <div class="container">

      <div id="logo" class="pull-left">
        <!-- Uncomment below if you prefer to use a text logo --><!-- 메뉴바 링크는 절대경로로 설정할 것!! -->
        <!-- <h1><a href="#main">C<span>o</span>nf</a></h1>-->
        <a href="/Webpage/index.jsp#intro" class="scrollto"><img src="/Webpage/img/projectlogo.png" alt="" title=""></a>
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="#intro">Home</a></li>
          <li><a href="/Webpage/index.jsp#about">About</a></li>
          <li><a href="/Webpage/index.jsp#speakers">신작게임</a></li>
          <li><a href="/Webpage/index.jsp#schedule">대회</a></li>
          <li><a href="/Webpage/index.jsp#hotels">게임목록</a></li>
          <li><a href="/Webpage/board/list.board">게시판</a></li>
          <li><a href="/Webpage/index.jsp#faq">자주하는질문</a></li>
          <li><a href="/Webpage/index.jsp#contact">고객센터</a></li>
          <!-- 추후에 삭제할 것!  <li class="buy-tickets"><a href="index.jsp#buy-tickets">Buy Tickets</a></li>-->
          <%if(session.getAttribute("user_id")==null){%>
          <li class="buy-tickets"><a href="/Webpage/user/user_login.jsp">Login</a></li>
          <li class="buy-tickets"><a href="/Webpage/user/user_signUp.jsp">Sign up</a></li>
          <%}else{ %>
          <li class="buy-tickets"><a href="/Webpage/user/user_mypage.jsp">Mypage</a></li>
          <li class="buy-tickets"><a href="/Webpage/user/user_logout.jsp">Logout</a></li>
          <%} %>
          
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->