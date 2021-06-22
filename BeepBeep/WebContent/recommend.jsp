<%@page import="model.memberDTO"%>
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
</style>
</head>
<body>
    <script src = "JS/jquery-3.6.0.js"></script>
    <script src = "JS/jquery-ui.js"></script>
    <script>
    	function None() {
    	$('img').each(function(){ //�̹����� �迭�� ���·� ������ ---> for���� ���鼭 �ϳ��� �̾ƿ���
			$(this).on('error',function(){
				$('.temp01').closest('.row').hide(); //closest-> �θ��Ҹ� css�����ڸ� Ȱ���ؼ� ������ �� �ִ� ���
				$('.temp11').closest('.row').hide(); //closest-> �θ��Ҹ� css�����ڸ� Ȱ���ؼ� ������ �� �ִ� ���
				$('.temp21').closest('.row').hide(); //closest-> �θ��Ҹ� css�����ڸ� Ȱ���ؼ� ������ �� �ִ� ���
				$('.temp31').closest('.row').hide(); //closest-> �θ��Ҹ� css�����ڸ� Ȱ���ؼ� ������ �� �ִ� ���
				$('.temp41').closest('.row').hide(); //closest-> �θ��Ҹ� css�����ڸ� Ȱ���ؼ� ������ �� �ִ� ���
				//������ �𸣰ڴµ� 11,21,31,41 �̷��� ������ ���ϱ淡 �׳� �� ������ �����
				//���۾��ϴ� ������ �� ã�ƺ��� �� �� ������ �ϴ� �ذ�!
				$(this).closest('.row').hide();
				});
    		});
    	}
    	
    
    </script>
<%
	memberDTO dto = (memberDTO)session.getAttribute("info");

	String category;
	if(dto.getCategory().equals("0")){
   	category = "desc";
	}else{
   	category = "asc";
	}


	foodDAO dao = new foodDAO();
	ArrayList<foodDTO> arr = dao.getFood_info(category);
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
        <tr>
            <th>img</th>
            <th>name</th>
            <th>Į�θ�</th>  
            <th>ź��ȭ��</th>
            <th>�ܹ���</th>
            <th>����</th>
        </tr>
        
            <%for(int i = 0; i < arr.size(); i++){ 
            %>
            <tr class = 'row'>
               <td>
               		<img src= "<%=link + arr.get(i).getProduct_name() + ".jpg"%>" onerror = 'None()' class = <%= "temp"+i+1 %>>
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