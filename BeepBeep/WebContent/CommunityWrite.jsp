<%@page import="model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<<<<<<< HEAD

	<div id = "Community"> 
=======
	
	<%
	memberDTO dto = (memberDTO)session.getAttribute("info");
	%>
	
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-3/BeepBeep.git
				<form action="Community" method="post" enctype="multipart/form-data">
	<div id = "Community">  
				<table id="list">
					<tr>
						<td>ì œëª©</td>
						<td><input type="text" name="title"> </td>
					</tr>
					<tr>
						<td>ì•„ì´ë””</td>
						<td><input  type="text" name="id"> </td>
					</tr>
					<tr>
						<td colspan="2">ë‚´ìš©</td>
					</tr>
					<tr>
<<<<<<< HEAD
						<td colspan="2">
							<input name="filename" type="file" style="float: right;">			
=======
<<<<<<< HEAD
						<td colspan="2"> <!-- º¯¼öÁßº¹?????¾îµğ¼­ º¯¼ö¶û Áßº¹ÀÌ¶ó´Â °Å¾ß¾îµğ¾îµğ¾îµğ¾îµğ -->
							<input name="fileName" type="file" style="float: right;">			
=======
						<td colspan="2">
							<input name="filename" type="file" style="float: right;">			
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-3/WepPT.git
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-3/BeepBeep.git
							<textarea name="content" rows="10" style="resize: none;"></textarea>	
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="reset" value="ì´ˆê¸°í™”">
							<input type="submit" value="ì €ì¥í•˜ê¸°">
						</td>
					</tr>
				</table>
			</div>
				</form>
</body>
</html>