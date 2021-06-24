<%@page import="model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/main.css" />
      <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <style>
   
      
   @font-face {
    font-family: 'twayair';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_tway@1.0/twayair.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

h2 {
   font-family:'twayair';
   font-size:200px;
}
      
      
      
      body{
      zoom: 100% !important;
      align:'center';
      }
      span.title{
   font-size : 50px;
}
      </style>     





</head>
<body>
   
   <%
   memberDTO dto = (memberDTO)session.getAttribute("info");
   %>
   
   <!-- Header -->
               <header id="header">
                  <div class="inner" >
                     
                     
                     <!-- Logo -->
                        <a href="main.jsp" class="logo"> <span class="symbol"><img style = 'margin-left:500px;'
                  src="images/hehe.png" alt="" /></span><span style = 'font-size:100px;'class="title">Web & PT</span>
            </a>

                     <!-- Nav -->
                        <nav style = 'right:0'>
                           <ul>
                              <!-- a태그 폰트 밑줄 삭제하는 방법 생각해보기 -->

                              <% if (dto == null) {
                                 out.print("<button style = 'height:70px;'><a style = 'font-size:30px;' href = 'login'>LOGIN</a></button>");
                                 out.print("<span>ㅤ</span>");
                                 out.print("<button  style = 'height:70px;'><a style = 'font-size:30px;' href = 'Join.jsp'>JOIN</a></button>");
                                 out.print("<span>ㅤ</span>");
                              } else if (dto.getId() != null) {
                                 out.print("<button  style = 'height:70px;'><a style = 'font-size:30px;' href = 'logout'>LOGOUT</a></button>");
                                 out.print("<span>ㅤ</span>");
                                 out.print("<button  style = 'height:70px;'><a style = 'font-size:30px;' href = 'mypage.jsp'>MY PAGE</a></button>");
                                 out.print("<span>ㅤ</span>");
                              }
                              %>
                              <li><a href="#menu">Menu</a></li>
                           </ul>
                        </nav>

                  </div>
               </header>

            <!-- Menu -->
               <nav id="menu">
                  <h2 style = 'font-size:50px'>Menu</h2>
                  
                  <ul>
                     <li><a href="main.jsp">메인화면으로</a></li>
                     <li><a href="video.jsp">영상</a></li>
                     <li><a href="recommend.jsp">식단추천</a></li>
                     <li><a href="meal.jsp">식단</a></li>
                     <li><a href="caltest.html">캘린더</a></li>
                  </ul>
               </nav>
   
   
      <form action="Community" method="post" enctype="multipart/form-data">
         <div id = "Community">  
            <table id="list" align = "center">
               <tr>
                  <td>제목</td>
                  <td><input type="text" name="title"> </td>
               </tr>
               <tr>
                  <td>아이디</td>
                  <td><%= dto.getId() %></td>
               </tr>
               <tr>
                  <td colspan="2">내용</td>
               </tr>
               <tr>
                  <td colspan="2">
                     <input name="fileName" type="file" style="float: right;">         
                     <textarea name="content" rows="10" style="resize: none;"></textarea>   
                  </td>
               </tr>
               <tr>
                  <td colspan="2">
                     <input type="reset" value="초기화">
                     <input type="submit" value="저장하기">
                  </td>
               </tr>
            </table>
         </div>
      </form>
</body>
</html>