<%@page import="java.util.Random"%>
<%@page import="model.memberDTO"%>
<%@page import="model.youtubeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.youtubeDAO"%>
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

.active:hover {
	background-color: #4CAF50;
}
</style>
</head>
<body>
	

<%
	memberDTO dto = (memberDTO)session.getAttribute("info");
	//System.out.print("ī�װ� :" +dto.getCategory());
	//System.out.println("���� :" + dto.getGender());
	
	youtubeDAO dao = new youtubeDAO();

	ArrayList<youtubeDTO> al =  dao.select(dto.getGender());
	
	//System.out.println("��Ʃ�� :" + al.get(1).getYoutuber() 
			//+ "���� : " +al.get(1).getGender());
%>

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
				<li><a href="recommend.jsp">�Ĵ���õ</a></li>
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
		<li class = "css"><a class="active" href="#news">��</a></li>
		<li class = "dss"><a class="active" href="#contact">��ü</a></li>
		<li class = "fss"><a class="active" href="#about">�̵�/���</a></li>
		<li class = "gss"><a class="active" href="#about">����</a></li>
		<li class = "hss"><a class="active"  href="#about">����</a></li>
	</ul>
	
			
			<% 		
			if (dto.getCategory().equals("0") || dto.getCategory().equals("3")){
			 for (int i = 0; i<5; i++){
				Random ran = new Random();
				out.print("<iframe width='809' height='455' src = ");
				out.print("'https://www.youtube.com/embed/");
				out.print(al.get(ran.nextInt(al.size())).getLink().split("=")[1]);
				out.print("'");
				//out.print(al.get(i).getLink());
				out.print("title='YouTube video player' ");
				out.print("frameborder='0' ");
				out.print("allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' ");
				out.print("allowfullscreen></iframe>");
			 }
			}
			%>
				
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