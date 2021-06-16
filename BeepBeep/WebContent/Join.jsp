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
    font-family:굴림;
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
		<h1>회원가입 페이지</h1>
			<p>ㅤ</p>
		<!-- 사용자가 입력한 값을 JoinService 로 보낼 수 있게 수정 -->
		<form action="JoinServiceCon.do" method="post">
			<input type="text" name="id" placeholder=" ID을 입력하세요">
			<p></p>
			<input type="password" name="pw" placeholder=" PW를 입력하세요">
			<p></p>
			<input type="text" name="tel" placeholder=" 전화번호를 입력하세요">
			<p></p>
			<input type="text" name="address" placeholder=" 집주소를 입력하세요">
			<p>ㅤ</p>
			<input type="submit" value="JoinUs" class="button fit">
		</form>


	</div>







</body>
</html>