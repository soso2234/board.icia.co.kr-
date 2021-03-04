<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib2.jsp" %>
<%! int i=1; %>


<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<!-- navigation -->
<%@ include file="/WEB-INF/views/include/teamNavigation.jsp" %>
<title>나의 일정</title>

<body>
<div class="container">
    
    <div  class="form-group">
       <h1 align ="center">나의 일정</h1>
    </div>
    
    <div class="row mt-2">
        <div class="col-12">
            
            <form name="myPlan" id="myPlan" method="post" action="/" target="_blank">
            <table border="1" bordercolor="black" width ="1000" height="500" align = "center" >
            
                <tr bgcolor="white" align ="center">
                           <td colspan="2">${pTitle}</td>
                           
                </tr>
                
                <tr align = "center" bgcolor="white">
                           <td>날짜</td>
                           <td>일정</td>
                </tr>
                
                
<c:if test="${!empty planlist}">                       
   <c:forEach var="planDate" items="${planlist}" varStatus="status">

    <tr align = "center" bgcolor="white">
          <td>${planDate.pDay}</td>
          
          <td>

         ${planDate.pPlace}

          </td>
    </tr>
    </c:forEach>
</c:if>                          
                          
                        
                

            </table>
            </form>   
        </div>
    </div>
</div>

</body>
</html>