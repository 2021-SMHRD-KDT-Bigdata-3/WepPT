<%@page import="model.memberDTO"%>
<%@page import="model.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String userId = request.getParameter("userId");
	
		memberDTO dto = (memberDTO)session.getAttribute("info");
		
		if(userId.equals(dto.getId())){
			out.print("True");
		} else {
			out.print("False");
		}
	%>
</body>
</html>