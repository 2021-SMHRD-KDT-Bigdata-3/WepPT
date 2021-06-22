<%@page import="model.foodDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.foodDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
		<title>Ÿ��Ʋ-����</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
<style>
img{
width : 200px;
height:200px;}

.test{
font-size: 21px;
padding:0 0.75em 0.75em 0.75em;
text-align: center;
        animation-name: big;
        animation-duration: 2s;
        animation-timing-function: linear;
        animation-delay: 2s;
        animation-iteration-count: 4;
        animation-direction: alternate;
        animation-fill-mode: none;
        animation-play-state: running;
}

table tr>td{
    vertical-align: middle;
}
</style>
</head>
<body>
    <script src = "JS/jquery-3.6.0.js"></script>
    <script src = "JS/jquery-ui.js"></script>
    <script>
    	function None() {
    	$('img').each(function(){ //�̹����� �迭�� ���·� ������ ---> for���� ���鼭 �ϳ��� �̾ƿ���
			$(this).on('error',function(){
				$('.1').closest('.row').hide(); //closest-> �θ��Ҹ� css�����ڸ� Ȱ���ؼ� ������ �� �ִ� ���
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
									<span class="symbol"><img src="images/hehe.png" alt="" /></span><span class="title">������Ű��</span>
								</a>
    <table id = "testTable" class="sortable" border="1px">
    <thead>
        <tr>
            <th class="test">�̹���</th>
            <th class="test">��ǰ�̸�</th>
            <th class="test">Į�θ�</th>  
            <th class="test">ź��ȭ��</th>
            <th class="test">�ܹ���</th>
            <th class="test">����</th>
        </tr>
    </thead>
    <tbody>    
            <%for(int i = 0; i < arr.size(); i++){ 
            %>
            <tr class = 'row' style = 'display: table-row !important;'>
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
            </tbody>
    </table>
       <script src = "JS/jquery-3.6.0.js" type="text/javascript"></script>
    <script>
    var num = 0;
    const getCellValue = (tr, idx) => tr.children[idx].innerText || tr.children[idx].textContent;

    const comparer = (idx, asc) => (a, b) => ((v1, v2) => 
        v1 !== '' && v2 !== '' && !isNaN(v1) && !isNaN(v2) ? v1 - v2 : v1.toString().localeCompare(v2)
        )(getCellValue(asc ? a : b, idx), getCellValue(asc ? b : a, idx));

   document.querySelectorAll('th').forEach(th => th.addEventListener('click', (() => {
        	num += 1;
        const table = th.closest('table');
        Array.from(table.querySelectorAll('tr:nth-child(n+2)'))
            .sort(comparer(Array.from(th.parentNode.children).indexOf(th), this.asc = !this.asc))
            .forEach(tr => table.appendChild(tr) );
        th.onclick = function(){
        	if(num % 2 == 0){
     	   th.style.fontWeight = "bolder";
        	} else{
        		th.style.backgroundColor == "blue";
        	}
        };
    })));
    
  /* let th = document.getElementsByclassName("test");
   th.onclick = function(){
	   th.style.backgroundColor = "blue";
   } */
    </script>


</body>
</html>