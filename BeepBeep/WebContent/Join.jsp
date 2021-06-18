<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>

	.register{
    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
    margin-top: 3%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    float: right;
    margin-top: 11%;
    border: none;
    border-radius: 1.5rem;
    padding: 1%;
    background: #0062cc;
    color: #fff;
    font-weight: 556;
    width: 40%;
    cursor: pointer;
    font-size: 22px;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #0062cc;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -13%;
    color: #495057;
    font-size: 35px;
}
.container{
	max-width: 100%;
	height: 1077px;
	margin: 0px;
}
.row{
	margin-top: 135px;
}
.form-control{
	height: 55px;
}
</style>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>

<body>
<div class="container register" style="max-width: 100%;">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>헬창의길로</h3>
                        <p>운동은 먹기 위해서 하는것이다</p>
                        <input type="submit" name="" value="Login"/><br/>
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                            </li>
                            <li class="nav-item">
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">당신의 정보를 입력해주세요</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                        
                                        <form action="join" method="post">
                                        
                                            <input type="text" class="form-control" placeholder="ID" name="id" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="password" name="pw" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="이름" name="name" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control"  placeholder="나이" name="age" />
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl" style = "font-size: 20px;">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male" checked>
                                                    <span> 남자 </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span>여자 </span> 
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Email" name="email" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="11" maxlength="11" name="tel" class="form-control" placeholder="휴대폰 번호 - 미포함" />
                                        </div>
                                         <div class="form-group">
                                            <input type="text" class="form-control" placeholder="키" name="height" />
                                        </div>
                                         <div class="form-group">
                                            <input type="text" class="form-control" placeholder="몸무게" name="weight" />
                                        </div>
                                       
                                        
                                        <input type="submit" class="btnRegister"  value="확인"/>
                                   
                                    </form>
                                    
                                    </div>
                                </div>
                            </div>
                           

            </div>
            </div>
            </div>
            </div>



</body>
</html>