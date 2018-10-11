<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V14</title>
	<script>
	function register() {
		location.href="${pageContext.request.contextPath }/register.do";
	}
// 	+++++++++++++++++++++++++고침 임지영
	function findId(){
		location.href = "${pageContext.request.contextPath }/findId.do";
	}
	function findPassword(){
		location.href = "${pageContext.request.contextPath }/findPassword.do";
	}
// 	+++++++++++++++++++++++++고침 임지영
	</script>
	<meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="464344629780-bbfcg0v2lk88hqv4ihlvkl2acire4k1e.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<script src="https://code.jquery.com/jquery-latest.js"></script>



<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
				<form action="${pageContext.request.contextPath }/loginProcess.do" method="post" name="lform" onsubmit="return checkForm()" class="login100-form validate-form flex-sb flex-w" >
					<span class="login100-form-title p-b-32">
						Login
					</span>

					<span class="txt1 p-b-11">
						아이디
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "아이디를 입력해주세요">
						<input class="input100" type="text" name="id" >
						<span class="focus-input100"></span>
					</div>
					
					<span class="txt1 p-b-11">
						비밀번호
					</span>
					<div class="wrap-input100 validate-input m-b-12" data-validate = "비밀번호를 입력해주세요">
						<span class="btn-show-pass">
							<i class="fa fa-eye"></i>
						</span>
						<input class="input100" type="password" name="password" >
						<span class="focus-input100"></span>
					</div>
					
					<div class="flex-sb-m w-full p-b-48">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>
					<div>
						<div>
							<a href="#" class="txt3" onclick="findId()"> 아이디찾기 </a>&nbsp; <a
								href="#" class="txt3" onclick="findPassword()"> 비밀번호 찾기 </a>
						</div>
					</div>
						</div>
					<div class="container-login100-form-btn" >
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type = "submit" class="login100-form-btn" value = "로그인">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="submit" class="login100-form-btn" value="회원가입" onclick="register()" >
					
					<!-- google login -->
						<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
						 <script>
					      function onSignIn(googleUser) {
					        // Useful data for your client-side scripts:
					        var profile = googleUser.getBasicProfile();
					        console.log("Email: " + profile.getEmail());
					        
					        // google id 넘기기
					        var googleId = profile.getEmail();
					        console.log("googleLogin.do로 넘길 아이디 :" + googleId);
					        
					         $.ajax({
				        	type : 'get',
				        	url : 'googleLogin.do',
				        	data : {googleId : googleId},
				        	success : function() {
				        		   /*console.log("!!!!" + data);*/
				        		   location.href="${pageContext.request.contextPath}";
				        	}
				       		 }); 
					      
					        /* location.href="${pageContext.request.contextPath}"; */
					      };
					    </script> 
					<!-- google login --> 
					
					
					</div>
				</form>
					</div>

				

			</div>
		</div>

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>