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
						<td>����</td>
						<td><input type="text" name="title"> </td>
					</tr>
					<tr>
						<td>���̵�</td>
						<td><input  type="text" name="id"> </td>
					</tr>
					<tr>
						<td colspan="2">����</td>
					</tr>
					<tr>
						<td colspan="2"> <!-- �����ߺ�?????��� ������ �ߺ��̶�� �ž߾�������� -->
							<input name="fileName" type="file" style="float: right;">			
							<textarea name="content" rows="10" style="resize: none;"></textarea>	
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="reset" value="�ʱ�ȭ">
							<input type="submit" value="�����ϱ�">
						</td>
					</tr>
				</table>
				</form>
			</div>
</body>
</html>