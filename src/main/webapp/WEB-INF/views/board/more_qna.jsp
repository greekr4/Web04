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
    <script src="https://code.jquery.com/jquery-latest.js"></script>
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
	
	.table_wrap{
	width: 1400px;
	margin: 150px auto;
	}
	.table_wrap table {
	width: 100%;
	margin: 0 auto;	
	table-layout: fixed;
	border-spacing: 0;
	}
	.table_wrap .top_info th{
	border-bottom: 1px solid #777;
	}
	.table_wrap .main_tit{
	border-bottom: 1px solid #777;
	padding-top: 15px;
	}
	.table_wrap .main_con{
	text-align: left;
	vertical-align:top;
	min-width: 100%;
	height: 500px;
	line-height: 1.5em;
	padding-left: 2em;
	padding-top: 2em;
	}
	.table_wrap .main_btn{
	border-bottom: 1px solid #777;
	}
	.table_wrap button{
	height: 30px;
    width: 50px;
    padding-top: 7px;
    margin-bottom: 10px;
    }
    .table_wrap .foot_btn td{
    text-align:right;
    padding-top: 10px;
    }
    .table_wrap .top_info{
    color: #999;
    }
    table.comment {
    margin-top: 100px;
     }
    .comment .comment_thumb{
    text-align: right;
    }
    .comment .comment_top td{
    border-bottom: 1px solid #777;
    padding-bottom: 10px;
    }
    .comment .comment_main_info{
    color: #777;
    }
    .comment .comment_main_info td{
    padding-top: 12px;
    }
    .comment .comment_main_con td{
    padding-top: 12px;
    height: 100px;
    vertical-align: top;
    }
    table.comment_form{
    margin-top: 50px;
    }
    .c_comment td {padding-left: 30px;}
	</style>
</head>
<body>
    <header id="header">
	<%@ include file="/resources/html/hd.jsp" %>
    </header>
    
<div id="ct">
<div class="table_wrap">
<iframe width=0 height=0 name="hiddenframe1" style="display:none;"></iframe>
<table>
<thead>
<tr class="top_type">
<th colspan="3">
<c:if test="${DTO.type==1 }">
<h3>공지사항</h3>
</c:if>
<c:if test="${DTO.type==2 }">
<h3>뉴스</h3>
</c:if>
<c:if test="${DTO.type==3 }">
<h3>자유게시판</h3>
</c:if>
</th>
</tr>
<tr class="top_info">
<th>${DTO.writer }</th>
<th><fmt:formatDate value="${DTO.regdate }" pattern="YYYY-MM-dd"/></th>
<th>조회: ${DTO.viewed } 추천: ${DTO.thumb }</th>
</tr>
</thead>
<tbody>
<tr>
<th colspan="3" class="main_tit">
<h1>${DTO.tit }</h1>
</th>
</tr>
<tr>
<th colspan="3" class="main_con">
${DTO.con }
</th>
</tr>
<tr>
<th colspan="3" class="main_btn"><button onclick="window.open('${path}/board/thumbup?no=${DTO.no }','hiddenframe1')">추천</button></th>
</tr>
</tbody>
<tfoot>
<tr class="foot_btn">
<td colspan="3">
<c:if test="${DTO.type==1 }">
<button onclick="location.href = '${path }/board/notice'">목록</button>
</c:if>
<c:if test="${DTO.type==2 }">
<button onclick="location.href = '${path }/board/news'">목록</button>
</c:if>
<c:if test="${DTO.type==3 }">
<button onclick="location.href = '${path }/board/free'">목록</button>
</c:if>
<c:if test="${DTO.type==4 }">
<button onclick="location.href = '${path }/board/qna'">목록</button>
</c:if>
<c:if test="${sid == 'admin2' }">
<button onclick="location.href = '${path }/board/EditForm?no=${DTO.no}'">수정</button>
<button onclick="location.href = '${path }/board/del?no=${DTO.no}&type=${DTO.type }'">삭제</button>
</c:if>
</td>
</tr>
</tfoot>
</table>
<table class="comment">
<thead>
<tr class="comment_top">
<td colspan="3" style="text-align: center;">답변(${fn:length(commentList) })</td>
</tr>
</thead>
<tbody>


