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

        .page_tit {
            margin-left: 235px;
            font-size: 20px;
            font-weight: 300;
            text-decoration: underline;
            margin-bottom: 50px;
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
        .heal_menu_btn{
        color:#fff;
        float: left;
        margin:0 1px;
       /*  background-color: #347eb5; */
        border: 1px solid #347eb5;
        padding: 20px;
        font-size: 24px;
        width: 278px;
    	text-align: center;
    	transition:0.5s;
    	cursor: pointer;
        }
        .heal_menu_btn:hover{
        background-color: #347eb5;
        }
        .heal_img_box{
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
        
    </style>
</head>
<body>



<section class="page" id="page1">
    <header id="header">
	<%@ include file="/resources/html/hd.jsp" %>
    </header>
      <div id="ct">
        <div class="ct_wrap">
    
              <div class="visual" style="background-image: url(${path}/resources/img/mn04_vs.jpg);">
                <div class="tit_box">
                    <h1>도수재활센터 소개</h1>
                </div>
            </div>
            <div class ="ct_wrap2">
            <img src="${path }/resources/img/mn04_01_img1.jpg" style="margin: 25px auto;">
            <img src="${path }/resources/img/mn04_01_img2.jpg" style="margin: 25px auto;">
            <img src="${path }/resources/img/mn04_01_img3.jpg" style="margin: 25px auto;">
            <img src="${path }/resources/img/mn04_01_img4.jpg" style="margin: 25px auto;">
            <img src="${path }/resources/img/mn04_01_img5.jpg" style="margin: 25px auto;">
            <img src="${path }/resources/img/mn04_01_img6.jpg" style="margin: 25px auto;">
            <img src="${path }/resources/img/mn04_01_img7.jpg" style="margin: 25px auto;">
            <img src="${path }/resources/img/mn04_01_img8.jpg" style="margin: 25px auto;">
            </div>
<%--                 <div class="heal_wrap">
                	<div class="heal_tit_box">
                		<h2>치료법</h2>
                	</div>
                	<div class="heal_menu_box">
                		<ul class="heal_menu">
                			<li class="heal_menu_btn">도수치료</li>
                			<li class="heal_menu_btn">신경성형술</li>
                			<li class="heal_menu_btn">풍선확장술</li>
                			<li class="heal_menu_btn">고주파수액감압술</li>
                			<li class="heal_menu_btn">인공디스크치환술</li>
                		</ul>
                	</div>
                	<div class="heal_img_box heal_item1">
                	<img alt="" src="${path}/resources/img/mn03_01_treat01.jpg">
                	</div>
                	<div class="heal_img_box heal_item2">
                	<img alt="" src="${path}/resources/img/mn03_01_treat02.jpg">
                	</div>
                	<div class="heal_img_box heal_item3">
                	<img alt="" src="${path}/resources/img/mn03_01_treat03.jpg">
                	</div>
                	<div class="heal_img_box heal_item4">
                	<img alt="" src="${path}/resources/img/mn03_01_treat04.jpg">
                	</div>
                	<div class="heal_img_box heal_item5">
                	<img alt="" src="${path}/resources/img/mn03_01_treat05.jpg">
                	</div>                	                	                	
                </div> --%>
          </div>
    </div> <!-- #ct 끝 -->
    <script type="text/javascript">
    $(document).ready(function () {
    	$('.heal_menu_btn').eq(0).css("background-color","#347eb5");
    	
     	$('.heal_menu_btn').eq(0).click(function(){
    		$('.heal_menu_btn').css("background-color","");
    		$('.heal_menu_btn').eq(0).css("background-color","#347eb5");
    		$('.heal_img_box').css("display","none");
    		$('.heal_img_box').eq(0).css("display","block");
    	});
    	
    	$('.heal_menu_btn').eq(1).click(function(){
    		$('.heal_menu_btn').css("background-color","");
    		$('.heal_menu_btn').eq(1).css("background-color","#347eb5");
    		$('.heal_img_box').css("display","none");
    		$('.heal_img_box').eq(1).css("display","block");
    	});

    	$('.heal_menu_btn').eq(2).click(function(){
    		$('.heal_menu_btn').css("background-color","");
    		$('.heal_menu_btn').eq(2).css("background-color","#347eb5");
    		$('.heal_img_box').css("display","none");
    		$('.heal_img_box').eq(2).css("display","block");
    	});
    	
    	$('.heal_menu_btn').eq(3).click(function(){
    		$('.heal_menu_btn').css("background-color","");
    		$('.heal_menu_btn').eq(3).css("background-color","#347eb5");
    		$('.heal_img_box').css("display","none");
    		$('.heal_img_box').eq(3).css("display","block");
    	});
    	
    	$('.heal_menu_btn').eq(4).click(function(){
    		$('.heal_menu_btn').css("background-color","");
    		$('.heal_menu_btn').eq(4).css("background-color","#347eb5");
    		$('.heal_img_box').css("display","none");
    		$('.heal_img_box').eq(4).css("display","block");
    	});
    	

    	
    });
    </script>
        <footer id="footer">
	<%@ include file="/resources/html/ft.jsp" %>
    </footer>
 </section>
 
 
<section class="page" id="page2">
<header id="header">
	<%@ include file="/resources/html/hd.jsp" %>
    </header>
      <div id="ct">
        <div class="ct_wrap">
 	            <div class="visual" style="background-image: url(${path}/resources/img/mn03_vs.jpg);">
                <div class="tit_box">
                    <h1>목디스크</h1>
                </div>
            </div>
            <div class ="ct_wrap2">
            <img src="${path }/resources/img/mn03_02_img1.jpg" style="margin: 25px auto;">
            <img src="${path }/resources/img/mn03_02_img2.jpg" style="margin: 25px auto;">
            <img src="${path }/resources/img/mn03_02_img3.jpg" style="margin: 25px auto;">
            <img src="${path }/resources/img/mn03_02_img4.jpg" style="margin: 25px auto;">
            <img src="${path }/resources/img/mn03_02_img5.jpg" style="margin: 25px auto;">
            </div>
            
     </div>
    </div> <!-- #ct 끝 -->
        <footer id="footer">
	<%@ include file="/resources/html/ft.jsp" %>
    </footer>
            </section>
            <section class="page" id="page3">
                <header id="header">
	<%@ include file="/resources/html/hd.jsp" %>
    </header>
         <div id="ct">
        <div class="ct_wrap">
 	            <div class="visual" style="background-image: url(${path}/resources/img/mn03_vs.jpg);">
                <div class="tit_box">
                    <h1>허리디스크</h1>
                </div>
            </div>
            <div class ="ct_wrap2">
            <img src="${path }/resources/img/mn03_03_img1.jpg" style="margin: 25px auto;">
            <img src="${path }/resources/img/mn03_03_img2.jpg" style="margin: 25px auto;">
            <img src="${path }/resources/img/mn03_03_img3.jpg" style="margin: 25px auto;">
            <img src="${path }/resources/img/mn03_03_img4.jpg" style="margin: 25px auto;">
            <img src="${path }/resources/img/mn03_03_img5.jpg" style="margin: 25px auto;">
            </div>
            
     </div>
    </div> <!-- #ct 끝 -->
        <footer id="footer">
	<%@ include file="/resources/html/ft.jsp" %>
    </footer>
 </section>


</body>
</html>