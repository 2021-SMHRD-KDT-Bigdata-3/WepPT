<%@page import="model.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<link href='test/packages/core/main.css' rel='stylesheet' />
<link href='test/packages/daygrid/main.css' rel='stylesheet' />
<link href='test/packages/timegrid/main.css' rel='stylesheet' />
<!-- 스타일 적용 조금만 줌 -->
<style>

			body{
		zoom: 90% !important;
		align:'center';
		}

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
    zoom: 100% !important; 
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>
</head>
<%
	memberDTO dto = (memberDTO)session.getAttribute("info");
%>
<body>


            <div id="calendar"></div>



<script src='test/packages/core/locales/ko.js'></script>
<script src='test/packages/core/main.js'></script>
<script src='test/packages/interaction/main.js'></script>
<script src='test/packages/daygrid/main.js'></script>
<script src='test/packages/timegrid/main.js'></script>
<script src='test/packages/moment/main.js'></script>
<script src='test/packages/testCalendar/js/moment.min.js'></script>
<script src='test/packages/list/main.js'></script>
<script src='test/packages/rrule/main.js'></script>
<script src = 'JS/jquery-3.6.0.js'></script>

<script>


  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
      header: {
        left: 'prev, next, today',
        center: 'title',
        right: 'dayGridMonth, timeGridWeek, timeGridDay',
      },
      locale: 'ko',
      defaultDate: '2021-06-22', //지금 날짜로 기본값 설정
      navLinks: true, 
      selectable: true,
      selectOverlap:function(event){
      },
      selectMirror: true,
      select: function(start, end, allDay) {
    	alert(start);
    	var title = prompt('이벤트 적용될 글 내용적어:');
        if (title) {
          calendar.addEvent({
            title: title,
            start: start,
            end: end,
            allDay: allDay
          })
        }
        calendar.unselect()
      },
      editable: true,
      eventLimit: true,
    	 events : function( fetchInfo, successCallback, failureCallback ){
    	    $.ajax({
    	        type: "get",
    	        url: "ajaxTest.jsp",
    	        data: {
    	          userId : '<%=dto.getId() %>'
    	        },
    	        dataType: 'json',
    	        success: function (response) {
    	  			ret = [];
    	  			for(i=0;i<response.length;i++){
    	  				var tmp={};
    	  				tmp['title']=response[i]['cal_title'];
    	  				tmp['start']=response[i]['cal_start'];
    	  				tmp['end']=response[i]['cal_end'];
    	  				ret.push(tmp);
    	  			}
    	  			console.log(ret);
    	  			successCallback( ret);
    	        }
    	      });
    	    }
  });
    	calendar.render();
  });

</script>
</body>
</html>