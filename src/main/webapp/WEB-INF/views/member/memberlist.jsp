<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" %>
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
</head>
<body>
    <header id="header">
	<%@ include file="/resources/html/hd.jsp" %>
    </header>
    
<div id="ct">
<div style="width: 1600px; margin: 150px auto;">
<div style="margin: 30px 0;">
<a href="./addForm" style="font-size: 20px; color:pink; border: 2px solid pink;">추가</a>
</div>
<table style="width: 100%; margin: 0 auto;">
<tr style=" line-height: 3em;">
<th>회원번호</th>
<th>아이디</th>
<th>비밀번호</th>
<th>전화번호</th>
<th>주소</th>
<th>이메일</th>
<th>닉네임</th>
<th>가입일</th>
<th>최종접속일</th>


</tr>
<c:forEach items="${list }" var="DTO">
<tr style="text-align: center; line-height: 3em;">

<td>${DTO.mno }</td>
<td><a href="updateForm?mid=${DTO.mid }">${DTO.mid }</a></td>
<td>${fn:substring(DTO.mpw,0,5) }...</td>
<td>${DTO.mtel }</td>
<td>${DTO.maddress }</td>
<td>${DTO.memail }</td>
<td>${DTO.mnick }</td>
<td><fmt:formatDate value="${DTO.mjday }" pattern="YYYY-MM-dd"/></td>
<td><fmt:formatDate value="${DTO.mlatest }" pattern="YYYY-MM-dd"/></td>


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
