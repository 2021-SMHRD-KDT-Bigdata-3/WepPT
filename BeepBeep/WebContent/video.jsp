<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Generic - Phantom by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<style>
.ass {
	list-style-type: none;
	margin: 0;
	padding: 0;
	background-color: #333;
}

.ass:after {
	content: '';
	display: block;
	clear: both;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover:not(.active) {
	background-color: #111;
}

.active {
	background-color: #4CAF50;
}
</style>
</head>
<body>
	

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<div class="inner">

				<!-- Logo -->
				<a href="main.jsp" class="logo"> <span class="symbol"><img
						src="images/hehe.png" alt="" /></span><span class="title">������õĭ</span>
				</a>

				<!-- Nav -->
				<nav>
					<ul>
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
							<li><a href="recommend.jsp">��ǰ��õ</a></li>
							<li><a href="meal.jsp">�Ĵ�</a></li>
							<li><a href="calendar.jsp">Ķ����</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">
			<div class="inner">
				<h1>������õ ������</h1>
				<ul class = "ass">
		<li class = "bss"><a class="active" href="#home">���</a></li>
		<li class = "css"><a href="#news">��</a></li>
		<li class = "dss"><a href="#contact">��ü</a></li>
		<li class = "fss"><a href="#about">�̵�/���</a></li>
		<li class = "gss"><a href="#about">����</a></li>
		<li class = "hss"><a href="#about">����</a></li>
	</ul>
				<iframe width="1344" height="600" src="https://www.youtube.com/embed/jBwTgquo7NA" 
				title="YouTube video player" frameborder="0" 
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
				<iframe width="1344" height="600" src="https://www.youtube.com/embed/gw0XqojnAcI" 
				title="YouTube video player" frameborder="0" 
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
				allowfullscreen></iframe>
				
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