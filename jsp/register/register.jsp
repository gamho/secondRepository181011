<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<h2>회원가입</h2>
	<hr style="width:20%;">
	<br>
	<form name="register" action="${pageContext.request.contextPath }/register/registerProcess.do" method="post" onsubmit="return doRegister()">
		<table border="1" width="20%;">
			<tr>
				<th>아이디</th>
				<td><input type="text" size="30px" name="id"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" size="30px" name="password"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" size="30px" name="email"></td>
			</tr>
			
		</table>
		<input type="submit" style="width:10%;" value="회원가입">
		<input type="button" style="width:10%;" value="로그인" onclick="goLogin()">
	</form>
	</div>
</body>
</html>