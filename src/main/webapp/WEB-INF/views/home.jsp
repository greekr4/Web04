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
    <!-- 검색(메타) 정보 -->
    <meta name="url" content="http://test.com">
    <meta name="title" content="제목">
    <meta name="description" content="설명">
    <meta name="keywords" content="키워드">
    <!-- 오픈 그래프 -->
    <meta property="og:url" content="http://test.com">
    <meta property="og:title" content="제목">
    <meta property="og:description" content="설명">
    <meta property="og:image" content="로고주소">

    <title>Document</title>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="${path}/resources/css/normalize.css">
    <link rel="stylesheet" href="${path}/resources/css/common.css">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/gh/xpressengine/xeicon@2.3.1/xeicon.min.css">
    <style>



    </style>
</head>
<body>
    <header id="header">
	<%@ include file="/resources/html/hd.jsp" %>
    </header>

    <div id="ct">
        <div class="ct_wrap">
            <div class="main_fade">
                <div class="fadebox">
                    <div class="fade_btn_box">
                        <span class="prev_btn"><img style="width: 50px;" src="${path }/resources/img/visual_arrow_left.png"></span>
                        <span class="next_btn"><img style="width: 50px;" src="${path }/resources/img/visual_arrow_right.png"></span>
                    </div>
                    <div class="fade_btn_box2">
                        <span class="slider_btn"></span>
                        <span class="slider_btn"></span>
                        <span class="slider_btn"></span>

                    </div>

                    <img src="${path }/resources/img/visual01.jpg" alt="이미지1" class="main_img">
                    <img src="${path }/resources/img/visual02.jpg" alt="이미지2" class="main_img">
                    <img src="${path }/resources/img/visual03.jpg" alt="이미지3" class="main_img">
                </div>

            </div>
        </div>

        <div class="main_banner">
            <div class="banner_item"><img src="${path}/resources/img/main_banner01.jpg" alt=""></div>
            <div class="banner_item"><img src="${path}/resources/img/main_banner02.jpg" alt=""></div>
        </div>
        <div class="sub_btn_box_wrap">
            <div class="sub_btn_box">
                <span class="sub_prev_btn"><</span>
                <span class="sub_next_btn">></span>
                        

            </div>
        </div>
        <div class="sub_banner_view">
            <div class="sub_banner">
                <div class="sub_item">
                    <h1>팔꿈치질환</h1>
                    <p class="sub_txt1">JOINT</p>
                    <p class="sub_txt2">손목터널증후군 & 테니스/골프엘보 & 방아쇠수지증후군</p>
                    <div class="sub_imgbox"> <img src="${path}/resources/img/multi_slide01.jpg" alt=""></div>
                </div>
                <div class="sub_item">
                    <h1>무릎질환</h1>
                    <p class="sub_txt1">JOINT</p>
                    <p class="sub_txt2">콜라겐&세포 리빌더<br>RF Lifting</p>
                    <div class="sub_imgbox"> <img src="${path}/resources/img/multi_slide02.jpg" alt=""></div>
                </div>
                <div class="sub_item">
                    <h1>어깨질환</h1>
                    <p class="sub_txt1">JOINT</p>
                    <p class="sub_txt2">내몸에 맞는 1:1 맞춤<br>안티에이징주사</p>
                    <div class="sub_imgbox"> <img src="${path}/resources/img/multi_slide03.jpg" alt=""></div>
                </div>
                <div class="sub_item">
                    <h1>척추관협착증</h1>
                    <p class="sub_txt1">SPINE</p>
                    <p class="sub_txt2">코,이마,볼,무턱 입체적인 얼굴 완성<br>Filler</p>
                    <div class="sub_imgbox"> <img src="${path}/resources/img/multi_slide04.jpg" alt=""></div>
                </div>
                <div class="sub_item">
                    <h1>허리디스크</h1>
                    <p class="sub_txt1">SPINE</p>
                    <p class="sub_txt2">리프팅과 피부개선을 동시에<br> HIFU Lifting</p>
                    <div class="sub_imgbox"> <img src="${path}/resources/img/multi_slide05.jpg" alt=""></div>
                </div>
                <div class="sub_item">
                    <h1>목디스크</h1>
                    <p class="sub_txt1">SPINE</p>
                    <p class="sub_txt2">노화방지와 탄력을 동시에!<br>ANTI-AGING</p>
                    <div class="sub_imgbox"> <img src="${path}/resources/img/multi_slide06.jpg" alt=""></div>
                </div>
                <div class="sub_item">
                    <h1>도수재활치료</h1>
                    <p class="sub_txt1">REHABILITATION</p>
                    <p class="sub_txt2">특허받은 고정실로 매끈한 얼굴라인을 만들어드립니다.</p>
                    <div class="sub_imgbox"> <img src="${path}/resources/img/multi_slide07.jpg" alt=""></div>
                </div>


            </div>
        </div>


        <div class="main_about">
            <div class="main_about_titbox">
                <h3>무척조은병원</h1>
                    <h1><span class="color1">연구</span>하고 노력하는 <span class="color1">김태균 원장</span></h1>
                    <h2><span class="color2">10년 이상의 진료 노하우</span>를 바탕으로 <span class="color2">안전</span>하고<br>
                        건강한 신체를 <span class="color2">책임</span>지겠습니다.</h2>
            </div>
            <div class="main_about_imgbox">
                <img src="${path}/resources/img/main_about.png" alt="">

            </div>
            <div class="main_about_btnbox">
                <a href="#">자세히 보기</a>
            </div>

        </div>

        <div class="board_box">
            <div class="review_box">
                <div class="board_tit">
                    <h2>Real Review
                        <a href="#">+</a>
                    </h2>
                </div>
                <div class="board_list">
                    <table>
                        <tbody>
                        <c:forEach items="${list }" var="DTO" begin="0" end="5">
                            <tr>
                                <td width="440px;">${DTO.tit }</td>
                                <td><fmt:formatDate value="${DTO.regdate }" pattern="YYYY-MM-dd"/></td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="news_box">
                <div class="board_tit">
                    <h2>News
                        <a href="#">+</a>
                    </h2>
                </div>
                <div class="board_list">
                    <table>
                        <tbody>
                         <c:forEach items="${list }" var="DTO" begin="0" end="5">
                            <tr>
                                <td width="440px;">${DTO.tit }</td>
                                <td><fmt:formatDate value="${DTO.regdate }" pattern="YYYY-MM-dd"/></td>
                            </tr>
                         </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>

        <div class="main_customer">
            <div class="layout">
                <div class="info">
                    <h2>Contact Us</h2>
                    <p class="txt">경기도 파주시 문산읍 방촌로 1675-20 (당동리 905) 무척조은병원</p>
                    <dl class="dl_style1">
                        <dt><i class="icon"><img src="${path }/resources/img/info_icon01.png" alt=""></i>전화</dt>
                        <dd>010-4191-1611</dd><br>
                        <dt><i class="icon"><img src="${path }/resources/img/info_icon02.png" alt=""></i>이메일</dt>
                        <dd>greekr4@naver.com</dd><br>
                        <dt><i class="icon"><img src="${path }/resources/img/info_icon03.png" alt=""></i>카카오톡</dt>
                        <dd>무척조은병원</dd><br>
                        <dt><i class="icon"><img src="${path }/resources/img/info_icon04.png" alt=""></i>진료시간</dt>
                        <dd>
                            <p><span style="margin-right:10px;">평&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일</span>AM 10:00 ~ PM 07:00 <em
                                    class="p_color1">(수요일 휴진)</em></p>
                            <p><span style="margin-right:10px;">토&nbsp;&nbsp;요&nbsp;&nbsp;일</span><em class="p_color2">AM 10:00 ~ PM 03:00(점심시간 없이
                                    진료)</em></p>
                            <p><span style="margin-right:10px;">점심 평일</span>PM 01:00 ~ PM 02:00</p>
                        </dd>
                    </dl>
                </div>
                <div class="location" style="height: 450px;">

