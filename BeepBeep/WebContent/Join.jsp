<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>

	div{    display: inline-block;
    vertical-align: top;
    text-align: center;
    width: 100%;
    max-width: 700px;
    height:800px;
    padding: 60px 70px;
    font-size: 20px;
    box-sizing: border-box;
    border: 1px solid gray;
    font-family:����;
    border:5px solid black;
	border-radius:50px;
	}	
	
	input {
		width:500px;
		height:80px;
		font-size:1em;
		border:1px solid;
		border-radius:20px;
	}
	

</style>



</head>
<body align = 'center'>

<br>
<br>
<br>
<br>

	<div>
		<h1>ȸ������ ������</h1>
			<p>��</p>
		<!-- ����ڰ� �Է��� ���� JoinService �� ���� �� �ְ� ���� -->
		<form action="JoinServiceCon.do" method="post">
			<input type="text" name="id" placeholder=" ID�� �Է��ϼ���">
			<p></p>
			<input type="password" name="pw" placeholder=" PW�� �Է��ϼ���">
			<p></p>
			<input type="text" name="tel" placeholder=" ��ȭ��ȣ�� �Է��ϼ���">
			<p></p>
			<input type="text" name="address" placeholder=" ���ּҸ� �Է��ϼ���">
			<p>��</p>
			<input type="submit" value="JoinUs" class="button fit">
		</form>


	</div>







</body>
</html>