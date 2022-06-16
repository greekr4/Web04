<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%response.setCharacterEncoding("utf-8"); %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>HomeZZ</title>
</head>
<body>

<form action="./Write" method="post">
<table>
<tr>
<th>제목</th>
<th>내용</th>
<th>작성자</th>
<th>Lock_post</th>
</tr>

<tr>

<td><input type="text" name="tit" placeholder="tit"></td>
<td><input type="text" name="con" placeholder="con"></td>
<td><input type="text" name="writer" placeholder="writer"></td>
<td><input type="text" name="lock_post" placeholder="lock_post"></td>


</tr>
<button type="submit">ddd</button>
</table>
</form>
 <h1>추가</h1>
</body>
</html>
