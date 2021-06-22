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
int get_num = Integer.parseInt(request.getParameter("num"));

CommunityDAO commudao = new CommunityDAO();
CommunityDTO commudto = commudao.oneSelect(get_num);

%>


	<div id = "community">
				<table id="list">
					<tr>
						<td>제목</td>
						<td><%= commudto.getTitle() %></td>
					</tr>
					<tr>
						<td>아이디</td>
						<td><%= commudto.getId() %></td>
					</tr>
					<tr>
						<td colspan="2">내용</td>
					</tr>
					<tr>
						<td colspan="2">
							<img src="img/<%= commudto.getFilename() %>">
							<%= commudto.getContent() %>
						</td>
					</tr>
					<tr>
						<td colspan="2"><a href="Community.jsp"><button>뒤로가기</button></a></td>
					</tr>
				</table>
			</div>
			
			
			
			
</body>
</html>