<c:forEach items="${commentList }" var="CDTO" varStatus="status">
<tr class="comment_main_info">
<td colspan="2" class="comment_winfo">
${CDTO.writer } | <fmt:formatDate value="${CDTO.regdate }" pattern="YYYY-MM-dd"/>

<button onclick="$('.cc_form').eq(${status.index}).css('display','block')">답글</button>
<c:choose>
	<c:when test="${sid==CDTO.writer }">
	<!-- 아이디가 같으면 -->
	<button onclick="$('.c_con').eq(${status.index}).css('display','none');$('.cedit_form').eq(${status.index}).css('display','block')">수정</button>
	<button onclick="window.open('${path}/board/cdel?cno=${CDTO.cno }','hiddenframe1')">삭제</button>
	</c:when>
	
	<c:when test="${fn:contains(sid,'admin') }">
	<!-- 운영자면 -->
	<button onclick="$('.c_con').eq(${status.index}).css('display','none');$('.cedit_form').eq(${status.index}).css('display','block')">수정</button>
	<button onclick="window.open('${path}/board/cdel?cno=${CDTO.cno }','hiddenframe1')">삭제</button>
	</c:when>

</c:choose>







</td>
<td class="comment_thumb">
추천:${CDTO.thumb }
<button onclick="window.open('${path}/board/cthumbup?cno=${CDTO.cno }','hiddenframe1')">추천</button>
</td>
</tr>
<tr class="comment_main_con">
<td colspan="3">
<span class="c_con">${CDTO.con }</span>
<form action="${path }/board/cUpdate" class="cedit_form" method="POST" style="display: none;">
<input type="hidden" name="cno" id="cno" value="${CDTO.cno }">
<input type="text" name="con" id="con" class="input_con" value="${CDTO.con }">
<button type="submit">수정</button>
</form>
</td>
</tr>

<tr class="cc_form" style="display:none;">
<form action="${path }/board/ccWrite" method="POST">
<td>
<input type="hidden" name="cno" value="${CDTO.cno }">
<input type="hidden" name="writer" value="${sid }">
<input type="text" name="con">
<button>작성</button>
</td>
</form>
</tr>



<c:forEach items="${c_cListbox }" var="List">
 <c:forEach items="${List }" var="ccc">
 	<c:if test="${CDTO.cno == ccc.cno }">
 	<tr class="c_comment">
 	<td colspan="2"> ㄴ>&nbsp;&nbsp;&nbsp;${ccc.writer} | <fmt:formatDate value="${DTO.regdate }" pattern="YYYY-MM-dd"/>
 	
 	<c:choose>
	<c:when test="${sid==CDTO.writer }">
	<!-- 아이디가 같으면 -->
	<button onclick="window.open('${path}/board/ccdel?ccno=${ccc.ccno }','hiddenframe1')">삭제</button>
	</c:when>
	
	<c:when test="${fn:contains(sid,'admin') }">
	<!-- 운영자면 -->
	<button onclick="window.open('${path}/board/ccdel?ccno=${CDTO.ccno }','hiddenframe1')">삭제</button>
	</c:when>

</c:choose>
 	
 	
 	</td>
 	<td style="text-align: right;">추천:${ccc.thumb }
 	<button onclick="window.open('${path}/board/ccthumbup?ccno=${ccc.ccno }','hiddenframe1')">추천</button>
 	</td>
 	</tr>
 	<tr class="c_comment">
 	<td style="height: 50px; vertical-align: top;">${ccc.con }</td>
 	</tr>
 	</c:if>
 </c:forEach>
</c:forEach>



</c:forEach>
</tbody>
</table>
<c:if test="${!empty sid }">
<form action="${path }/board/cWrite" id="comment_form" method="post">
<input type="hidden" name="bno" value="${DTO.no }">
<input type="hidden" name="writer" value="${sid }">
<table class="comment_form">
<tbody>
<tr>
<td colspan="2" style="width:95%;"><input style="width: 100%;" type="text" name="con" id="con" class="con" placeholder="답변을 작성해보세요" required></td>
<td style="padding-top: 10px; text-align: right;"><button type="submit">작성</button></td>
</tr>
</tbody>
</table>
</form>
</c:if>
 </div>
</div>


     <footer id="footer">
	<%@ include file="/resources/html/ft.jsp" %>
    </footer>
</body>
</html>
