






<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function register() {
		location.href="${pageContext.request.contextPath }/register/register.do";
	}
</script>
</head>
<body>

	<h2>로그인</h2>
	<br>
	<form action="${pageContext.request.contextPath }/login/loginProcess.do" method="post" 
				name="lform" onsubmit="return checkForm()">
				<table style="width:40%">
					<tr>
						<th>ID</th>
						<td><input type="text" name="id" size="20" autofocus>
					</tr>
					<tr>
						<th>PASSWORD</th>
						<td><input type="password" name="password" size="20">
					</tr>
				</table>
				<br>
				<input type="submit" value="로그인"> 
	</form>
	<input type="submit" value="회원가입" onclick="register()">
</body>
</html>