<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<c:forEach items="${list }" var="DTO">
<h1>${DTO.mid }</h1>
<h1>${DTO.mpw }</h1>
</c:forEach>

 
</body>
</html>
