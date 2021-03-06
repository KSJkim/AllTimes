<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
      <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="description" content="">
      <meta name="author" content="">
      <title>All Times News</title>

      <!--Bootstrap core CSS-->
      <link href="resources/css/bootstrap.min.css" rel="stylesheet">

      <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

      <!-- Custom styles for this template -->

      <link href="resources/css/custom.css" rel="stylesheet">
      <link href="resources/css/responsive-style.css" rel="stylesheet">  
      <link href="resources/css/weather-icons.min.css" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="resources/css/font-awesome.min.css" />
      <link href="resources/css/lightbox.min.css" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="resources/css/loaders.css"/>
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
      <style></style>
      </head>





	<!-- Header -->
	<%@ include file="../includes/Header.jsp" %>
	

	
	<!-- Content -->	
						<section class="section-01 section_login">
					        <div class="container">
					    <div class="row">
					            <div class="col-lg-12 ">
                            <div class="p-5">
                                <div class="text-center">
                                    <h4 style="text-align:center; font-weight:bold;">????????????</h4>
                                </div>

                                	 <form action="MemberJoin" method="post" onsubmit="return joinFormCheck();" class="user">
                                    <div class="form-group">
                                    <label for="inputMid" class="label_id_join" style="font-weight:bold;
                                    display:inline-block; margin-bottom:1rem; padding-top:50px; padding-left:350px;">?????????</label>
                                        <input type="text" name="mid"  class="login_text_box"
                                            id="inputMid" placeholder="???????????????" style="border-radius: 10px;">
                                        <span id="idCheckMsg" style="font-size: 15px; padding-left:350px; font-weight:bold;"></span>
                                    </div>
                                    
                                   
                                    <div class="form-group">
                                    <label for="inputMpw" class="label_other_join" style="font-weight:bold;
                                    display:inline-block; margin-bottom:1rem; padding-top:5px; padding-left:350px;">????????????</label>
                                        <input type="text" name="mpw"  class="login_text_box"
                                            id="inputMpw" placeholder="??????????????????" style="border-radius: 10px;">
                                    </div>
                                    
                                    <div class="form-group">
                                    <label for="inputMname" class="label_other_join" style="font-weight:bold;
                                    display:inline-block; margin-bottom:1rem; padding-top:5px; padding-left:350px;">??????</label>
                                        <input type="text" name="mname"  class="login_text_box"
                                            id="inputMname" placeholder="????????????" style="border-radius: 10px;">
                                    </div>
                       
                       				<div class="form-group">
                       				<label for="inputMcontact" class="label_other_join" style="font-weight:bold;
                       				display:inline-block; margin-bottom:1rem; padding-top:5px; padding-left:350px;">????????????</label>
                                        <input type="text" name="mcontact"  class="login_text_box"
                                            id="inputMcontact" placeholder="??????????????????" style="border-radius: 10px;">
                                    </div>
                       
                       				<div class="form-group">
                       				<label for="inputMmail" class="label_other_join" style="font-weight:bold;
                       				display:inline-block; margin-bottom:1rem; padding-top:5px; padding-left:350px;">?????????</label>
                                        <input type="email" name="mmail"  class="login_text_box"
                                            id="inputMmail" placeholder="???????????????" style="border-radius: 10px;">
                                    </div>
                                    
                                    <div class="form-group" class="mail_check_input_box" >
                                        <input type="text"   class="join_email_check_false"
                                            id="mail_check_input" disabled="disabled" style="border-radius: 10px; ">
                                        <button type="button" class="mail_check_button" style="position:absolute; float:right; right:360px; margin-top:5px;
                                        	 border-radius:5px; border-color:lightgray; background-color:white; ">???????????? ??????</button>
                                        <span id="mail_check_input_box_warn" style="position:absolute; margin-top:45px; left:360px;"></span>
                                    </div>

                                    
                       
                       
                                    <input type="submit" class="btn login_btn login_button" value="??????????????????" style="margin-top:30px; margin-bottom:10px; border-radius: 10px;">
                                    
                                    
                                  
                                   
                                    <hr>
                                    
                                </form>
                                
                                <div class="text-center">
                                	<p class="p_join" style="margin-top:0; margin-bottom: 1rem; text-align:center; font-size:14px;">
                                	 	?????? ??????????????????? 
                                	 		<a class="small" href="MemberLoginForm">?????? ?????????</a>
                                	</p> 
                                	

                                </div>
                            </div>
                        </div>
                    </div>
				</div>
			</section>
	
	<!-- Footer -->
	<%@ include file="../includes/AnotherFooter.jsp" %>
	

