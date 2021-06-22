<%@page import="model.CommunityDAO"%>
<%@page import="model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<%
	memberDTO dto = (memberDTO)session.getAttribute("info");
	%>
	
	<div>
		<table>
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>아이디</td>
				<td>날짜</td>
			</tr>
			<%
			CommunityDAO commudao = new CommunityDAO();
			%>
			<tr>
				<td><%= %></td> <!-- communityDTO에서 받아오기 -->
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
		
		<a href="CommunityWrite.jsp"><button id="writer">작성하러가기</button></a>
		
	</div>
	
	
	
	
</body>
</html>