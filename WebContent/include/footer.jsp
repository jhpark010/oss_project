<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6 footer-info">
            <img src="/Webpage/img/projectlogo.png" alt="TheEvenet">
            <p>오픈소스 소프트웨어 프로젝트로 만든 웹 페이지 입니다. 해당 웹 페이지는 각종 온라인게임에 대한 소개와 온라인게임을 이용하는 많은 유저들끼리 정보를 공유할 수도 있으며 기존의 디자인만 가져오고 세부적인 디자인과 페이지 기능 및 버튼 활성화는 모두 제작하였습니다.</p>
            <p align="center">(2조 - 박주현, 장동호, 이동건)</p>
          </div>

          <div class="col-lg-4 col-md-6 footer-links">
            <h4>즐겨찾는 메뉴</h4>
            <ul>
              <li><i class="fa fa-angle-right"></i> <a href="/Webpage/index.jsp#intro">메인</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="/Webpage/index.jsp#newgames">신작게임</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="/Webpage/index.jsp#games">게임목록</a></li>
              <li><i class="fa fa-angle-right"></i> <a href="/Webpage/board/list.board">게시판</a></li>
              <%if(session.getAttribute("user_id")==null){%>
              	<li><i class="fa fa-angle-right"></i> <a href="/Webpage/user/user_login.jsp">로그인</a></li>
              <%}else{ %>
              	<li><i class="fa fa-angle-right"></i> <a href="/Webpage/user/user_logout.jsp">로그아웃</a></li>
              <%} %>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-contact">
            <h4>개발자 연락처</h4>
            <p>서울특별시<br>강남구<br>*****로<br>
              <strong>Phone:</strong> 010 - **** - ****<br>
              <strong>Email:</strong> test@test.com<br>              
            </p>

          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>TheEvent</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=TheEvent
        -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- #footer -->