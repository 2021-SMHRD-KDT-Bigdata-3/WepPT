<%@page import="model.CommunityDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<div>
		<table>
			<tr>
				<td>��ȣ</td>
				<td>����</td>
				<td>���̵�</td>
				<td>��¥</td>
			</tr>
			<%
			CommunityDAO commudao = new CommunityDAO();
			%>
			<tr>
				<td><%=num %></td> <!-- communityDTO���� �޾ƿ��� -->
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
		
		<a href="CommunityWrite.jsp"><button id="writer">�ۼ��Ϸ�����</button></a>
		
	</div>
	
	
	
	
</body>
</html>