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
            margin-left: 40px;
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
    </style>
</head>
<body>



<section class="page" id="page1">
    <header id="header">
	<%@ include file="/resources/html/hd.jsp" %>
    </header>
      <div id="ct">
        <div class="ct_wrap">
                <p class="page_tit">Hospital introduction</p>
                <div class="tit_box">
                    <div class="grid_wrap">
                        <div class="grid_box">
                            <div class="txt_box">
                                <h2>고객만족, 고객중심 <br><span class="color_blue">무척조은병원</span></h2>
                                <p>
                                    <strong>사소한 부분이라도 세심하게 주의를 기울여 높은 만족도를 드리겠습니다.</strong><br><br>
                                    무척조은병원은 고객과 하나 되는 환자 중심의 진료를 제공합니다. <br>
                                    대한민국 최고의 <span class="color_blue">척추, 관절, 도수재활센터</span>로써 끊임없이 연구하며 고객 한 분 한 분을
                                    위해 노력을 기울이고 있습니다.<br><br>

                                    무척조은병원에 오시면 그동안 잃어버렸던 미소와 만족을 되찾으실 수 있습니다. 동서고금, 나이를 막론하고 건강하고 아름다운 신체를 갖는 것은 모든
                                    이들의 소망입니다. 하지만 정보의 홍수 속에서 믿을 수 있는 시술이나 병원을 찾기란 쉽지 않은 일입니다.<br><br>

                                    무척조은병원은 믿을 수 있는 <span class="color_blue">전문의의 정밀한 진단과 처방, 10년 이상의 풍부한 경험과 노하우가
                                        더해져 만족스러운 결과</span>를 이끌어냅니다. 여러분이 꿈꾸는 건강하고 아름다운 신체를 만들어 드리겠습니다.
                                </p>
                                <p>
                                    <br>
                                    <strong>[열정]</strong> <span class="color_blue">기본과 원칙을 중시</span>하고, 정직하고 자연스러운 치료를
                                    위해 끊임없이 연구하고 배우겠습니다. <br><br>
                                    <strong>[신뢰] </strong> 내원하는 고객 한 분 한 분을 가족같이 맞이하고, 고객의 불편함에 귀를 기울여 언제나 즐거운 마음으로 편안하게
                                    찾을 수 있는 무척조은병원이 되겠습니다.<br><br>
                                    <strong>[안전] </strong>고객의 안전을 최우선으로 두어 <span class="color_blue">1:1 맞춤 처방, 빠른
                                        회복</span>을 지향합니다.
                                </p>
                            </div>
                            <div class="img_box">
                                <img src="${path}/resources/img/about01.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
          </div>
    </div> <!-- #ct 끝 -->
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
                <div class="ct_wrap" style="background-color:beige">
                    <h3><span class="color_blue">의료진</span>소개</h3>
                    <div class="list">
                        <div>
                            <figure>
                                <img src="${path}/resources/img/list1.jpg" alt="">
                            </figure>
                            <div class="txt_box">
                                <p class="tit"><span class="color_tit">내과 원장</span> 정승현</p>
                                <p class="txt"></p>
                            </div>
                        </div>
                        <div>
                            <figure>
                                <img src="${path}/resources/img/list2.jpg" alt="">
                            </figure>
                            <div class="txt_box">
                                <p class="tit"><span class="color_tit">영상의학과 원장</span> 안상부</p>
                                <p class="txt"></p>
                            </div>
                        </div>
                        <div>
                            <figure>
                                <img src="${path}/resources/img/list3.jpg" alt="">
                            </figure>
                            <div class="txt_box">
                                <p class="tit"><span class="color_tit">가정의학과 원장</span> 박정명</p>
                                <p class="txt"></p>
                            </div>
                        </div>
                        <div>
                            <figure>
                                <img src="${path}/resources/img/list4.jpg" alt="">
                            </figure>
                            <div class="txt_box">
                                <p class="tit"><span class="color_tit">정형외과 대표원장</span> 김재현</p>
                                <p class="txt"></p>
                            </div>
                        </div>
                    </div>
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
            
                <div class="ct_wrap">
                    <div class="list1">
                        <div class="list_wrap">
                            <div class="hgroup">
                                <em>01</em>
                                <h3>트렌드를 주도하는 <span class="color_blue">무척조은병원</span></h3>
                                <p>무척조은병원은 최신 의료시술과 의료 장비로 고객님의 아름다움을 한층 더 높여 드립니다.</p>
                            </div>
                            <figure style="display: flex;justify-content: space-evenly;">
                                <img src="${path}/resources/img/list5.png" alt="">
                                <img src="${path}/resources/img/list6.png" alt="">
                            </figure>
                        </div>
                        <div class="list_wrap">
                            <div class="hgroup">
                                <em>02</em>
                                <h3>청결한 의료기구 사용 / <span class="color_blue">정기적인 방역</span></h3>
                                <p>고객 한 분 한 분을 위해 일회용 의료기구 사용과 정기적인 방역으로 위생관리를 시행합니다.</p>
                            </div>
                            <figure style="display: flex;justify-content: space-evenly;">
                                <img src="${path}/resources/img/list7.png" alt="">
                                <img src="${path}/resources/img/list8.png" alt="">
                            </figure>
                        </div>

                    </div>
                </div>
     </div>
    </div> <!-- #ct 끝 -->
        <footer id="footer">
	<%@ include file="/resources/html/ft.jsp" %>
    </footer>
            </section>
            <section class="page" id="page4">
   <header id="header">
	<%@ include file="/resources/html/hd.jsp" %>
    </header>
      <div id="ct">
        <div class="ct_wrap">
            
                <div class="tit_box">
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <p class="sub_con">
                        내용1
                    </p>
                </div>
      </div>
    </div> <!-- #ct 끝 -->
        <footer id="footer">
	<%@ include file="/resources/html/ft.jsp" %>
    </footer>
            </section>
            <section class="page" id="page5">
                <header id="header">
	<%@ include file="/resources/html/hd.jsp" %>
    </header>
      <div id="ct">
        <div class="ct_wrap">
                <div class="tit_box">
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <h2 class="sub_tit">
                        제목1
                    </h2>
                    <p class="sub_con">
                        내용1
                    </p>
                </div>
                          </div>
    </div> <!-- #ct 끝 -->
        <footer id="footer">
	<%@ include file="/resources/html/ft.jsp" %>
    </footer>
            </section>


</body>
</html>