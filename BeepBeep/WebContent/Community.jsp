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
							<li><a href="main.jsp">����ȭ������</a></li>
							<li><a href="video.jsp">����</a></li>
							<li><a href="recommend.jsp">�Ĵ���õ</a></li>
							<li><a href="meal.jsp">�Ĵ�</a></li>
							<li><a href="caltest.html">Ķ����</a></li>
						</ul>
					</nav>				
	
	
	
	<div>
	
			<a style = "margin-left:850px; align:center; " href="CommunityWrite.jsp"><button style = "width:200px; height:80px;" id="writer">�۾���</button></a>
		<table border = "1px" align = "center">
			
			<tr align = "center">
				<td>��ȣ</td>
				<td>����</td>
				<td>���̵�</td>
				<td>��¥</td>
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
		
			<p>��</p>
		</table>
		
		
	</div>
	
	
	
	
</body>
</html>