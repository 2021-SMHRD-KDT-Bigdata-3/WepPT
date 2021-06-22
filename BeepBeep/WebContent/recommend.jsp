<%@page import="model.foodDTO"%>
<%@page import="model.foodDAO"%>
<%@page import="controller.youtube"%>
<%@page import="java.util.Random"%>
<%@page import="model.memberDTO"%>
<%@page import="model.youtubeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.youtubeDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Generic - Phantom by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>


<title>타이틀-싸이</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
<style>

@font-face {
    font-family: 'twayair';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_tway@1.0/twayair.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

body {
	font-family:'twayair';
	font-size:30px;
}

input {
	font-family:'ROKABold';
	font-size:30px;
	color : white;
}



img{
width : 200px;
height:200px;}

.ass {
	list-style-type: none;
	margin: 0;
	padding: 0;
	background-color: white;

.ass:after {
	content: '';
	display: block;
	clear: both;
}

li {
	float: left;
}

li a {
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover:not(.active) {
	background-color: #111;
}

.active:hover {
	background-color: #4CAF50;
}
</style>
</head>
<body>
	

<%
	memberDTO dto = (memberDTO)session.getAttribute("info");
%>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" style='margin-top:20px'>
			<div class="inner">

				<!-- Logo -->
				<a href="main.jsp" class="logo"> <span class="symbol"><img
						src="images/hehe.png" alt="" /></span><span class="title">Web & PT</span>
				</a>

				<!-- Nav -->
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

				<li><a href="main.jsp">메인화면으로</a></li>
				<li><a href="video.jsp">영상</a></li>
				<li><a href="recommend.jsp">식단추천</a></li>
				<li><a href="meal.jsp">식단</a></li>
				<li><a href="caltest.html">캘린더</a></li>
			</ul>
		</nav>

		    <script src = "JS/jquery-3.6.0.js"></script>
    <script src = "JS/jquery-ui.js"></script>
    <script>
    	function None() {
    	$('img').each(function(){ //이미지를 배열의 형태로 가져옴 ---> for문을 돌면서 하나씩 뽑아오기
			$(this).on('error',function(){
				$('.1').closest('.row').hide(); //closest-> 부모요소를 css선택자를 활용해서 가져올 수 있는 기능
				$(this).closest('.row').hide();
				});
    		});
    	}
    
    </script>
<%
   foodDAO dao = new foodDAO();
   ArrayList<foodDTO> arr = dao.getFood_info();
   String link = "img/";
%>
<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div class="inner" style = 'height:50px;'>
							
								
    <table id = "testTable" class="sortable" border="1px">
        <tr>
            <th>img</th>
            <th>name</th>
            <th>칼로리</th>  
            <th>탄수화물</th>
            <th>단백질</th>
            <th>지방</th>
        </tr>
        
            <%for(int i = 0; i < arr.size(); i++){ 
            %>
            <tr class = 'row'>
               <td>
               		<img src= "<%=link + arr.get(i).getProduct_name() + ".jpg"%>" onerror = 'None()' class = <%=i+1 %>>
               </td>
               <td src="#"><%=arr.get(i).getProduct_name() %></td>
               <td><%=arr.get(i).getProduct_cal() %></td>
               <td><%=arr.get(i).getProduct_carb() %></td>
               <td><%=arr.get(i).getProduct_prot() %></td>
               <td><%=arr.get(i).getProduct_fat() %></td>
            </tr>
            <%}%>
    </table>
       <script src = "JS/jquery-3.6.0.js" type="text/javascript"></script>
    <script>
    const getCellValue = (tr, idx) => tr.children[idx].innerText || tr.children[idx].textContent;

    const comparer = (idx, asc) => (a, b) => ((v1, v2) => 
        v1 !== '' && v2 !== '' && !isNaN(v1) && !isNaN(v2) ? v1 - v2 : v1.toString().localeCompare(v2)
        )(getCellValue(asc ? a : b, idx), getCellValue(asc ? b : a, idx));

    document.querySelectorAll('th').forEach(th => th.addEventListener('click', (() => {
        const table = th.closest('table');
        Array.from(table.querySelectorAll('tr:nth-child(n+2)'))
            .sort(comparer(Array.from(th.parentNode.children).indexOf(th), this.asc = !this.asc))
            .forEach(tr => table.appendChild(tr) );
    })));
    </script>

		</div>

	
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>


</body>
</html>