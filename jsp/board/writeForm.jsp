<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href = "/abc/writeForm.css" />
<script>
	
	/* <c:if test = "${ not empty userVO }">
		location.href = "/Mission-Web/jsp/board/login/login.jsp";
	</c:if> */
	
	function doWrite() {
		var w = document.contact;	// 아래 테이블 id로 수정
		
		if(w.title.value == "") {
			alert("제목을 입력하세요");
			w.title.focus();
		return false; 
		}
		
		if(w.hashtag1.value == "") {
			alert("첫 번째 해시태그를 입력하세요");
			w.hashtag1.focus();
		return false; 
		}
		
		if(w.hashtag2.value == "") {
			alert("두 번째 해시태그를 입력하세요");
			w.hashtag2.focus();
		return false; 
		}
		
		if(w.category.value == "") {
			alert("카테고리를 입력하세요");
			w.category.focus();
		return false; 
		}
		
		// 파일 확장자 체크
		if(checkExt(w.attachfile1)) {
			return false;
		}
		
		return true;
	}
	
	function checkExt(obj) {
		
		var allow = 'gif';
		var fileName = obj.value;
		var ext = fileName.substring(fileName.lastIndexOf('.')+1);
		
			if(allow != ext) {
				alert(' gif 파일만 업로드가 가능합니다');
				return true;
			}
		
		return false;
	}

	function doAction(userVOId) {
		   var form = document.getElementsByName('wForm')[0];
		   
/* 		   var form = document.createElement("form");
		   form.setAttribute("method", "post");
		   form.setAttribute("action", '${ pageContext.request.contextPath }/board/write.do');
 */
		   var hiddenField = document.createElement("input");
		   hiddenField.setAttribute("type", "hidden");
		   hiddenField.setAttribute("name", "userID");
		   hiddenField.setAttribute("value", userVOId);
		   form.appendChild(hiddenField);
		   
//		   document.body.appendChild(form);
		   //form.submit();
		   
		}
</script>
</head>
<body>
	<div class="container">
		<form id="contact" action="
			${ pageContext.request.contextPath }/board/write.do" method="post"
			enctype="multipart/form-data" onsubmit="return doWrite()">
			<c:if test="${ not empty userVO }">
				<input type="hidden" name="userID" value="${ userVO.id }">
			</c:if>
			<c:if test="${ empty userVO }">
				<input type="hidden" name="userID" value="hong">
			</c:if>
			<h3 align="center">움짤을 등록해보즈아</h3>
			<h4 align="center">gif 파일만 업로드 가능합니다</h4>
			<fieldset>
				<input placeholder="제목" type="text" tabindex="1" required
					autofocus>
			</fieldset>
			<fieldset>
				<input type = "text" size = "50" name = "userID" value = "${ userVO.id }" readonly >
			</fieldset>
			<fieldset>
				<input placeholder="해시태그1" type="text" tabindex="2" required>
			</fieldset>
			<fieldset>
				<input placeholder="해시태그2" type="text"	tabindex="3" required>
			</fieldset>
			<fieldset>
				<input placeholder="첨부파일" type="file" name="attachfile1" tabindex="4" required>
			</fieldset>
			<fieldset>
				<input type = "submit" value = "등록" onclick="doAction('${ userVO.id }')" >&nbsp;&nbsp;
				<input type = "button" value = "홈으로" onclick = "goList()">
			</fieldset>
		</form>
	</div>
</body>
</html>