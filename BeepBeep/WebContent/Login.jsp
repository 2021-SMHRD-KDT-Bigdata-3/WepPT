<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
     <style>
    <!-- 화면비율고정 -->
		body{
		zoom: 67% !important;
		}

:root{


}
 *{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: SCDream1;
}

.page-container{
  
    width: 100vw;
    height: 100vh;
    background: #eff0f2;
    display: flex;
    justify-content: center;
    align-items: center;

}
.shadow{
    -webkit-box-shadow: 27px 43px 43px -26px rgba(89,89,89,0.39);
    -moz-box-shadow: 27px 43px 43px -26px rgba(89,89,89,0.39);
    box-shadow: 27px 43px 43px -26px rgba(89,89,89,0.39);
}
.login-form-container{
 
    background:#f5f5f5 ;
    width:100%;
    height: 100%;
    display: flex;
    flex-direction: row;
    box-shadow: 10px black;
    border-radius: 10px;

}
.login-form-right-side{
    width: 50%; 
    border-radius: 10px 0px 0px 10px;
    padding:75px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    color: white;
    background-image: 
  radial-gradient(ellipse farthest-corner at 0 140%, #5d9dff 0%, #2178ff 70%, #3585ff 70%);
}
.login-form-right-side h1{
    color: white;
    width:100%;
    text-align: right;
    opacity: 0.9;

}
.login-form-right-side p{
    padding-top: 50px;
    font-size:12px;
    text-align: right;
    opacity: 0.8;
}
.login-form-left-side{
    width: 50%;
    border-radius: 0px 10px 10px 0px;
    display: flex;

    flex-direction: column;
    align-items: center;
    padding:40px;
    background: rgb(255,255,255);
background: linear-gradient(287deg, rgba(255,255,255,1) 0%, rgba(243,244,244,1) 0%, rgba(255,255,255,1) 100%);
}
.login-form-left-side .login-top-wrap{
    display: flex;
    justify-content: flex-end;
    align-items: center;
    width:100%;
}
.login-form-left-side .login-top-wrap span{
    color: gray;
    font-size: 20px;
    padding-right:20px;

}
.login-form-left-side .login-top-wrap .create-account-btn {
    background: white;
    border:  0;
    width:100px;
    height: 38px;
    font-size: 18px;
    color: #2178ff;
    border-radius: 3px;

}
.login-input-container{
    padding-top:220px;
    width:300px;
    font-size: 60px;
}
.login-input-container .login-input-wrap{
    width:450px;
    height: 82px;
    margin-top: 40px;
    border-radius: 2px;
    border-bottom: solid 2px #2178ff;
    display: flex;
    
   
}
.far, .fas{
	line-height: unset;
}
.login-input-container .login-input-wrap i{
    color: #2178ff;
}

.login-input-container .login-input-wrap input{
    background: none;
    font-size:25px;
   
    border: none;
    line-height: 45px;
    padding-left:10px;
    width:267px;
}
.login-input-container .login-input-wrap input:focus{
    outline: none;
}
.login-btn-wrap{
    margin-top: 40px;
    display: flex;
    flex-direction: column;
    align-items: center;;
}
.login-btn-wrap .login-btn{
    width:455px;
    height:55px;
    color:white;
    border: 0;
    font-size:21px;
    border-radius: 4px;
    font-size:28px;
    margin-left:150px;

    background: rgb(105,163,255);
background: linear-gradient(162deg, rgba(105,163,255,1) 0%, rgba(43,125,254,1) 50%, rgba(43,125,254,1) 100%);
}
.login-btn-wrap a{
    margin-top:10px;
    text-decoration: none;
    font-size: 18px;
    color: gray;
    margin-left: 160px;
    margin-top: 12px;

}
.pt{
	font-size: 48px;
	font-family: 'SCDream1';
}
.ptt{
	font-size: 18px;
}
    </style>
</head>
<body>
   <form action = "login" method = "post">
    <div class="page-container">
        <div class="login-form-container shadow">
            <div class="login-form-right-side">
                <div class="top-logo-wrap">
                    
                </div>
                <h2 class = "pt">아직도 돈을 주고 pt를 하고 있으신가요?</h2>
                <h2 class = "pt">집에서 홈트레이닝을 하고 있으신가요?</h2>
                <p>                   </p>
                <h2 class = "ptt">무료로 당신의 건강과 식습관을 챙겨드립니다.</h2>
            </div>
            <div class="login-form-left-side">
                <div class="login-top-wrap">
                    <span>아이디가 없으신가요?</span>
                    <a style = 'font-size:20px' href ='Join.jsp'>회원가입</a>
                </div>
                <p>ㅤ</p>
                <p>ㅤ</p>
                <p>ㅤ</p>
                <p>ㅤ</p>
                <p>ㅤ</p>
                <p>ㅤ</p>
                <p>ㅤ</p>
                <p>ㅤ</p>
                <p>ㅤ</p>
                <p>ㅤ</p>
                <p>ㅤ</p>
                <div class="login-input-container">
                    <div class="login-input-wrap input-id">
                        <i class="far fa-envelope"></i>
                        <input name = "id" placeholder="아이디" type="text">
                    </div>
                    <div class="login-input-wrap input-password">
                        <i class="fas fa-key"></i>
                        <input name = "pw"  placeholder="비밀번호"  type="password">
                    </div>
                </div>
                <div class="login-btn-wrap">
                    <button type = "submit" class="login-btn">로  그  인</button>
                    <a href="#" >회원가입은 하셨나요?</a>
                </div>
            </div>
        </div>
    </div>
              </form>
</body>
</html>