<%@page import="model.foodDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.foodDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
		<title>타이틀-싸이</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
<style>
img{
width : 200px;
height:200px;}
</style>
</head>
<body>
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
						<div class="inner">
							
							
							<!-- Logo -->
								<a href="main.jsp" class="logo">
									<span class="symbol"><img src="images/hehe.png" alt="" /></span><span class="title">돼지시키들</span>
								</a>
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


</body>
</html>