<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login V14</title>
<script>
	function register() {
		location.href = "${pageContext.request.contextPath }/register.do";
	}
	function login(){
		location.href = "${pageContext.request.contextPath }/login.do";
	}
	function findId(){
		location.href = "${pageContext.request.contextPath }/findId.do";
	}
</script>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />

<script src="https://code.jquery.com/jquery-latest.js"></script>



<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
				<form action="${pageContext.request.contextPath }/findPasswordProcess.do"
					method="post" name="lform" onsubmit="return checkForm()"
					class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-32">비밀번호 찾기 </span> <span
						class="txt1 p-b-11"> 아이디를 입력해주세요 </span>
					<div class="wrap-input100 validate-input m-b-36"
						data-validate="아이디를 입력해주세요">
						<input class="input100" type="text" name="id"> <span
							class="focus-input100"></span>
					</div>
					
										
										<span
						class="txt1 p-b-11"> 이메일을 입력해주세요 </span>
					<div class="wrap-input100 validate-input m-b-36"
						data-validate="가입시 이용한 이메일을 입력해주세요">
						<input class="input100" type="text" name="email"> <span
							class="focus-input100"></span>
					</div>




					<div class="container-login100-form-btn">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="submit" class="login100-form-btn" value="비밀번호 찾기">
					</div>
					<div>
						<br> <a href="#" class="txt3" onclick="findId()">
							아이디 찾기 </a>&nbsp; 
							<a href="#" class="txt3" onclick="login()">
							로그인 화면으로 이동 </a>
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
	<!--=========================================================================ㅌㅁ======================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>


</body>
</html>