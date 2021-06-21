<%@page import="model.memberDTO"%>
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
		span.title{
   font-size : 50px;
}
		</style>
</head>

<body>


<%
		memberDTO dto = (memberDTO)session.getAttribute("info");
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

										<% if (dto == null) {
											out.print("<button><a href = 'login'>로그인</a></button>");
											out.print("<span>ㅤ</span>");
											out.print("<button><a href = 'Join.jsp'>회원가입</a></button>");
											out.print("<span>ㅤ</span>");
										} else if (dto.getId() != null) {
											out.print("<button><a href = 'logout'>로그아웃</a></button>");
											out.print("<span>ㅤ</span>");
											out.print("<button><a href = 'mypage.jsp'>마이페이지</a></button>");
											out.print("<span>ㅤ</span>");
										}
										%>
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
							<li><a href="recommend.jsp">식단추천</a></li>
							<li><a href="meal.jsp">식단</a></li>
							<li><a href="calendar.jsp">캘린더</a></li>
						</ul>
					</nav>

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<section class="tiles">
								<article class="style1">
									<span class="image">
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
										<h2>식단추천</h2>
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

				
						</div>


		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

</body>
</html>