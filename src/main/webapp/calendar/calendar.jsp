<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.icia.web.util.HttpUtil" %>
<%! 
String pStart = null;
String pEnd = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>일정 선택하기</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>

<%
int pEnd1 = HttpUtil.get(request, "pEnd" , 0);
int pStart1 = HttpUtil.get(request, "pStart", 0);

if((pEnd1 - pStart1) + 1 > 10)
{
%>
   alert("x");
<%
}
%>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
<script>
   $(document).ready(function() {
      alert("날짜 입력란입니다 :)");
   
        //오늘 날짜를 출력
        $("#today").text(new Date().toLocaleDateString());

        $.datepicker.setDefaults($.datepicker.regional['ko']); 
        
        // 시작일(pStart)은 종료일(pEnd) 이후 날짜 선택 불가
        // 종료일(pEnd)은 시작일(pStart) 이전 날짜 선택 불가

        //시작일
        $('#pStart').datepicker({
            showOn: "both",                     // 달력을 표시할 타이밍 (both: focus or button)
            buttonImage: "pngegg.png", 
            buttonImageOnly : true,             
            buttonText: "날짜선택",
            dateFormat: "yymmdd",             
            changeMonth: true,                  //월을 이동하기 위한 선택상자 표시여부
            minDate: 0,                         //오늘 이전 날짜 선택 불가
            onClose: function( selectedDate ) {    
                // 시작일(pStart) datepicker가 닫힐때
                // 종료일(pEnd)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                $("#pEnd").datepicker( "option", "minDate", selectedDate );
            }                
        });

        //종료일
        $('#pEnd').datepicker({
            showOn: "both", 
            buttonImage: "pngegg.png", 
            buttonImageOnly : true,
            buttonText: "날짜선택",
            dateFormat: "yymmdd",
            changeMonth: true,
            minDate: 0,
            onClose: function( selectedDate ) {
                $("#pStart").datepicker( "option", "maxDate", selectedDate );
            }                
        });
        
      $('#btnCalendar').on('click', function(){
           
           if(($('#pEnd').val() - $('#pStart').val()) + 1 <= 10)
             { 
             //종료일 시작일 두칸 다 비워져 있는 함수 시작
                 if(($('#pEnd').val() == 0) || ($('#pStart').val() == 0)){
                    
                 //ㄴ종료일 pEnd 칸만 비워져 있는 함수 시작
                     if($('#pStart').val()){//시작일에 값 넣기
                         alert("날짜선택");
                          return $('#pEnd').focus();
                          $("#pEnd").datepicker( "option", "minDate", selectedDate );
                  }
                 
                 //ㄴ종료일만 비워져 있는 함수 완료 
               alert("날짜를 입력해주세요.");
               return $('#pStart').focus();
               $("#today").text(new Date().toLocaleDateString());
                         
                  }
             //두칸 다 비워져 있는 함수 완료
             

             }
              
           else
             {
                 //시작일 포커스
                $('#pStart').focus();
                alert("x");
             }
           
           
      /*계획짜기 버튼 클릭했을 때 값 넘기기
         var form = $("#plan")[0];
          var formData = new FormData(form);
            
      $.ajax({
          type: "POST",
          enctype: 'multipart/form-data',
          url: "/planMake/planInsert",
          data: formData,
          processData: false,
          contentType: false,
          cache: false,
          timeout: 600000,
           beforeSend : function(xhr) 
           {
               xhr.setRequestHeader("AJAX", "true");
           },
           success: function (response) 
           {
              if(response.code == 0)
              {
                 alert("등록이 완료 되었습니다.");
                 document.plan.action = "/board2/myPlan";
                 document.plan.submit();
              }
              else if(response.code == 400)
              {
                 alert("파라미터 값이 올바르지 않습니다.");   
              }
              else
              {
                 alert("테이블 담기 중 오류가 발생하였습니다.");
              }
           },
           error: function (error) 
           {
              icia.common.error(error);
              alert("테이블 담기 중 오류가 발생하였습니다ㅅㅂ");
           }
       });*/
       
           document.plan.action = "/travel/join3";
           document.plan.submit();
           self.close();
   });
});
    
   
</script>
</head>
<body>
   <table>
   <form name="plan" id="plan" class="plan" method="post" target="_blank">
      <tr>
         <td><b>여행 제목</b></td>
         <td> : <input type="text" name="pTitle" id="pTitle"></td>
      </tr>
      <tr>
         <td>&nbsp</td>
      </tr>
      <tr>
         <td>오늘 날짜</td>
         <td> : <span id="today"></td>   
      </tr>
      <tr>
         <td><label for="pStart">시작일</label></td>
         <td><input type="text" name="pStart" id="pStart"></td>
         <td>~</td>
      </tr>   
      <tr>
         <td><label for="pEnd">종료일</label></td>
         <td><input type="text" name="pEnd" id="pEnd"><br></td>   
      </tr>   
      <tr>
         <td><input type="button" id="btnCalendar" name="btnCalendar" value="계획짜기" ></td>
 
      </tr>
   </form>
   </table>
   
   
</body>
</html>