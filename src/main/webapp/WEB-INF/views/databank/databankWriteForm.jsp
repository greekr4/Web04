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
	.ct_wrap{
	clear: both;
	width:1000px;
	margin: 100px auto;
	
	
	}
	button {
	padding-top: 7px;
    width: 150px;
    height: 30px;
	}
	th{
	margin: 
	}
	</style>
</head>
<body>
    <header id="header">
	<%@ include file="/resources/html/hd.jsp" %>
    </header>
    
<div id="ct">

<div class="ct_wrap">
<article id="" class="">

	<form action="${path }/data_board/insert" method="post" name="databankUpload">
	<div class="table_form_wrap">
		<table class="table_form">
			<tbody>
				<tr>
					<th><label for="title">작성자</label></th>
					<td><input type="text" name="writer" id="dtitle" size="100" class="single100" placeholder="작성자 입력" value="${sid }"> </td>
				</tr>
				<tr>
					<th><label for="title">제목</label></th>
					<td><input type="text" name="tit" id="dtitle" size="100" class="single100" placeholder="글제목 입력" required></td>
				</tr>
				<tr>
					<th><label for="content">내용</label></th>
					<td><textarea style="width: 854px" name="con" id="con" cols="100" rows="8" class="multi100" placeholder="글 내용 입력" required></textarea></td>
				</tr>
				<tr>
					<th><label for="dposter">파일 형식</label></th>
					<td><input type="text" name="dposter" id="dposter" size="40" class="single100" value="" readonly>
					</td>
				</tr>
				<tr>
					<th><label for="dfilename">업로드 파일</label></th>
					<td><input type="text" name="dfile_name" id="dfilename" size="40" class="single100" value="" readonly>
							<button type="button" class="btn btn-primary" onclick="uploadFile()">자료 업로드 하기</button>
							<button type="button" class="btn btn-primary" onclick="uploadFile2()">자료 업로드 하기2</button>
							<img src="" id="proData" />
					</td>
				</tr>
				<tr>
					<th></th>
					<td>
						<input type="hidden" name="lock_post" value="1">
						<button type="submit">자료 등록</button>
						<button type="reset">취소</button>


					</td>
				</tr>	
			</tbody>
		</table>
	</div>
	</form>
	<script>
	function uploadFile() {
		window.open("${path }/data_board/uploadForm", "dataupload", "width=400, height=300");
	}
	
	function uploadFile2() {
		window.open("${path }/data_board/uploadAjax.do", "dataupload", "width=400, height=400");
	}
	</script>
</article>
</div>
</div> <!--  ct 끝 -->


     <footer id="footer">
	<%@ include file="/resources/html/ft.jsp" %>
    </footer>
</body>
</html>
