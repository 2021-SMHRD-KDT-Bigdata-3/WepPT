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
    height:500px;
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
	
	#login {
		background-color: white;
	}

</style>


</head>
<body align = 'center'>
<br>
<br>
<br>

<br>
	<div>
		<h1>로그인</h1>
		<p></p>
		<p></p>
		<form action="" method="post">
			<input name="id" type="text" placeholder="ㅤID을 입력하세요">
			<p></p>
			<input name="pw" type="password" placeholder="ㅤPW를 입력하세요"><br>
			<p></p>
			<input id="login" type="submit" value="LogIn">
		</form>

	</div>


</body>
</html>