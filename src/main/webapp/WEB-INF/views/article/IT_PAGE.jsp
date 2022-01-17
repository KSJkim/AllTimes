<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    
    
<script src="${pageContext.request.contextPath }/resources/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <script type="text/javascript">
    	
    	$(document).ready(function(){
    		var selCategory = '${param.category}';
    		if(selCategory != ''){
    			$(".Navigation").css("color","black").css("font-weight","bold");
    			$("#"+selCategory).css("color","#FD3A13").css("font-weight","bold").css("border-bottom","2px solid #FD3A13");
    		}
    	});
    
 </script>
    
</body>
</html>
