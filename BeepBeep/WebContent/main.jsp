<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
		<title>Phantom by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<style>
		body{
		zoom: 80% !important;
		}
		
		</style>
</head>

<body>


<%
String id = (String)session.getAttribute("id");
%>


		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div class="inner">
							
							
							<!-- Logo -->
								<a href="main.jsp" class="logo">
									<span class="symbol"><img src="images/hehe.png" alt="" /></span><span class="title">돼지시키들</span>
								</a>

							<!-- Nav -->
								<nav style = 'right:0'>
									<ul>
										<!-- a태그 폰트 밑줄 삭제하는 방법 생각해보기 -->
										<% if ( id == null ) {
											out.print("<button><a href = 'Login.jsp'>로그인</a></button>");
											out.print("<span>ㅤ</span>");
										    out.print("<button><a href = 'Join.jsp'>회원가입</a></button>");
										}else {
											out.print("<button><a href = 'logout'>로그아웃</a></button>");
											out.print("<span>ㅤ</span>");
									   		out.print("<button><a href = 'mypage.jsp'>마이페이지</a></button>");
										}%>
										<span>ㅤ</span>
										<li><a href="#menu">Menu</a></li>
									</ul>
								</nav>

						</div>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<h2>Menu</h2>
						<ul>
							<li><a href="main.jsp">메인화면으로</a></li>
							<li><a href="video.jsp">영상</a></li>
							<li><a href="recommend.jsp">제품추천</a></li>
							<li><a href="meal.jsp">식단</a></li>
							<li><a href="calendar.jsp">캘린더</a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<header>
								<h1>TEST<br/>
								</h1>
								<p></p>
							</header>
							<section class="tiles">
								<article class="style1">
									<span class="image">
								<!-- 	185x158 사진크기 -->
										<img src="images/video.jpg" alt="" />
									</span>
									<a href="video.jsp">
										<h2>영상</h2>
										<div class="content">
											<p>최적의 알고리즘으로 당신의 운동을 추천해줍니다.</p>
										</div>
									</a>
								</article>
								<article class="style2">
									<span class="image">
										<img src="images/recommend.jpg" alt="" />
									</span>
									<a href="recommend.jsp">
										<h2>제품추천</h2>
										<div class="content">
											<p>당신의 건강한 식습관을 개선해드립니다.</p>
										</div>
									</a>
								</article>
								<article class="style3">
									<span class="image">
										<img src="images/meal.jpg" alt="" />
									</span>
									<a href="meal.jsp">
										<h2>식단</h2>
										<div class="content">
											<p>먹는것 하나하나 성분과 칼로리를 계산해드립니다.</p>
										</div>
									</a>
								</article>
								<article class="style4">
									<span class="image">
										<img src="images/calendar.png" alt="" />
									</span>
									<a href="calendar.jsp">
										<h2>캘린더</h2>
										<div class="content">
											<p>당신의 식단 일지 운동 기록등을 해줍니다.</p>
										</div>
									</a>
								</article>
							
							</section>
						</div>
					</div>

				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<section>
								<h2>???</h2>
								<form method="post" action="#">
									<div class="fields">
										<div class="field half">
											<input type="text" name="name" id="name" placeholder="Name" />
										</div>
										<div class="field half">
											<input type="email" name="email" id="email" placeholder="Email" />
										</div>
										<div class="field">
											<textarea name="message" id="message" placeholder="Message"></textarea>
										</div>
									</div>
									<ul class="actions">
										<li><input type="submit" value="Send" class="primary" /></li>
									</ul>
								</form>
							</section>
							<section>
								<h2>Follow</h2>
								<ul class="icons">
									<li><a href="#" class="icon brands style2 fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon brands style2 fa-facebook-f"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon brands style2 fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon brands style2 fa-dribbble"><span class="label">Dribbble</span></a></li>
									<li><a href="#" class="icon brands style2 fa-github"><span class="label">GitHub</span></a></li>
									<li><a href="#" class="icon brands style2 fa-500px"><span class="label">500px</span></a></li>
									<li><a href="#" class="icon solid style2 fa-phone"><span class="label">Phone</span></a></li>
									<li><a href="#" class="icon solid style2 fa-envelope"><span class="label">Email</span></a></li>
								</ul>
							</section>
							<ul class="copyright">
								<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

</body>
</html>