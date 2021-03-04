<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/head.jsp" %> 
<title>회원탈퇴</title>
<srcipt src="http://ajax.googleapis.com/ajax/lib/jquery/1.11.1/jquery.min.js"></srcipt>
<script>
$(document).ready(function() {
   
    $("#submit").on("click", function() {
      var responseMessage = "<c:out value = "${message}" />";
      
      if(responseMessage != "")
      {
         alert("회원탈퇴 완료!");
         
         location.href = "/admin/adminList";
         //로케이션으로 가지 않는다, 관리자가 여러회원을 삭제할 수 있는데, 삭제하고 list 넘어가는 그런 까다로움을 제거하기 위해 
         //그냥 창닫기 누르기로 설정했음
      }
      else {
         alert("없는 회원입니다.");
      }
   });
    
    $("#close").on("click",function(){
      location.href = "/admin/adminList";
    });

}); //ready function
</script>
<body>
<%@ include file="/WEB-INF/views/include/adminNavigation.jsp" %>
<div class="container">
   <h2 class="list" style="text-align: center">회원 강제 탈퇴</h2>
   <br><br>
   <h4 class="list" style="text-align: center">-회원 아이디-</h4>
</div>  
   <form action = "adminDeleteForm" method = "post">
      <table class="form1">
      <tr>
         <td>
            <input type = "text" name = userId2 placeholder = "아이디 입력" >
         </td>
         <td>
         &nbsp&nbsp
         </td>
         <td>
            <button class="btn22" type = "submit" name = "submit" id="submit">회원 강제탈퇴</button>
         </td>
         <td>
         &nbsp&nbsp
         </td>
        
         <td>
            <input type = "button" class="btn22" id="close" value = "창닫기">
         </td>
         
      </tr>
   </table>
   </form>
</body>
</html>