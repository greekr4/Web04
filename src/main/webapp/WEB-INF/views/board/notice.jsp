<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="${path}/resources/css/normalize.css">
<link rel="stylesheet" href="${path}/resources/css/common.css">
<link rel="stylesheet" href="//cdn.jsdelivr.net/gh/xpressengine/xeicon@2.3.1/xeicon.min.css">
    
    <style>
        img {
            display: block;
        }

        .page {
            clear: both;
            min-height: 100vh;
            display: none;
            width: 100%;
        }

        ul {
            list-style: none;
        }

        .page:target {
            display: block;
        }

        .grid_wrap {
            width: 1440px;
            margin: 0 auto;
        }

        .grid_box {
            display: grid;
            grid-template-columns: 50% 50%;
        }

        .img_box {
            width: 100%;
            overflow: hidden;
        }

        .grid_box .txt_box {
            display: inline-block;
            width: 100%;
            vertical-align: top;
            font-size: 20px;
            font-weight: 300;
            line-height: 1.5em;
        }

        .color_blue {
            color: blue;
        }

        .list {
            width: 1600px;
            margin: 0 auto;
            display: flex;
            flex-wrap: wrap;


        }

        .list>div {
            display: inline-block;
            width: 46%;
            margin: 0 2% 0.5rem;
            vertical-align: top;
        }

        .list>div figure img {
            display: block;
            width: 100%;
        }

        .list>div .txt_box {
            margin-top: 0.35rem;
            text-align: center;
        }

        .list>div .txt_box .tit {
            color: #000;
            font-size: 30px;
            font-weight: 400;
            margin-top: 30px;
        }

        .list>div .txt_box .txt {
            margin-top: 0.2rem;
            color: #363636;
        }

        #page2 .ct_wrap>h3 {
            text-align: center;
            font-size: 60px;
            font-weight: 250;
            padding-top: 25px;
        }

        .list1 {
            width: 1600px;
            margin: 0 auto;

        }

        .hgroup {
            text-align: center;
            font-size: 30px;
            font-weight: 300;
        }
        .hgroup h3 {
            margin: 20px auto;
        }

        em {
            margin-left: 760px;
            display: flex;
            width: 35px;
            text-align: center;
            background-color: blue;
            color: #fff;
            font-family: none;
        }
        .list_wrap{
        margin-top: 100px;
        }
        .ct_wrap{
        margin-top: 100px;
        margin-bottom: 100px;
        }
        .color_tit{
        color:#777;
        }
        
        .heal_wrap{
        clear: both;
        background-color: #1c2638;
        margin: 50px 0;
        min-height: 1000px;
        }
        .heal_tit_box{
        width: 1400px;
        margin: 0 auto;
        font-size: 48px;
        padding-top: 20px;
        color: #fff;
        }
        .heal_menu_box{
        width: 1400px;
        margin: 0 auto;
        }
        .heal_menu_btn, .heal_menu_btn2{
        color:#fff;
        float: left;
        margin:0 1px;
       /*  background-color: #347eb5; */
        border: 1px solid #347eb5;
        padding: 20px;
        font-size: 24px;
        width: 430px;
    	text-align: center;
    	transition:0.5s;
    	cursor: pointer;
        }
        .heal_menu_btn:hover, .heal_menu_btn2:hover{
        background-color: #347eb5;
        }
        .heal_img_box, .heal_img_box2{
        clear: both;
        width:1400px;
        margin: 120px auto;
        transition:0.5s;
        }
        .heal_img_box{
        display: none;
        }
        .heal_item1{
        display: block;
        }
        .visual {
            width: 100%;
            display: block;
            height: 320px;
            background-repeat: no-repeat;
        }

        .tit_box {
            padding-top: 125px;
            font-weight: 300;
            color: beige;
            text-align: center;
            margin: 0 auto;
            font-size: 20px;
        }
         .ct_wrap2{
        clear:both;
        width: 100%;
        overflow: hidden;
        }
        

        .tit_box>h3 {
            font-weight: 100;
            padding-bottom: 25px;
            font-size: 60px;
        }

        .board {
        
            text-align: left;
            width: 1440px;
            margin: 100px auto;
        }

        .board .page_tit {
            margin-top: 50px;
            font-weight: 300;
            font-size: 1.5em;
            text-decoration: underline;
        }

        .board table {
            margin: 0 auto;
            width: 100%;
            border-spacing: 0;
        }

        .board .txt_box {
            margin-top: 50px;
            margin-bottom: 50px;
            font-size: 1.2em;
        }

        .table_top th {
            border-top: 2px solid #000;
            border-bottom: 1px solid #777;
            background-color: #ededed;
            line-height: 3em;
            font-size: 20px;
            text-align: center;
        }

        td {
            line-height: 3em;
            border-bottom: 1px solid #777;
        }

        td {
            text-align: center;

        }

        .td_subject {
            text-align: left;
        }

        tr:nth-child(2n) {
            background-color: #ededed;
        }

        tr:hover td:first-child {
            border-left: 2px solid #253dbe;
        }

        tr td:first-child {
            border-left: 2px solid #fff;
        }

        tr:hover a {
            text-decoration: underline;
        }
        button {
        height: 30px;
	    width: 50px;
	    padding-top: 7px;
	    margin-bottom: 10px;
	    margin-left: 10px;
	    }
	    .search_box{
	    display: inline-block;
	    }
	    .search_box input{
	    height: 30px;
	    padding-top: 5px;
	    }
	    .search_box select, option{
	    height: 30px;
    	font-family: monospace;
		}	
    </style>
