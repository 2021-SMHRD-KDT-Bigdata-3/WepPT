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
	commudao.select();
	
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
			
			
			%>
			<tr>
				<td></td> <!-- communityDTO���� �޾ƿ��� -->
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
		
		<a href="CommunityWrite.jsp"><button id="writer">�ۼ��Ϸ�����</button></a>
		
	</div>
	
	
	
	
</body>
</html>