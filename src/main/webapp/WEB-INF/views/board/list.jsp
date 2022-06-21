<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%response.setCharacterEncoding("utf-8"); %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${path}/resources/css/normalize.css">
    <link rel="stylesheet" href="${path}/resources/css/common.css">
	<title>HomeZZ</title>
	<style>
	table * {
	 font-family: monospace;
	 }
	</style>
</head>
<body>
    <header id="header">
	<%@ include file="/resources/html/hd.jsp" %>
    </header>
    
<div id="ct">
<div style="width: 1600px; margin: 150px auto;">
<div style="margin: 30px 0;">
<a href="./addForm" style="font-size: 40px; color:pink; border: 2px solid pink;font-family: none;
    font-weight: bold;">추가</a>
</div>
<table style="width: 100%; margin: 0 auto;">
<tr style=" line-height: 3em;">
<th>글번호</th>
<th>제목</th>
<th>내용</th>
<th>작성자</th>
<th>작성일</th>
</tr>
<c:forEach items="${list2 }" var="DTO">
<tr style="text-align: center; line-height: 3em;">
<td>${DTO.no }</td>
<td><a href="./more?no=${DTO.no }">${DTO.tit }</a></td>
<td>${DTO.con }</td>
<td>${DTO.writer }</td>
<td><fmt:formatDate value="${DTO.regdate }" pattern="YYYY-MM-dd"/></td>
</tr>
</c:forEach>
</table>

</div>
</div>
<style>
table{border-spacing: 0;}
th{border-top: 2px solid #000; border-bottom: 1px solid #777;}
td{border-bottom: 1px solid #777;}
</style>

     <footer id="footer">
	<%@ include file="/resources/html/ft.jsp" %>
    </footer>
</body>
</html>
