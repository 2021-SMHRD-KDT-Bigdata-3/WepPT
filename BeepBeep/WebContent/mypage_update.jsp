<%@page import="model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
		<title>Generic - Phantom by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
<style>
		* {
  margin:0px;
  padding:0px;
}

.back_profile{
  width:100%;
  position:relative;
}

.back_img{
  width:100%;
  height:100%;
  display: inline-block;
  background-color: #ccc;
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
}

.profile_page{
  max-width: 900px;
  width: 100%;
  height:auto;
  margin:20px auto;
}

.profile_bar{
  display:flex;
  width:90%;
  max-height:200px;
  margin-left:5%;
}

.profile_img{
  position: relative;
  width: 50%;
}

.profile_img:before {
  content:"";
  display: block;
  padding-top: 100%;
}

.p_img {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  display: inline-block;
  background-color: #ccc;
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  border-radius:50%;
}

.profiles{
  width:100%;
}

.profile_detail{
  max-height:100px;
  height:100%;
  margin:auto 0;
}

.profiles{
  display:flex;
}

.profiles p{
  margin:10px;
}

.user_data{
  width:90%;
  height:auto;
  margin:0 5%;
  border:2px solid #ccc;
}

.user_basic_header{
  background-color:#eee;
  width:100%;
  height:5vh;
  border-bottom:1px solid #ccc;
}

.user_basic_header h2{
  margin-left:3%;
  padding:1vh 0;
}

.user_basic{
  background-color:#eee;
  width:100%;
  height:auto;
  display:flex;
}

.user_category{
  background-color:#fff;
  width:30%;
  height:auto;
  min-height:50vh;
  border-right:1px solid #ccc;
}

.user_category ul{
  margin-top:5%;
}

.user_category li{
  list-style:none;
  padding:5%;
}

.user_detail{
  background-color:#fff;
  width:70%;
  height:auto;
  min-height:50vh;
  font-size:0.8em;
}

.user_detail_head{
  width:90%;
  height:3vh;
  margin:5%;
  border-bottom:1px solid #ccc;
}

.edit_detail{
  float:right;
}

.fav_page{
  width:100%;
  height:100vh;
}

.plan_page{
  width:100%;
  height:100vh;
}

.active_category{
  border-left:3px solid orange;
  font-weight:bold;
}

.icon_bar{
  position:fixed;
  width:100%;
  height:7%;
  bottom:0;
  left:0;
  background-color:#eee;
  border-top:1px solid #eee;
}

.f_icon{
  margin-left:16%;
  font-size:1.5em;
}

.active_icon{
  color:orange;
}

.temporary_footer{
  width:100%;
  height:200px;
}

@media screen and (min-width:768px){
  
  .profile_detail{
  margin:5% 30px;
}
  .profile_bar{
  margin-bottom:20px;
}
  
  .profile_img{
  position: relative;
  width: 30%;
}
}

@media screen and (min-width:960px){
  .profile_detail{
  margin:auto 30px;
}
.edit_profile:hover{
  color:orange;
}
  
  .user_category li:hover{
  cursor:pointer;
  opacity:0.7;
}
  
  .edit_detail:hover{
  cursor:pointer;
  color:orange;
}

  .icon_bar{
    display:none;
  }
}
.
		</style>
		
		<script>
			  window.addEventListener("DOMContentLoaded", function(){
			  document.getElementById("h_detail2").style.display="none";
			  document.getElementById("h_detail3").style.display="none";
			  document.getElementById("h_detail4").style.display="none";
			 document.getElementById("m_tab").classList.add("active_icon"); document.getElementById("h_category1").classList.add("active_category");
			}, false);
			  

			function change_category(sideLine,category){
			  document.getElementById("h_detail1").style.display="none";
			  document.getElementById("h_detail2").style.display="none";
			  document.getElementById("h_detail3").style.display="none";
			  document.getElementById("h_detail4").style.display="none";
			  document.getElementById(category).style.display="";
			  document.getElementById("h_category1").classList.remove("active_category");
			  document.getElementById("h_category2").classList.remove("active_category");
			  document.getElementById("h_category3").classList.remove("active_category");
			  document.getElementById("h_category4").classList.remove("active_category");
			  document.getElementById(sideLine).classList.add('active_category');
			}
		</script>
		
