<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>

	body{
	}

	#a{    display: inline-block;
    vertical-align: top;
    text-align: center;
    width: 50%;
    max-width: 700px;
    height:800px;
    padding: 60px 70px;
    font-size: 20px;
    box-sizing: border-box;
    font-family:����;
	}	
	
	#b{    display: inline-block;
    vertical-align: top;
    text-align: center;
    width: 100%;
    max-width: 700px;
    height:800px;
    padding: 60px 70px;
    font-size: 20px;
    box-sizing: border-box;
    font-family:����;
    border:2px solid black;
	background-color:white;
	}	
	
	
	
	
	 .info{
		width:500px;
		height:80px;
		font-size:1em;
		border-width:0px 0px 1px 0px;
	}
	
	
	.join, .cancel{
		width:260px;
		height:50px;
		background-color:white;
	}
	
	.img {
		height:600px;
		
	}

</style>



</head>
<body align = 'center'>

<br>
<br>
<br>
<br>

	<div>
	
		<div id = 'a'>
		<img src = "images/exercise.jpg" width = '400px' height = '500px'>
		<br>
		<br>
		���񽺷ΰ� �� ���񽺸�
		</div>
		
		<div id = 'b'> 
		<h1>ȸ������</h1>
			<p>��</p>
		<!-- ����ڰ� �Է��� ���� JoinService �� ���� �� �ְ� ���� -->
		<form action="JoinServiceCon.do" method="post">
			<input class = 'info' type="text" name="id" placeholder=" ID�� �Է��ϼ���">
			<p></p>
			<input class = 'info'  type="password" name="pw" placeholder=" PW�� �Է��ϼ���">
			<p></p>
			<input class = 'info'  type="text" name="tel" placeholder=" ��ȭ��ȣ�� �Է��ϼ���">
			<p></p>
			<input class = 'info'  type="text" name="address" placeholder=" ���ּҸ� �Է��ϼ���">
			<p>��</p>
			<input  class = 'join'  type="submit" value="�����ϱ�" class="button fit">
			<input  class = 'cancel' type="submit" value="���" class="button fit">
		</form>
		</div>
		
	</div>
	<p>��</p>
	<p>��</p>
	<p>��</p>
	<p>��</p>
	
	<hr color = 'lightgray'>
	<p>�̿���  �������� ó����ħ  ���å  ������  ��������  �ѱ����</p>
	<p>Copyright Service Corp. All rights reserved</p>




</body>
</html>