<script src="${pageContext.request.contextPath }/resources/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

<script type="text/javascript">

var code = "";  
/* ???????????? ????????? ?????? */
$(".mail_check_button").click(function(){
    
    var email = $("#inputMmail").val();        	 // ????????? ?????????
    var checkBox = $("#mail_check_input");       // ???????????? ?????????
    var boxWrap = $(".mail_check_input_box");    // ???????????? ????????? ??????
    
	$.ajax({
        type:"GET",
        url:"mailCheck?email=" + email,
        success:function(data){
        	
        	checkBox.attr("disabled",false);
        	boxWrap.attr("class", "join_email_check_false_true");
        	code = data;
        }
                
    });
    
});
/* ???????????? ?????? */
$("#mail_check_input").blur(function(){
    var inputCode = $("#mail_check_input").val();        // ????????????    
    var checkResult = $("#mail_check_input_box_warn");    // ?????? ??????  
    
    if(inputCode == code){                            // ????????? ??????
        checkResult.html("??????????????? ???????????????.");
        checkResult.attr("class", "correct");        
    } else {                                            // ???????????? ?????? ??????
        checkResult.html("??????????????? ?????? ??????????????????.");
        checkResult.attr("class", "incorrect");
    }    
    
});

</script>

<script type="text/javascript">
	
	var checkMail = false;
	var checkId = false;
	
		$(document).ready(function(){
		
		$("#inputMid").keyup( function(){ 
			var userInputId = $("#inputMid").val();
			console.log("????????? ????????? : " + userInputId);
			
			if(userInputId.length <= 0){
				$("#idCheckMsg").css("color","red").text("???????????? ????????? ?????????!");
					checkId = false;
			} else {
				$.ajax({ 
					type : "get",
					url : "MemberIdCheck",
					data : { "userInputId" : userInputId },
					success : function(result){  
						console.log("result : " + result);
						if(result == "OK"){
							$("#idCheckMsg").css("color","green").text("??????????????? ?????????");
								checkId = true;
						} else {
							$("#idCheckMsg").css("color","red").text("????????? ?????????");
								checkId = false;
						}
					},
					error : function(){
						alert("ajax ?????? ??????!");
					}
				});
			}
			
			
			
		});
		
		
	});

</script>


	
		<script type="text/javascript">
		
		function joinFormCheck(){
			
			console.log("???????????? ??? ?????? : " + checkId);
			if(!checkId){
				alert("???????????? ??????????????????");
				$("#inputMid").focus();
				return false;
			}

			var checkMpw = $("#inputMpw").val(); 
			/* var checkMpw = document.getElementById("inputMpw").value; */
			if(checkMpw == ""){
				console.log("??????????????? ?????????????????????.");
				alert("??????????????? ??????????????????");
				$("#inputMpw").focus();
				return false;
			}
			
			var checkMname = $("#inputMname").val();
			
			if(checkMname == ""){
				console.log("????????? ?????????????????????.");
				alert("????????? ??????????????????");
				$("#inputMname").focus();
				return false;

			}
			
			var checkMcontact = $("#inputMcontact").val();
			
			if(checkMcontact == ""){
				console.log("??????????????? ?????????????????????.");
				alert("??????????????? ??????????????????");
				$("#inputMcontact").focus();
				return false;

			}
			
			var checkMmail = $("#inputMmail").val();
			
			if(checkMmail == ""){
				console.log("????????? ?????????????????????.");
				alert("????????? ??????????????????");
				$("#inputMmail").focus();
				return false;

			}
			
			var checkMmailNumber = $("#mail_check_input").val();
			
			if(checkMmailNumber == ""){
				console.log("????????? ????????? ?????????????????????.");
				alert("????????? ????????? ??????????????????");
				$("#inputMmail").focus();
				return false;

			}
		
			if($("#mail_check_input_box_warn").hasClass("incorrect")){
				console.log("????????? ?????????????????????.");
				alert("????????? ?????????????????????. ??????????????? ?????? ??????????????????");
				$("#mail_check_input").focus();
				return false;
				
			}
		}
	
	</script>

<!-- Bootstrap core JavaScript
    ================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="resources/js/jquery.min.js"></script> 
<script src="resources/js/bootstrap.min.js"></script> 
<script src="resources/js/core.js"></script> 

<!--  Jquery ?????? ???????????? -->
<script src="resources/js/lightbox-plus-jquery.min.js"></script> 


</body>
</html>

