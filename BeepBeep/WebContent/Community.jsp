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
</head>
<body>


<%
	memberDTO dto = (memberDTO)session.getAttribute("info");
	CommunityDAO commudao = new CommunityDAO();
	ArrayList<CommunityDTO> al = commudao.select();
	%>
	
	<div>
		<table>
			<tr>
				<td>��ȣ</td>
				<td>����</td>
				<td>���̵�</td>
				<td>��¥</td>
			</tr>
			<%
			for(int i = 1; i<al.size(); i++){
			%>
			<tr>
				<td><%= al.get(i).getNum() %></td>
				<td><a href="CommunityView.jsp?num=<%=al.get(i).getNum()%>"><%= al.get(i).getTitle()%></a>  </td>
				<td><%= al.get(i).getId() %></td>
				<td><%= al.get(i).getDay() %></td>
			</tr>
			<%} %>
		</table>
		
		<a href="CommunityWrite.jsp"><button id="writer">�ۼ��Ϸ�����</button></a>
		
	</div>
	
	
	
	
</body>
</html>