<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib2.jsp" %>
<!-- navigation -->
<%@ include file="/WEB-INF/views/include/teamNavigation.jsp" %>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/head.jsp" %>

<script type="text/javascript">
$(document).ready(function() {
   alert("야야야야야!");

});
</script>

<body>
<div class="container">
    <div  class="form-group">
       <h1>일정</h1>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <table id="plan_date" border="1" bordercolor="blue" width ="500" height="300" align = "center" >
			    <tr align ="center">
			   <td colspan = "3">여행제목타이틀란</td>
			    </tr>
			    <tr align = "center">
			   <td>날</td>
			   <td>장소</td>
			   <td>비고</td>
			    </tr>
			    <tr><!--날짜 -->
			   <td>날짜1</td>
			   <td>장소1</td>
			   <td>비고1</td>
			    </tr>
			    <tr>
			   <td>날짜2</td>
			   <td>장소2</td>
			   <td>비고2</td>
			    </tr>
		</table>
        </div>
    </div>
</div>
</body>
</html>