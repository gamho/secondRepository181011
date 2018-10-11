<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>전체 게시글 목록</h2>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>해시태그1</th>
			<th>해시태그2</th>
			<th>아이디</th>
			<th>조회수</th>
			<th>등록일</th>
			<th>하트수</th>
			<th>카테고리</th>
		</tr>
		<c:forEach items="${ boardList }" var="board">
			<tr>
				<td>${ board.no }</td>
				<td>${ board.title }</td>
				<td>${ board.writer }</td>
				<td>${ board.hashtag1 }</td>
				<td>${ board.hashtag2 }</td>
				<td>${ board.id }</td>
				<td>${ board.viewCnt }</td>
				<td>${ board.regDate }</td>
				<td>${ board.heart }</td>
				<td>${ board.category }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>