<!-- 1. 지도 노드 -->
<div id="daumRoughmapContainer1651298641677" class="root_daum_roughmap root_daum_roughmap_landing"></div>

<!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1651298641677",
		"key" : "2a2gu",
		"mapWidth" : "600",
		"mapHeight" : "380"
	}).render();
</script>
                </div>
            </div>
        </div>

    </div>

    <footer id="footer">
	<%@ include file="/resources/html/ft.jsp" %>
    </footer>

    <script>
        $(document).ready(function () {
/*             $("#header").load("./imclude/hd.html");
            $("#footer").load("./imclude/ft.html"); */
            

            var subpos = 0;


            $(".sub_next_btn").click(function () {
                if (subpos < 3) sub_right();
            });

            $(".sub_prev_btn").click(function () {
                if (subpos > 0) sub_left();
            });

            function sub_right() {
                $(".sub_item").animate({ left: "-=288" }, 500);
                subpos++
            }
            function sub_left() {
                $(".sub_item").animate({ left: "+=288" }, 500);
                subpos--
            }

            function slider_ck() {
                var f1 = $(".main_img").eq(0).css("display");
                var f2 = $(".main_img").eq(1).css("display");
                var f3 = $(".main_img").eq(2).css("display");
                var fs = 0;
                if (f1 === "block") {
                    fs = 1;
                } else if (f2 === "block") {
                    fs = 2;
                } else if (f3 === "block") {
                    fs = 3;
                }

                if (fs === 1) {
                    $(".slider_btn").eq(0).css("background-color", "black");
                    $(".slider_btn").eq(1).css("background-color", "#777");
                    $(".slider_btn").eq(2).css("background-color", "#777");
                } else if (fs === 2) {
                    $(".slider_btn").eq(1).css("background-color", "black");
                    $(".slider_btn").eq(0).css("background-color", "#777");
                    $(".slider_btn").eq(2).css("background-color", "#777");
                } else if (fs === 3) {
                    $(".slider_btn").eq(2).css("background-color", "black");
                    $(".slider_btn").eq(1).css("background-color", "#777");
                    $(".slider_btn").eq(0).css("background-color", "#777");
                }

            }


            $(".main_img").eq(1).fadeOut();
            $(".main_img").eq(2).fadeOut();
            slider_ck();

            var interval = setInterval(function () {
                next();
            }, 7000);



            $(".prev_btn").click(function () {
                clearInterval(interval);
                prev();
            });

            $(".next_btn").click(function () {
                clearInterval(interval);
                next();
            });


            $(".slider_btn").eq(0).click(function () {
                clearInterval(interval);
                $(".main_img").eq(1).fadeOut(1000).delay(1000);
                $(".main_img").eq(2).fadeOut(1000).delay(1000);
                $(".main_img").eq(0).delay(1000).fadeIn(1000);
                $(".slider_btn").eq(0).css("background-color", "black");
                $(".slider_btn").eq(1).css("background-color", "#777");
                $(".slider_btn").eq(2).css("background-color", "#777");
            });

            $(".slider_btn").eq(1).click(function () {
                clearInterval(interval);
                $(".main_img").eq(0).fadeOut(1000).delay(1000);
                $(".main_img").eq(2).fadeOut(1000).delay(1000);
                $(".main_img").eq(1).delay(1000).fadeIn(1000);
                $(".slider_btn").eq(1).css("background-color", "black");
                $(".slider_btn").eq(0).css("background-color", "#777");
                $(".slider_btn").eq(2).css("background-color", "#777");
            });

            $(".slider_btn").eq(2).click(function () {
                clearInterval(interval);
                $(".main_img").eq(0).fadeOut(1000).delay(1000);
                $(".main_img").eq(1).fadeOut(1000).delay(1000);
                $(".main_img").eq(2).delay(1000).fadeIn(1000);
                $(".slider_btn").eq(2).css("background-color", "black");
                $(".slider_btn").eq(0).css("background-color", "#777");
                $(".slider_btn").eq(1).css("background-color", "#777");
            });




            function prev() {

                var f1 = $(".main_img").eq(0).css("display");
                var f2 = $(".main_img").eq(1).css("display");
                var f3 = $(".main_img").eq(2).css("display");
                var fs = 0;

                if (f1 === "block") {
                    fs = 1;
                } else if (f2 === "block") {
                    fs = 2;
                } else if (f3 === "block") {
                    fs = 3;
                }

                switch (fs) {
                    case 1:
                        $(".main_img").eq(0).fadeOut(1000).delay(1000);
                        $(".main_img").eq(2).delay(1000).fadeIn(1000);
                        $(".slider_btn").eq(2).css("background-color", "black");
                        $(".slider_btn").eq(1).css("background-color", "#777");
                        $(".slider_btn").eq(0).css("background-color", "#777");
                        break;
                    case 2:
                        $(".main_img").eq(1).fadeOut(1000).delay(1000);
                        $(".main_img").eq(0).delay(1000).fadeIn(1000);
                        $(".slider_btn").eq(0).css("background-color", "black");
                        $(".slider_btn").eq(1).css("background-color", "#777");
                        $(".slider_btn").eq(2).css("background-color", "#777");
                        break;
                    case 3:
                        $(".main_img").eq(2).fadeOut(1000).delay(1000);
                        $(".main_img").eq(1).delay(1000).fadeIn(1000);
                        $(".slider_btn").eq(1).css("background-color", "black");
                        $(".slider_btn").eq(0).css("background-color", "#777");
                        $(".slider_btn").eq(2).css("background-color", "#777");
                        break;

                }

            }

            function next() {

                var f1 = $(".main_img").eq(0).css("display");
                var f2 = $(".main_img").eq(1).css("display");
                var f3 = $(".main_img").eq(2).css("display");
                var fs = 0;

                if (f1 === "block") {
                    fs = 1;
                } else if (f2 === "block") {
                    fs = 2;
                } else if (f3 === "block") {
                    fs = 3;
                }

                switch (fs) {
                    case 1:
                        $(".main_img").eq(0).fadeOut(1000).delay(1000);
                        $(".main_img").eq(1).delay(1000).fadeIn(1000);
                        $(".slider_btn").eq(1).css("background-color", "black");
                        $(".slider_btn").eq(0).css("background-color", "#777");
                        $(".slider_btn").eq(2).css("background-color", "#777");
                        break;
                    case 2:
                        $(".main_img").eq(1).fadeOut(1000).delay(1000);
                        $(".main_img").eq(2).delay(1000).fadeIn(1000);
                        $(".slider_btn").eq(2).css("background-color", "black");
                        $(".slider_btn").eq(1).css("background-color", "#777");
                        $(".slider_btn").eq(0).css("background-color", "#777");
                        break;
                    case 3:
                        $(".main_img").eq(2).fadeOut(1000).delay(1000);
                        $(".main_img").eq(0).delay(1000).fadeIn(1000);
                        $(".slider_btn").eq(0).css("background-color", "black");
                        $(".slider_btn").eq(1).css("background-color", "#777");
                        $(".slider_btn").eq(2).css("background-color", "#777");
                        break;

                }
            }



        });






    </script>
    

</body>
</html>
