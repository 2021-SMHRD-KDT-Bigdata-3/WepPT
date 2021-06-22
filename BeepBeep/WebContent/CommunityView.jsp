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
<%-- <%
CommunityDTO communitydto = new CommunityDTO();


%>


	<div id = "board">
				<table id="list">
					<tr>
						<td>제목</td>
						<td><%= communitydto.getTitle() %></td>
					</tr>
					<tr>
						<td>아이디</td>
						<td><%= communitydto.getId() %></td>
					</tr>
					<tr>
						<td colspan="2">내용</td>
					</tr>
					<tr>
						<td colspan="2">
							<img src="img/<%=%>">
							<%= communitydto.getContent() %>
						</td>
					</tr>
					<tr>
						<td colspan="2"><a href="boardMain.jsp"><button>뒤로가기</button></a></td>
					</tr>
				</table>
			</div>
			
			
			 --%>
			
</body>
</html>