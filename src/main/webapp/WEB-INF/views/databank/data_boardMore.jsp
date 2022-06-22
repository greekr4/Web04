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
	input, textarea{
	border: 1px solid #777;
    font-size: 0.9em;
    line-height: 2em;
    padding-left: 1em;
    padding-top: 5px;
	}
	
	</style>
</head>
<body>
    <header id="header">
	<%@ include file="/resources/html/hd.jsp" %>
    </header>
    
<div id="ct">
<div style="width: 1600px; margin: 150px auto;">
<form action="./Write" method="post">
<table style="width: 100%; margin: 0 auto;">
<tr>
<th>제목</th> <td><input type="text" name="tit" placeholder="tit" style="width: 100%" value="${DTO.tit }" readonly></td>
<th>작성자</th><td><input type="text" name="writer" placeholder="writer" style="width: 100%" value="${DTO.writer }" readonly></td>
<th>Lock_post</th><td><input type="text" name="lock_post" placeholder="lock_post" style="width: 100%" value="${DTO.lock_post }" readonly></td>
</tr>
<tr>
<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
</tr>
<tr>
<th>업로드파일</th>
<td colspan="5">
 <%--
 ${path}/resources/upload/${DTO.dfile_name }
 --%>
<input style="width: 90%;" type="text" name="dfile_name" id="dfile_name" class="dfile_name" value="${DTO.dfile_name }" >
<a href="${path}/resources/upload/${DTO.dfile_name }" download>다운로드</a>
</td>
</tr>

<tr>
<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
</tr>


<tr>
<th>내용</th>
<td colspan="5">
<textarea rows="" cols="" name="con" style="width: 100% ;height: 330px;" readonly>
${DTO.con }
</textarea>
</td>
</tr>
<tr>
<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan="5">
<a href="${path }/board/EditForm?no=${DTO.no}"><button type="button" style="width: 100%; height: 50px">수정하러가기</button></a>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan="5">
<a href="${path }/board/del?no=${DTO.no}"><button type="button" style="width: 100%; height: 50px">삭제</button></a>
</td>
</tr>

<tr>
<td>&nbsp;</td>
<td colspan="5">
<a href="${path }/board/list"><button type="button" style="width: 100%; height: 50px">목록</button></a>
</td>
</tr>

</table>
</form>
 </div>
</div>


     <footer id="footer">
	<%@ include file="/resources/html/ft.jsp" %>
    </footer>
</body>
</html>
