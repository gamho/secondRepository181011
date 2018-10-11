<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Hello World</title>
      
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- modal css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/modal.css"> <!-- 이클립스  -->
<!--     <link rel="stylesheet" href="/css/modal.css"> bracket -->
   
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/style.css?ver=1">
    
    <!--  Web Font   -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">

	<!-- login################################################## -->
	<script src="https://code.jquery.com/jquery-latest.js"></script>

	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">

	<!-- login################################################## -->
	<!-- 로그인 스크립트 -->
	<script>
	function register() {
		location.href="${pageContext.request.contextPath }/register.do";
	}
	</script>
	
	<!-- 	원석 - 디테일 관련 파라미터 보내는 js(연주 헬프, 진행 중)
	$("#uSuck").click(function() {

		console.log('함수 실행!!!');
		var title = $(this).text();
		console.log(title);
		
		   var form = document.createElement("form");
		   form.setAttribute("method", "post");
		   form.setAttribute("action", '${pageContext.request.contextPath}/board/detail.do');

		   var hiddenField = document.createElement("input");
		   hiddenField.setAttribute("type", "hidden");
		   hiddenField.setAttribute("name", "title");
		   hiddenField.setAttribute("value", title);
		   form.appendChild(hiddenField);
		   
		   document.body.appendChild(form);
		   form.submit();
	});  -->
	
	<!-- google login -->
	<meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="464344629780-bbfcg0v2lk88hqv4ihlvkl2acire4k1e.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
	    
</head>
<body>
<header class="site-header">
    <div class="site-branding">
        <h1 class="site-title"><a href="index.html" rel="home"><img src="${pageContext.request.contextPath }/images/logo.png" alt="Logo"></a></h1>
    </div><!-- .site-branding -->
    
   <!--     
   <div class="hamburger-menu main">
        <div class="menu-icon">
                <img src="images/menu-icon.png" alt="menu icon">
        </div><!-- .menu-icon -->
	<!-- 
        <div class="menu-close-icon">
            <img src="images/menu-icon.png" alt="menu icon">
        </div><!-- .menu-close-icon -->
    <!-- </div><!-- .hamburger-menu -->
    
    <!--person-->
    <div class="hamburger-menu person">
        <div class="menu-icon person">
            <i class="far fa-user"></i>
        </div><!-- .menu-icon -->

        <div class="menu-close-icon person-close">
            <i class="far fa-user"></i>
        </div><!-- .menu-close-icon -->
    </div><!-- .hamburger-menu -->

   <!-- add (plus) -->
   
    <div class="hamburger-menu">
        <div class="menu-icon add">
            <a href="${pageContext.request.contextPath }/board/writeForm.do"><i class="fas fa-plus"></i></a>
        </div><!-- .menu-icon -->
		
         <div class="menu-close-icon add-close">
           <img src="images/x.png" alt="menu close icon">
        </div><!-- .menu-close-icon -->
    </div><!-- .hamburger-menu -->
    
    
</header><!-- .site-header -->

<!-- main menu -->
<nav class="site-navigation main flex flex-column justify-content-between">
    <div class="site-branding d-none d-lg-block ">
        <h1 class="site-title"><a href="index.html" rel="home"><img src="${pageContext.request.contextPath }/images/logo2.png" alt="Logo"></a></h1>
    </div><!-- .site-branding -->

    <ul class="main-menu flex flex-column justify-content-center">
        <li class="current-menu-item"><a href="index.html">All</a></li>
        <li><a href="portfolio.html">Sports</a></li>
        <li><a href="blog.html">Animal</a></li>
        <li><a href="#">Humor</a></li>
        <li><a href="#">Etc</a></li>
        <li><a href="#">돋보기</a></li>
        <li><a href="${pageContext.request.contextPath }/board/list.do">List</a></li>
        
    </ul>

    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">BeatTheBit</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>


    <div class="social-profiles">
        <ul class="flex justify-content-start justify-content-lg-center align-items-center">
            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
        </ul>
    </div><!-- .social-profiles -->
</nav><!-- .site-navigation -->

<!-- person -->
<nav class="site-navigation person flex flex-column justify-content-between">
    <div class="site-branding d-none d-lg-block ">
        <h1 class="site-title"><a href="index.html" rel="home"><img src="${pageContext.request.contextPath }/images/logo2.png" alt="Logo"></a></h1>
    </div><!-- .site-branding -->

    <ul class="main-menu flex flex-column justify-content-center">
        <li class="current-menu-item"><a href="index.html">Home</a></li>
    <c:choose> 
    	<c:when test="${empty userVO}">  
        <li><a href="#" id="myBtn">Login</a></li>
        </c:when>
        <c:otherwise>
        	<c:if test="${not empty userVO.password}">
		        <li><a href="${pageContext.request.contextPath }/logout.do">Logout</a></li>
        	</c:if>
        	<c:if test="${userVO.password == null}">
			   	<!-- google logout -->
				<li><a href="https://www.google.com/accounts/Logout?continue=https://appengine.google.com/_ah/logout?continue=http://localhost:8000//bitbit/index.jsp">Sign Out</a></li>
        	</c:if>
		</c:otherwise>        
   	</c:choose>
    </ul>
    <script>
	   function signOut() {
	    var auth2 = gapi.auth2.getAuthInstance();
	    auth2.signOut().then(function () {
	      console.log('User signed out.');
	    });
	  } 
	</script>
    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">BeatTheBit</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>


    <div class="social-profiles">
        <ul class="flex justify-content-start justify-content-lg-center align-items-center">
            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
        </ul>
    </div><!-- .social-profiles -->
