<%@page import="model.CommunityDAO"%>
<%@page import="model.CommunityDTO"%>
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
int num = Integer.parseInt(request.getParameter("num"));

CommunityDAO commudao = new CommunityDAO();
CommunityDTO commudto = commudao.oneSelect(num);  //���� ��Ʈ�� �޾ƿ� num

%>


	<div id = "community">
				<table id="list" border="1px">
					<tr>
						<td>����</td>
						<td><%= commudto.getTitle() %></td>
					</tr>
					<tr>
						<td>���̵�</td>
						<td><%= commudto.getId() %></td>
					</tr>
					<tr>
						<td colspan="2">����</td>
					</tr>
					<tr>
						<td colspan="2">
							<img src="img/<%= commudto.getFilename() %>">
							<%= commudto.getContent() %>
						</td>
					</tr>
					<tr>
						<td colspan="2"><a href="Community.jsp"><button>�ڷΰ���</button></a></td>
					</tr>
				</table>
			</div>
			
			
			
			
</body>
</html>