</head>
<body>


<%

memberDTO dto = (memberDTO)session.getAttribute("info");


%>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header" style = "padding-top: 0px;">
						<div class="inner" style = "margin-left: 0px; padding-left: 0px;">

							<!-- Logo -->
								<a href="index.html" class="logo">
									<span class="symbol"><img src="images/mainimage.png" alt="" /></span>
									<span class="title">MyPage</span>
								</a>

							<!-- Nav ���� ���ٷ� �� �޴��� -->
								<nav>
									<ul>
										<li><a href="#menu">Menu</a></li>
									</ul>
								</nav>

						</div>
					</header>

				<!-- Menu -->
					<nav id="menu">
						<h2>Menu</h2>
						<ul>
							<li><a href="main.jsp">����ȭ������</a></li>
							<li><a href="video.jsp">����</a></li>
							<li><a href="recommend.jsp">�Ĵ���õ</a></li>
							<li><a href="meal.jsp">�Ĵ�</a></li>
							<li><a href="caltest.html">Ķ����</a></li>
						</ul>
					</nav>
	<!-- ȸ������ĭ -->
	<link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
<form action = "update" method="post">
<div class="back_profile" style="background-color: ghostwhite;">
  <div class="back_img" style="background-image: url('http://file.trip-term.com:81/bamboo.jpg')"></div>
  
<div class="profile_page">
  <div class="profile_bar">
    <div class="profile_img">
      <span class="p_img" style="background-image: url('http://file.trip-term.com:81/sample.jpg">
      </span>
    </div>
    <div class="profiles">
      <div class="profile_detail">
        <h2><%=dto.getWeight() %></h2>
        <div class="profiles">
        <p><%= dto.getTarget() %></p>
        <p>��ǥ���� : <%= Integer.parseInt(dto.getTarget()) - dto.getWeight() %></p>
          <p><%
          if(dto.getCategory().equals("0")){
      		out.print("��ũ��");
      	} else if(dto.getCategory().equals("3")){
      		out.print("���̾�Ʈ");
      	}
          %></p>
        </div>
      </div>
    </div>
  </div>
  <div class="user_data">
    <div class="user_basic_header">
    </div>
    <div class="user_basic">
      <div class="user_category">
        <ul>
          <li id="h_category1" onclick="change_category('h_category1','h_detail1')">��������</li>
          <li id="h_category2" onclick="change_category('h_category2','h_detail2')">ȸ������</li>
          <li id="h_category3" onclick="change_category('h_category3','h_detail3')">���ǻ���</li>
          <li id="h_category4" onclick="change_category('h_category4','h_detail4')">�˸�����</li>
        </ul>
      </div>
      <div class="user_detail">
        <div id="h_detail1">
          <div class="user_detail_head">ID
            <span class="edit_detail"><%= dto.getId() %></span>
          </div>
          <div class="user_detail_head">PW
            <span class="edit_detail">
            	<input type="text" name = 'pw'>
            </span>
          </div>
        </div>  
        <div id="h_detail2">
          <div class="user_detail_head">������
            <span class="edit_detail">
            	<input type="text" name = "weight">
            </span>
          </div>
          <div class="user_detail_head">Ű
            <span class="edit_detail">
            	<input type="text" name = "height">
            </span>
          </div>
        </div>
         <div id="h_detail3">
          <div class="user_detail_head">���� ���� <!-- //-> �׷� �̸� �������� -->
            <span class="edit_detail"><%
            	if(dto.getCategory().equals("0")){
            		out.print("��ũ���� �ʿ��ؿ�!");
            	} else if(dto.getCategory().equals("3")){
            		out.print("���̾�Ʈ�� �ʿ��ؿ�!");
            	}
            %></span>
          </div>
          <div class="user_detail_head"><!-- if�� ������ �׷�2�� ���̾���, ��ũ�� -> ���̾�Ʈ = ��ü��, ��ũ�� = ��ü�� �ܾ �߰�-->  
            <span class="edit_detail"><%
            		if(dto.getCategory().equals("0")){
                		out.print("��ü��");
                	} else if(dto.getCategory().equals("3")){
                		out.print("������");
                	}
            %></span>
          </div>
          <div class="user_detail_head">��ǥ������ <!-- ������ �̷�� ���� ������..�޾ƿ;����� �ʳ� ȸ�����Կ��� �޾ƿ���-->
            <span class="edit_detail">
            	<input type="text" name = "target">
            </span>
          </div>
          <div class="user_detail_head">����BMI���� <!-- �����Կ� Ű�� �޾ƿͼ� �����ֱ� -->
            <span class="edit_detail"><%= dto.getWeight()/(dto.getHeight()/100)*(dto.getHeight()/100) %></span>
          </div>
        </div>
        <div id="h_detail4">
          <div class="user_detail_head">�˶�����(�׳� �����)
            <span class="edit_detail">DB ���� �ҷ��� ��</span>
          </div>
          <div class="user_detail_head">Ǫ���˶�
            <span class="edit_detail">DB ���� �ҷ��� ��</span>
          </div>
          <div class="user_detail_head">�Ļ�ð��˶�
            <span class="edit_detail">DB ���� �ҷ��� ��</span>
          </div>
          <div class="user_detail_head">ü�������˶�
            <span class="edit_detail">DB ���� �ҷ��� ��</span>
          </div>
          <div class="user_detail_head">��ǰ��õ�˶�
            <span class="edit_detail">DB ���� �ҷ��� ��</span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <input type="submit" value="���� ����">
  </form>
