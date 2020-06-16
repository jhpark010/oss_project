<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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

  <!--==========================
    Header
  ============================-->
  
  <%@ include file = "../include/header.jsp" %>

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro">
    <div class="intro-container wow fadeIn">
      <h1 class="mb-4 pb-0">5월 2주차<br><span>온라인게임</span> TOP20소개영상</h1>
      <p class="mb-4 pb-0">Weekly Online Game Top 20 in Korea</p>
      <a href="https://youtu.be/7PARdyFE8K8" class="venobox play-btn mb-4" data-vbtype="video"
        data-autoplay="true"></a>
      <a href="#about" class="about-btn scrollto">현재 온라인게임 순위 한눈에 보기</a>
    </div>
  </section>

  <!-- <main id="main"> -->

    <!--==========================
      About Section
    ============================-->
    <section id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <h2>About The Event</h2>
            <p>Sed nam ut dolor qui repellendus iusto odit. Possimus inventore eveniet accusamus error amet eius aut
              accusantium et. Non odit consequatur repudiandae sequi ea odio molestiae. Enim possimus sunt inventore in
              est ut optio sequi unde.</p>
          </div>
          <div class="col-lg-3">
            <h3>Where</h3>
            <p>Downtown Conference Center, New York</p>
          </div>
          <div class="col-lg-3">
            <h3>When</h3>
            <p>Monday to Wednesday<br>10-12 December</p>
          </div>
        </div>
      </div>
    </section>
    
    <!--==========================
      Speakers Section
    ============================-->
    <section id="newgames" class="wow fadeInUp">
      <div class="container">
        <div class="section-header">
          <h2>신작게임</h2>
          <p>사진을 클릭하면 해당 게임에 대한 자세한 내용을 알 수 있습니다</p>
        </div>

        <div class="row">
          <div class="col-lg-3 col-md-6">
            <div class="games">
              <img src="/Webpage/img/gallery/chasing light.jpg" alt="new-game 1" class="img-fluid">
              <div class="details">
                <h3><a href="/Webpage/game_new_detail/cl.jsp">Chasing Light</a></h3>
                <div class="social">
                  <a href="/Webpage/game_new_detail/cl.jsp">5월 5일 출시</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="games">
              <img src="/Webpage/img/gallery/cyber punk.jpg" alt="new-game 2" class="img-fluid">
              <div class="details">
                <h3><a href="/Webpage/game_new_detail/cp2077.jsp">Cyberpunk 2077</a></h3>
                <div class="social">
                <a href="/Webpage/game_new_detail/cp2077.jsp">9월 21일 출시예정</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="games">
              <img src="/Webpage/img/gallery/deathstranding.jpg" alt="new-game 3" class="img-fluid">
              <div class="details">
                <h3><a href="/Webpage/game_new_detail/ds.jsp">Death Stranding</a></h3>
                <div class="social">
                  <a href="/Webpage/game_new_detail/ds.jsp">PC용은 20년 7월 14일 출시예정</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="games">
              <img src="/Webpage/img/gallery/ghost-of-tsushima.jpg" alt="new-game 4" class="img-fluid">
              <div class="details">
                <h3><a href="/Webpage/game_new_detail/got.jsp">Ghost of Tsushima</a></h3>
                <div class="social">
                  <a href="/Webpage/game_new_detail/got.jsp">7월 17일 출시예정</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="games">
              <img src="/Webpage/img/gallery/mbb.jpg" alt="new-game 5" class="img-fluid">
              <div class="details">
                <h3><a href="/Webpage/game_new_detail/mbb.jsp">Mount & Blade II: Bannerlord</a></h3>
                <div class="social">
                  <a href="/Webpage/game_new_detail/mbb.jsp">3월 30일 출시</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="games">
              <img src="/Webpage/img/gallery/minecraft.png" alt="new-game 6" class="img-fluid">
              <div class="details">
                <h3><a href="/Webpage/game_new_detail/minecraft.jsp">Minecraft Dungeons</a></h3>
                <div class="social">
                  <a href="/Webpage/game_new_detail/minecraft.jsp">5월 26일 출시</a>
                </div>
              </div>
            </div>
          </div>        
          <div class="col-lg-3 col-md-6">
            <div class="games">
              <img src="/Webpage/img/gallery/predator.jpg" alt="new-game 7" class="img-fluid">
              <div class="details">
                <h3><a href="/Webpage/game_new_detail/predator.jsp">Predator: Hunting Grounds</a></h3>
                <div class="social">
                  <a href="/Webpage/game_new_detail/predator.jsp">4월 24일 출시</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="games">
              <img src="/Webpage/img/gallery/valorant.jpg" alt="new-game 8" class="img-fluid">
              <div class="details">
                <h3><a href="/Webpage/game_new_detail/valorant.jsp">VALORANT</a></h3>
                <div class="social">
                  <a href="/Webpage/game_new_detail/valorant.jsp">현재 클로즈 베타 서비스 진행 중</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

    </section>

    <!--==========================
      Schedule Section
    ============================-->
    <section id="schedule" class="section-with-bg">
      <div class="container wow fadeInUp">
        <div class="section-header">
          <h2>대회 일정</h2>
          <p>원하는 달을 선택해서 해당하는 게임 대회의 정보를 볼 수 있습니다.</p>
        </div>

        <ul class="nav nav-tabs" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" href="#month-1" role="tab" data-toggle="tab">6월</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#month-2" role="tab" data-toggle="tab">7월</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#month-3" role="tab" data-toggle="tab">8월</a>
          </li>
        </ul>

        <h3 class="sub-heading">현재 코로나19로 인해 대회 측의 일정이 변경될 수 있으니 언제나 해당 대회의 홈페이지를 방문하여 자세한 사항을 확인하시기 바랍니다.</h3>

        <div class="tab-content row justify-content-center">

          <!-- Schdule Day 1 -->
          <div role="tabpanel" class="col-lg-9 tab-pane fade show active" id="month-1">

            <div class="row schedule-item">
              <div class="col-md-2">6월 22일</div>
              <div class="col-md-10">
              	<div class="speaker">
                  <img src="img/schedule/tekken.jpg" alt="tekken">
                </div>
                <h4>제 12회 TEKKENCREW RAGECRUSH <span>철권 7</span></h4>
                <p>대회형식 : 개인전-온라인 <br>주최 : 네이버카페 TEKKEN CREW<a href="https://battle.dog/c/nl36jxf4x"> (자세한 사항)</a></p>
              </div>
            </div>
            
            <div class="row schedule-item">
              <div class="col-md-2">6월 24일</div>
              <div class="col-md-10">
              	<div class="speaker">
                  <img src="img/schedule/atl.jpg" alt="tekken">
                </div>
                <h4>2020 ATL S1 DAY3(2020아프리카TV 철권 리스 시즌1) <span>철권 7</span></h4>
                <p>대회형식 : 개인전-온라인 <br>주최 : ATL(아프리카TV TEKKEN 리그 공식방송국) <a href="https://battle.dog/c/2020ATLS1DAY3"> (자세한 사항)</a></p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2">6월 27일</div>
              <div class="col-md-10">
              	<div class="speaker">
                  <img src="img/schedule/valorant.jpg" alt="valorant">
                </div>
                <h4>썸머배 발로란트 대회 <span>발로란트</span></h4>
                <p>대회형식 : 개인전-온라인 <br>주최 : 핫 썸머<a href="https://battle.dog/c/mvp33i6vz"> (자세한 사항)</a></p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2">6월 27일</div>
              <div class="col-md-10">
              	<div class="speaker">
                  <img src="img/schedule/bg.png" alt="battlegrounds">
                </div>
                <h4>이 집 밖은 위험해 시즌2(못해도 괜찮은 솔로대회) <span>배틀그라운드</span></h4>
                <p>대회형식 : 개인전-온라인 <br>주최 : 요요래빗(트위치) <a href="https://battle.dog/c/outsidethishouse">(자세한 사항)</a></p>
              </div>
            </div>

          </div>
          <!-- End Schdule Day 1 -->

          <!-- Schdule Day 2 -->
          <div role="tabpanel" class="col-lg-9  tab-pane fade" id="month-2">

           <div class="row schedule-item">
              <div class="col-md-2">7월 1일</div>
              <div class="col-md-10">
              	<div class="speaker">
                  <img src="img/schedule/atl.jpg" alt="battlegrounds">
                </div>
                <h4>2020 ATL S1 DAY4(2020아프리카TV 철권 리스 시즌1) <span>철권 7</span></h4>
                <p>대회형식 : 개인전-온라인 <br>주최 : ATL(아프리카TV TEKKEN 리그 공식방송국) <a href="https://battle.dog/c/2020ATLS1DAY4"> (자세한 사항)</a></p>
              </div>
            </div>

           <div class="row schedule-item">
              <div class="col-md-2">7월 8일</div>
              <div class="col-md-10">
              	<div class="speaker">
                  <img src="img/schedule/atl.jpg" alt="tekken">
                </div>
                <h4>2020 ATL S1 DAY5(2020아프리카TV 철권 리스 시즌1) <span>철권 7</span></h4>
                <p>대회형식 : 개인전-온라인 <br>주최 : ATL(아프리카TV TEKKEN 리그 공식방송국) <a href="https://battle.dog/c/2020ATLS1DAY5"> (자세한 사항)</a></p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2">7월 15일</div>
              <div class="col-md-10">
              	<div class="speaker">
                  <img src="img/schedule/atl.jpg" alt="tekken">
                </div>
                <h4>2020 ATL S1 DAY6(2020아프리카TV 철권 리스 시즌1) <span>철권 7</span></h4>
                <p>대회형식 : 개인전-온라인 <br>주최 : ATL(아프리카TV TEKKEN 리그 공식방송국) <a href="https://battle.dog/c/2020ATLS1DAY6"> (자세한 사항)</a></p>
              </div>
            </div>

            <div class="row schedule-item">
              <div class="col-md-2">7월 18일</div>
              <div class="col-md-10">
              	<div class="speaker">
                  <img src="img/schedule/kr.png" alt="kartrider">
                </div>
                <h4>DAESIN X SHIELDS 2020 무한부스터 리그 시즌1 <span>카트라이더</span></h4>
                <p>대회형식 : 단체전-온라인 <br>주관 및 주회 : 대신(주), Shields (카트라이더 정규 클럽) <a href="https://battle.dog/c/dsxshields1team"> (자세한 사항)</a></p>
              </div>
            </div>

          </div>
          <!-- End Schdule Day 2 -->

          <!-- Schdule Day 3 -->
          <div role="tabpanel" class="col-lg-9  tab-pane fade" id="month-3">

            <div class="row schedule-item">
              <div class="col-md-2"></div>
              <div class="col-md-10">
                <h4>아직 예정된 대회가 없습니다.</h4>
                <p>대회 홍보관련 문의는 로그인 후 가능합니다.<a href="/Webpage/user/user_ad.jsp"> (홍보링크)</a></p>
              </div>
            </div>

          </div>

        </div>

      </div>

    </section>

    <!--==========================
      Hotels Section
    ============================-->
    <section id="games" class="section-with-bg wow fadeInUp">

      <div class="container">
        <div class="section-header">
          <h2>게임목록</h2>
          <p>원하는 게임을 클릭하시면 게임 소개 페이지로 이동됩니다.</p>
        </div>

        <div class="row">
        
          <div class="col-lg-4 col-md-6">
            <div class="games">
              <div class="games-img">
                <img src="img/games/lol.jpg" alt="LeagueofLegends" class="img-fluid">
              </div>
              <h3><a href="/Webpage/gamedetails/lol.jsp">League of Legends</a></h3>
              <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
              </div>
              <p style="font-weight:bold;">#리그오브레전드 #롤 #AOS</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="games">
              <div class="games-img">
                <img src="img/games/bg.png" alt="BattleGrounds" class="img-fluid">
              </div>
              <h3><a href="/Webpage/gamedetails/battlegrounds.jsp">Battle Grounds</a></h3>
              <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-full"></i>
              </div>
              <p style="font-weight:bold;">#배틀그라운드 #배그 #배틀로얄</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="games">
              <div class="games-img">
                <img src="img/games/overwatch.jpg" alt="overwatch" class="img-fluid">
              </div>
              <h3><a href="/Webpage/gamedetails/overwatch.jsp">OverWatch</a></h3>
              <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
              </div>
              <p style="font-weight:bold;">#오버워치 #옵치 #FPS</p>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-6">
            <div class="games">
              <div class="games-img">
                <img src="img/games/fifa.png" alt="FIFA online4" class="img-fluid">
              </div>
              <h3><a href="/Webpage/gamedetails/fifa.jsp">FIFA online 4</a></h3>
              <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-full"></i>
              </div>
              <p style="font-weight:bold;">#피파온라인4 #피파 #스포츠</p>
            </div>
          </div>
          

          <div class="col-lg-4 col-md-6">
            <div class="games">
              <div class="games-img">
                <img src="img/games/df.jpg" alt="dungeon and fighter" class="img-fluid">
              </div>
              <h3><a href="/Webpage/gamedetails/dAndF.jsp">Dungeon and Fighter</a></h3>
              <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-full"></i>
              </div>
              <p style="font-weight:bold;">#던전앤파이터 #던파 #RPG</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="games">
              <div class="games-img">
                <img src="img/games/sa.jpg" alt="Sudden Attack" class="img-fluid">
              </div>
              <h3><a href="/Webpage/gamedetails/sa.jsp">Sudden Attack</a></h3>
              <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
              </div>
              <p style="font-weight:bold;">#서든어택 #서든 #FPS</p>
            </div>
          </div>

        </div>
      </div>

    </section>


    <!--==========================
      F.A.Q Section
    ============================-->
    <section id="faq" class="wow fadeInUp">

      <div class="container">

        <div class="section-header">
          <h2>자주하는 질문(ex.F.A.Q) </h2>
        </div>

        <div class="row justify-content-center">
          <div class="col-lg-9">
              <ul id="faq-list">

                <li>
                  <a data-toggle="collapse" class="collapsed" href="#faq1">질문 1 <i class="fa fa-minus-circle"></i></a>
                  <div id="faq1" class="collapse" data-parent="#faq-list">
                    <p>
			                    질문 1에 대한 답변 1
                    </p>
                  </div>
                </li>
      
                <li>
                  <a data-toggle="collapse" href="#faq2" class="collapsed">Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque? <i class="fa fa-minus-circle"></i></a>
                  <div id="faq2" class="collapse" data-parent="#faq-list">
                    <p>
                      Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.
                    </p>
                  </div>
                </li>
      
                <li>
                  <a data-toggle="collapse" href="#faq3" class="collapsed">Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi? <i class="fa fa-minus-circle"></i></a>
                  <div id="faq3" class="collapse" data-parent="#faq-list">
                    <p>
                      Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna duis convallis convallis tellus. Urna molestie at elementum eu facilisis sed odio morbi quis
                    </p>
                  </div>
                </li>
      
                <li>
                  <a data-toggle="collapse" href="#faq4" class="collapsed">Ac odio tempor orci dapibus. Aliquam eleifend mi in nulla? <i class="fa fa-minus-circle"></i></a>
                  <div id="faq4" class="collapse" data-parent="#faq-list">
                    <p>
                      Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.
                    </p>
                  </div>
                </li>
      
                <li>
                  <a data-toggle="collapse" href="#faq5" class="collapsed">Tempus quam pellentesque nec nam aliquam sem et tortor consequat? <i class="fa fa-minus-circle"></i></a>
                  <div id="faq5" class="collapse" data-parent="#faq-list">
                    <p>
                      Molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim suspendisse in est ante in. Nunc vel risus commodo viverra maecenas accumsan. Sit amet nisl suscipit adipiscing bibendum est. Purus gravida quis blandit turpis cursus in
                    </p>
                  </div>
                </li>
      
                <li>
                  <a data-toggle="collapse" href="#faq6" class="collapsed">Tortor vitae purus faucibus ornare. Varius vel pharetra vel turpis nunc eget lorem dolor? <i class="fa fa-minus-circle"></i></a>
                  <div id="faq6" class="collapse" data-parent="#faq-list">
                    <p>
                      Laoreet sit amet cursus sit amet dictum sit amet justo. Mauris vitae ultricies leo integer malesuada nunc vel. Tincidunt eget nullam non nisi est sit amet. Turpis nunc eget lorem dolor sed. Ut venenatis tellus in metus vulputate eu scelerisque. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus faucibus. Nibh tellus molestie nunc non blandit massa enim nec.
                    </p>
                  </div>
                </li>
      
              </ul>
          </div>
        </div>

      </div>

    </section>


  <!--==========================
    Footer
  ============================-->
  <%@ include file = "../include/footer.jsp" %>

  <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="/Webpage/lib/jquery/jquery.min.js"></script>
  <script src="/Webpage/lib/jquery/jquery-migrate.min.js"></script>
  <script src="/Webpage/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/Webpage/lib/easing/easing.min.js"></script>
  <script src="/Webpage/lib/superfish/hoverIntent.js"></script>
  <script src="/Webpage/lib/superfish/superfish.min.js"></script>
  <script src="/Webpage/lib/wow/wow.min.js"></script>
  <script src="/Webpage/lib/venobox/venobox.min.js"></script>
  <script src="/Webpage/lib/owlcarousel/owl.carousel.min.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="/Webpage/contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="/Webpage/js/main.js"></script>
</body>

</html>
