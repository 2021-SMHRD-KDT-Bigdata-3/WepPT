<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div id = "Community">  
				<form action="Community" method="post" enctype="multipart/form-data">
				<table id="list">submit

					<tr>
						<td>제목</td>
						<td><input type="text" name="title"> </td>
					</tr>
					<tr>
						<td>아이디</td>
						<td><input  type="text" name="id"> </td>
					</tr>
					<tr>
						<td colspan="2">내용</td>
					</tr>
					<tr>
						<td colspan="2"> <!-- 변수중복?????어디서 변수랑 중복이라는 거야어디어디어디어디 -->
							<input name="fileName" type="file" style="float: right;">			
							<textarea name="content" rows="10" style="resize: none;"></textarea>	
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="reset" value="초기화">
							<input type="submit" value="저장하기">
						</td>
					</tr>
				</table>
				</form>
			</div>
</body>
</html>