</div>
  <div class="temporary_footer"></div>
</div>

<div class="icon_bar">
  <span><i id="h_footer" onclick="change_menu('h_footer','main_body1');" class="fas fa-home f_icon"></i></span>
  <span><i id="s_footer" onclick="change_menu('s_footer','main_body2');" class="fas fa-map-marked-alt f_icon"></i></span>
  <span><i class="fas fa-heart f_icon"></i></span>
  <span><i id="m_tab" class="fas fa-user f_icon"></i></span>
</div>
			
			
			
				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<section>
								<h2>���������� �����ּ���</h2>
								<form method="post" action="#">
									<div class="fields">
										<div class="field half">
											<input type="text" name="name" id="name" placeholder="ȸ�� ID" />
										</div>
										<div class="field half">
											<input type="email" name="email" id="email" placeholder="����" />
										</div>
										<div class="field">
											<textarea name="message" id="message" placeholder="����"></textarea>
										</div>
									</div>
									<ul class="actions">
										<li><input type="submit" value="����" class="primary" /></li>
									</ul>
								</form>
							</section>
							<section>
								<h2>pt �Ҽ�</h2>
								<ul class="icons">
									<li><a href="#" class="icon brands style2 fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon brands style2 fa-facebook-f"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon brands style2 fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon brands style2 fa-dribbble"><span class="label">Dribbble</span></a></li>
									<li><a href="#" class="icon brands style2 fa-github"><span class="label">GitHub</span></a></li>
									<li><a href="#" class="icon brands style2 fa-500px"><span class="label">500px</span></a></li>
									<li><a href="#" class="icon solid style2 fa-phone"><span class="label">Phone</span></a></li>
									<li><a href="#" class="icon solid style2 fa-envelope"><span class="label">Email</span></a></li>
								</ul>
							</section>
							<ul class="copyright">
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>


</body>
</html>