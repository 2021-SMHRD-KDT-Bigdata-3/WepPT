<%@page import="model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
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
	%>
	
		<form action="Community" method="post" enctype="multipart/form-data">
			<div id = "Community">  
				<table id="list" align = "center">
					<tr>
						<td>제목</td>
						<td><input type="text" name="title"> </td>
					</tr>
					<tr>
						<td>아이디</td>
						<td><%= dto.getId() %></td>
					</tr>
					<tr>
						<td colspan="2">내용</td>
					</tr>
					<tr>
						<td colspan="2">
							<input name="fileName" type="file" style="float: right;">			
							<textarea name="content" rows="10" style="resize: none;"></textarea>	
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="reset" value="초기화">
							<input type="submit" value="저장하기">
						</td>
					</tr>
				</table>
			</div>
		</form>
</body>
</html>