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
									<span class="symbol"><img src="images/hehe.png" alt="" /></span><span class="title">������Ű��</span>
								</a>

							<!-- Nav -->
								<nav style = 'right:0'>
									<ul>
										<!-- a�±� ��Ʈ ���� �����ϴ� ��� �����غ��� -->

										<% if (dto == null) {
											out.print("<button><a href = 'login'>�α���</a></button>");
											out.print("<span>��</span>");
											out.print("<button><a href = 'Join.jsp'>ȸ������</a></button>");
											out.print("<span>��</span>");
										} else if (dto.getId() != null) {
											out.print("<button><a href = 'logout'>�α׾ƿ�</a></button>");
											out.print("<span>��</span>");
											out.print("<button><a href = 'mypage.jsp'>����������</a></button>");
											out.print("<span>��</span>");
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
							<li><a href="main.jsp">����ȭ������</a></li>
							<li><a href="video.jsp">����</a></li>
							<li><a href="recommend.jsp">�Ĵ���õ</a></li>
							<li><a href="meal.jsp">�Ĵ�</a></li>
							<li><a href="calendar.jsp">Ķ����</a></li>
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
										<h2>����</h2>
										<div class="content">
											<p>������ �˰������� ����� ��� ��õ���ݴϴ�.</p>
										</div>
									</a>
								</article>
								<article class="style2">
									<span class="image">
										<img src="images/recommend.jpg" alt="" />
									</span>
									<a href="recommend.jsp">
										<h2>�Ĵ���õ</h2>
										<div class="content">
											<p>����� �ǰ��� �Ľ����� �����ص帳�ϴ�.</p>
										</div>
									</a>
								</article>
								<article class="style3">
									<span class="image">
										<img src="images/meal.jpg" alt="" />
									</span>
									<a href="meal.jsp">
										<h2>�Ĵ�</h2>
										<div class="content">
											<p>�Դ°� �ϳ��ϳ� ���а� Į�θ��� ����ص帳�ϴ�.</p>
										</div>
									</a>
								</article>
								<article class="style4">
									<span class="image">
										<img src="images/calendar.png" alt="" />
									</span>
									<a href="calendar.jsp">
										<h2>Ķ����</h2>
										<div class="content">
											<p>����� �Ĵ� ���� � ��ϵ��� ���ݴϴ�.</p>
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