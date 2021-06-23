<%@page import="java.util.ArrayList"%>
<%@page import="model.CommunityDTO"%>
<%@page import="model.CommunityDAO"%>
<%@page import="model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/main.css" />
      <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
      <meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
 	<style>
	
		
	@font-face {
    font-family: 'twayair';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_tway@1.0/twayair.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

h2 {
	font-family:'twayair';
	font-size:200px;
}
		
		
		
		body{
		zoom: 100% !important;
		align:'center';
		}
		span.title{
   font-size : 50px;
}
		</style>     
      
      
      
      
      
      
      
      
</head>






<body>


<%
	memberDTO dto = (memberDTO)session.getAttribute("info");
	CommunityDAO commudao = new CommunityDAO();
	ArrayList<CommunityDTO> al = commudao.select();
	%>
	
	<!-- Header -->
					<header id="header">
						<div style="margin-left: 300px;"
						class="inner" >
							
							
							<!-- Logo -->
								<a href="main.jsp" class="logo" ">
									<span class="symbol"><img style = 'margin-left:300px;'src="images/hehe.png" alt="" />
									</span><span class="title" style = 'font-size:80px'>WEB & PT</span>
								</a>

<nav style = 'right:0'>
									<ul>
										<li><a href="#menu">Menu</a></li>
									</ul>
								</nav>

						</div>
					</header>
					
					
		<!-- Menu -->
					<nav id="menu">
						<h2 style = 'font-size:50px'>Menu</h2>
						
						<ul>
							<li><a href="main.jsp">메인화면으로</a></li>
							<li><a href="video.jsp">영상</a></li>
							<li><a href="recommend.jsp">식단추천</a></li>
							<li><a href="meal.jsp">식단</a></li>
							<li><a href="caltest.html">캘린더</a></li>
						</ul>
					</nav>				
	
	
	
	<div>
	
			<a style = "margin-left:850px; align:center; " href="CommunityWrite.jsp"><button style = "width:200px; height:80px;" id="writer">글쓰기</button></a>
		<table border = "1px" align = "center">
			
			<tr align = "center">
				<td>번호</td>
				<td>제목</td>
				<td>아이디</td>
				<td>날짜</td>
			</tr>
			<%
			for(int i = 0; i<al.size(); i++){
			%>
			<tr align = "center">
				<td><%= i+1 %></td>
				<td><a href="CommunityView.jsp?num=<%=al.get(i).getNum()%>"><%= al.get(i).getTitle()%></a>  </td>
				<td><%= al.get(i).getId() %></td>
				<td><%= al.get(i).getDay() %></td>
			</tr>
			<%} %>
		
			<p>ㅤ</p>
		</table>
		
		
	</div>
	
	
	
	
</body>
</html>