</nav><!-- .site-navigation -->

<div class="nav-bar-sep d-lg-none"></div>

<div class="outer-container home-page">
    <div class="container-fluid">
        <div class="row">
            
            <c:forEach items="${ pBoardList }" var="board" varStatus="loop"> <!-- pBoardList : 로그인 한 게시자의 모든 게시물 -->
              <div class="col-12 col-md-6 col-lg-3 no-padding">
                <div class="portfolio-content">
                    <figure>
                        <img src="${pageContext.request.contextPath}/upload/${ board.fileSaveName }" alt="">
                    </figure>

                    <div class="entry-content flex flex-column align-items-center justify-content-center">
                        <h3><a href="${pageContext.request.contextPath}/board/detail.do?no=${board.no}">${ board.title }</a></h3>

                        <ul class="flex flex-wrap justify-content-center">
                            <li><a href="${pageContext.request.contextPath}/board/detail.do?no=${board.no}">${ board.hashtag1 },</a></li>
                            <li><a href="${pageContext.request.contextPath}/board/detail.do?no=${board.no}">${ board.hashtag2 }</a></li>
                        </ul>
                    </div><!-- .entry-content -->
                </div><!-- .portfolio-content -->
            </div><!-- .col -->
           </c:forEach>
            
        </div><!-- .row -->
    </div><!-- .container-fluid -->
</div><!-- .outer-container -->

<!-- The Login -->
<div id="myModal" class="modal">
  <!-- Modal content -->
  <div id="modal-content" class="modal-sm">
    <span class="close">×</span>
    <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->
			
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

								Forgot Password?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type ="submit" class="login100-form-btn" value = "로그인">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="button" id="myBtn2" class="login100-form-btn">회원가입</button> <!-- onclick="register()" -->
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
				        	success : function(data) {
				        		   data = decodeURIComponent(data);
				        		   console.log("!!!!" + data);
				        		   location.href="${pageContext.request.contextPath}";
				        	}
				       		 }); 
					      
					        /* location.href="${pageContext.request.contextPath}"; */
					      };
					    </script> 
					<!-- google login -->
					</div>
				</form>

				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
    <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->
  </div>
  <div id="dropDownSelect1"></div>
<!-- The Login -->
  
 
 <!-- The register -->
<div id="myModal2" class="modal">
  <!-- Modal content -->
  <div id="modal-content" class="modal-sm">
    <span class="close">×</span>
    <!--Register##########################################################################################  -->
	<script>
		function login(){
			location.href="${pageContext.request.contextPath }/login.do";
		}
	</script>
 <!-- The register -->
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<!-- css -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/register.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
</head>
<body>
<br>
<div class="signup-form">	
    <form action = "${pageContext.request.contextPath }/registerProcess.do" method="post" name="lform" onsubmit="return checkForm()">
		<h2>회원가입</h2>
		
        <div class="form-group">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-user"></i></span>
				<input type="text" class="form-control" name="id" placeholder="아이디" required="required">
			</div>
        </div>
        <div class="form-group">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-paper-plane"></i></span>
				<input type="email" class="form-control" name="email" placeholder="이메일 주소" required="required">
			</div>
        </div>
		<div class="form-group">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-lock"></i></span>
				<input type="text" class="form-control" name="password" placeholder="비밀번호" required="required">
			</div>
        </div>
		<div class="form-group">
			<div class="input-group">
				<span class="input-group-addon">
					<i class="fa fa-lock"></i>
					<i class="fa fa-check"></i>
				</span>
				<input type="text" class="form-control" name="confirm_password" placeholder="비밀번호 확인" required="required">
			</div>
        </div>        
		<div class="form-group" style="padding-left:25%;">
           <button type="submit" class="login100-form-btn">회원가입 완료</button>
        </div>

    </form>
	<div class="text-center">이미 가입이 되어있으신가요? <a href="#" onclick="login()" style="color: #424242">  로그인</a> 페이지로 이동합니다.</div>
</div>	
			
    <!--Register##########################################################################################  -->
  </div>
  <div id="dropDownSelect1"></div>
 <!-- The register -->
 
</div>    

<script type='text/javascript' src='${pageContext.request.contextPath }/js/jquery.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath }/js/custom.js?ver=1'></script>
<script src="${pageContext.request.contextPath }/js/modal.js"></script> <!-- modal 이클립스 -->
<!-- <script src="/js/modal.js"></script> modal  css -->

</body>
</html>