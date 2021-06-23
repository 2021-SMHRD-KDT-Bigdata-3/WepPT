<%@page import="model.CommentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.memberDTO"%>
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
CommunityDTO commudto = commudao.oneSelect(num);  //위에 인트로 받아온 num
memberDTO dto = (memberDTO)session.getAttribute("info");

ArrayList<CommentDTO> al2 = commudao.comment_select(num);

%>


	<div id = "community">
				<table id="list" border="1px" align="center">
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
			
			
			<!-- 댓글 출력 -->
			<div>
		<table border = "1px" align = "center">
			<tr>
				<td>아이디</td>
				<td>내용</td>
				<td>날짜</td>
			</tr>
			<%
			for(int i = 0; i<al2.size(); i++){
			%>
			<tr>
				<td><%= al2.get(i).getComment_id() %></td>
				<td><%= al2.get(i).getComment_content() %></td>
				<td><%= al2.get(i).getComment_date() %></td>
			</tr>
			<%} %>
		</table>
		
		
	</div>
			
			
			
			
			<!-- 댓글입력란 -->
			<div>
			<form action="Comment" method="post">
			<table border="1">
			<tr> <td> <input type="hidden" name="community_num" value="<%=num %>"> </td>
			<td> <input type="text" name="comment_content"> </td> </tr>
			</table>
			<input type="submit" value="등록">
			</form>
			
			
			</div>
			
			
			
			
			
</body>
</html>