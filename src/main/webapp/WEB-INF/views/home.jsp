<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" %>
<%response.setCharacterEncoding("utf-8"); %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!   ${abc }
</h1>
<P>  The time on the server is ${serverTime}. </P>
<p><a href="./test">테스트로</a></p>
<p><a href="./map">맵테스트로</a></p>
<p><a href="./doC">리스트테스트로</a></p>
<p><a href="./doD">리다이렉트테스트</a></p>
<p><a href="./board/list">보드리스트로</a></p>
<table>
<tr>
<th>아이디</th>
<th>이름</th>
</tr>
<c:forEach items="${list }" var="DTO">
<tr>
<td>${DTO.mid }</td>
<td>${DTO.mname }</td>
</tr>
</c:forEach>
</table>
</body>
</html>