</head>
<body>

    <header id="header">
	<%@ include file="/resources/html/hd.jsp" %>
    </header>
     <div id="ct">
        <div class="page_warp">
 	         <div class="visual" style="background-image: url(${path}/resources/img/mn07_vs.jpg);">
                <div class="tit_box">
                    <h1>공지사항</h1>
                </div>
			</div>
            <div class="board">
                <p class="page_tit">공지사항</p>
                <div class="txt_box">
                    무척조은병원 공지사항 게시판 입니다.
                </div>
                <div class="table_warp">
                <div class="search_box">
                <form action="${path }/board/notice_search" method="POST">
                <select name="search_type">
                <option value="1">제목</option>
                <option value="2">내용</option>
                <option value="3">제목/내용</option>
                </select>
                <input type="hidden" id="type" name="type" value="1">
                <input type="text" id="search" name="search">
                <button type="submit">검색</button>
                </form>
                </div>
                <button onclick="location.href = '${path}/board/WriteForm?type=1'" style="float: right;">추가</button>
                    <table>
                        <colgroup>
                            <col style="width:10%;">
                            <col>
                            <col style="width:10%;">
                            <col style="width:10%;">
                            <col style="width:10%;">
                        </colgroup>
                        <thead>
                            <tr class="table_top">
                                <th>번호</th>
                                <th>제목</th>
                                <th>글쓴이</th>
                                <th>조회</th>
                                <th>날짜</th>
                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach items="${list }" var="DTO">
                            
                            <tr class="even">
                                <td class="td_num2">${DTO.no }</td>
                                <td class="td_subject" style="padding-left:0px">
                                    <div class="bo_tit">
                                        <a href="${path }/board/more?no=${DTO.no}">${DTO.tit } 
                                        <c:if test="${DTO.reply_count>0 }">
                                        (<span style="color: red;">${DTO.reply_count }</span>)
                                      	</c:if>
                                      	</a>
                                    </div>
                                </td>
                                <td class="td_name sv_use"><span class="sv_member">${DTO.writer }</span></td>
                                <td class="td_num">${DTO.viewed }</td>
                                <td class="td_datetime"><fmt:formatDate value="${DTO.regdate }" pattern="YY-MM-dd"/></td>
                            </tr>
                            
                            </c:forEach>

                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
</div> <!-- ct 끝 -->
        <footer id="footer">
	<%@ include file="/resources/html/ft.jsp" %>
    </footer>


</body>
</html>