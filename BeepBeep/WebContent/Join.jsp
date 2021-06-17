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
    font-family:굴림;
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
    font-family:굴림;
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
		서비스로고 및 서비스명
		</div>
		
		<div id = 'b'> 
		<h1>회원가입</h1>
			<p>ㅤ</p>
		<!-- 사용자가 입력한 값을 JoinService 로 보낼 수 있게 수정 -->
		<form action="JoinServiceCon.do" method="post">
			<input class = 'info' type="text" name="id" placeholder=" ID을 입력하세요">
			<p></p>
			<input class = 'info'  type="password" name="pw" placeholder=" PW를 입력하세요">
			<p></p>
			<input class = 'info'  type="text" name="tel" placeholder=" 전화번호를 입력하세요">
			<p></p>
			<input class = 'info'  type="text" name="address" placeholder=" 집주소를 입력하세요">
			<p>ㅤ</p>
			<input  class = 'join'  type="submit" value="가입하기" class="button fit">
			<input  class = 'cancel' type="submit" value="취소" class="button fit">
		</form>
		</div>
		
	</div>
	<p>ㅤ</p>
	<p>ㅤ</p>
	<p>ㅤ</p>
	<p>ㅤ</p>
	
	<hr color = 'lightgray'>
	<p>이용약관  개인정보 처리방침  운영정책  고객센터  공지사항  한국어△</p>
	<p>Copyright Service Corp. All rights reserved</p>




</body>
</html>