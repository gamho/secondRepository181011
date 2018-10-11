<%@page import="kr.co.mlec.board.vo.BoardFileVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.mlec.board.vo.BoardVO"%>
<%@page import="kr.co.mlec.board.dao.BoardDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.mlec.util.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  
   <%--
   		5번 게시글 상세목록 조회
   		http://localhost:8000/Mission-Web/board/detail.jsp?no=5
   		
   		작업순서
   		1. 조회할 글 번호(파라미터) 조희
   		2. 해당 파라미터를 통해  DB에서 해당 게시물을 조희
   		3. 조회된 게시물을 브라우저에 출력
    --%>
    

	<%-- request.setCharacterEncoding("utf-8"); --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세페이지</title>
<script src = "http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function() {
		/* $('button').eq(2).click(function() {
			location.href = "list.jsp";		 제이쿼리에서 배열번호(여기서는 eq(2))로 목록으로 돌아가는 코드! 
		}); */
		
		$('button').click(function() {
			switch($(this).text()) {
			case '목록' :
				location.href = "${pageContext.request.contextPath}/board/main.do"; 	/* 제이쿼리에서 text() 활용한 방법! */
				break;
			case '수정' : 
				location.href = "updateForm.jsp?no=${ param.no }";
				break;
			case '삭제' :
				if(confirm('게시물을 삭제하시겠습니까?')) {
					location.href = "delete.jsp?no=${ param.no }";
				}
				break;
			}
		});
	});
</script>
<link rel = "stylesheet" href = "/abc/writeForm.css" />
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
			<h3 align="center">${ board.title }</h3>
		<div align="center">
			<fieldset>
				<img src="${pageContext.request.contextPath}/upload/${ board.fileSaveName }" style="width:350px; height:auto;">
			</fieldset>
		</div>
		<div align="center">
			<fieldset>
				<input type = "text" size = "50" name = "userID" value = "${ board.userID }" readonly >
			</fieldset>
			<fieldset>
				<input type = "text" size = "50" name = "hashtag1" value = "${ board.hashtag1 }" readonly >
			</fieldset>
			<fieldset>
				<input type = "text" size = "50" name = "hashtag2" value = "${ board.hashtag2 }" readonly >
			</fieldset>
			<fieldset>
				<input type = "text" size = "50" name = "viewCnt" value = "${ board.viewCnt }" readonly >
			</fieldset>
			<fieldset>
				<input type = "text" size = "50" name = "heart" value = "${ board.heart }" readonly >
			</fieldset>
			<fieldset>
				<input type = "text" size = "50" name = "regDate" value = "${ board.regDate }" readonly >
			</fieldset>
			<fieldset>
				<input type = "button" size = "50" name = "regDate" value = "${ board.fileOriName }" readonly style="width:25%;" >
			</fieldset>
			<fieldset>
				<input type = "button" value = "수정">&nbsp;&nbsp;	<!-- 매핑 필요 -->
				<input type = "button" value = "삭제">&nbsp;&nbsp;	<!-- 매핑 필요 -->
				<input type = "button" value = "목록">&nbsp;&nbsp;	
			</fieldset>
		</div>
		</form>
	</div>
</body>
</html>