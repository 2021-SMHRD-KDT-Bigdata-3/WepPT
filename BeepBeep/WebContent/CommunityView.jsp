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
CommunityDTO commudto = commudao.oneSelect(num);  //���� ��Ʈ�� �޾ƿ� num
memberDTO dto = (memberDTO)session.getAttribute("info");

ArrayList<CommentDTO> al2 = commudao.comment_select(num);

%>


	<div id = "community">
				<table id="list" border="1px" align="center">
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
			
			
			<!-- ��� ��� -->
			<div>
		<table border = "1px" align = "center">
			<tr>
				<td>���̵�</td>
				<td>����</td>
				<td>��¥</td>
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
			
			
			
			
			<!-- ����Է¶� -->
			<div>
			<form action="Comment" method="post">
			<table border="1">
			<tr> <td> <input type="hidden" name="community_num" value="<%=num %>"> </td>
			<td> <input type="text" name="comment_content"> </td> </tr>
			</table>
			<input type="submit" value="���">
			</form>
			
			
			</div>
			
			
			
			
			
</body>
</html>