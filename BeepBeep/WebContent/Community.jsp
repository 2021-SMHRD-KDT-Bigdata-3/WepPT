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
</head>
<body>


<%
	memberDTO dto = (memberDTO)session.getAttribute("info");
	CommunityDAO commudao = new CommunityDAO();
	ArrayList<CommunityDTO> al = commudao.select();
	%>
	
	<div>
		<table border = "1px" align = "center">
			<tr>
				<td>��ȣ</td>
				<td>����</td>
				<td>���̵�</td>
				<td>��¥</td>
			</tr>
			<%
			for(int i = 0; i<al.size(); i++){
			%>
			<tr>
				<td><%= i+1 %></td>
				<td><a href="CommunityView.jsp?num=<%=al.get(i).getNum()%>"><%= al.get(i).getTitle()%></a>  </td>
				<td><%= al.get(i).getId() %></td>
				<td><%= al.get(i).getDay() %></td>
			</tr>
			<%} %>
		<a href="main.jsp"><button id="writer">Ȩ����</button></a>
		<a href="CommunityWrite.jsp"><button id="writer">�۾���</button></a>
		</table>
		
		
	</div>
	
	
	
	
</body>
</html>