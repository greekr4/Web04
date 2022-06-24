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

    <title>운영자</title>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="${path}/resources/css/normalize.css">
    <link rel="stylesheet" href="${path}/resources/css/common.css">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/gh/xpressengine/xeicon@2.3.1/xeicon.min.css">
    <style>
    .chat_box{
    width: 500px;
    margin: 0 auto;
    }
	button{
    height: 25px;
    width: 50px;
    padding-top: 2px;
    margin-bottom: 10px;
    margin-left: 10px;
	}
	.manager{}
	
	.you{
	float: right;
	}
	.msg_line{
	clear: both;
	}
	.chat_sendbox{
	clear: both;
	}
	.chat_sendbox input{
	width: 87%;
	}
    </style>
</head>
<body>
    <header id="header">
	<%@ include file="/resources/html/hd.jsp" %>
    </header>

    <div id="ct">
        <div class="ct_wrap">
            ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
           <div class="chat_box">
           	<div class="chat_msgbox">
           	 <div class="msg_item">

           
           	 </div>
           	
           	</div>
            <div class="chat_sendbox">
            <form action="send2" method="post">
            <input type="hidden" name="sendid" value="${sid }">
            <input type="hidden" name="reqid" value="jygochu">
            <input type="text" name="cdetail" autofocus>
            <button>전송</button>
            </form>
            </div>
           
           </div>
            
        </div>

    </div>

<script type="text/javascript">
setInterval(() => {
	test();
}, 1000);
test();
function test() {

$.ajax({				
	url : "${path }/chat/json?reqid=${sid }", // MemberJSONCtrl의 JSONObject 값을 가져옴
	dataType : "json", // 데이터 타입을 json
	contentType: 'application/x-www-form-urlencoded; charset=euc-kr', // UTF-8처리
	cache : false, // true : 새로 고침 동작을 하지 않고, 저장된 캐시에서 불러오게됨, false:새로 불러옴 
	success : function(data) {
				var key = Object.keys(data["Chatlist"][0]); // 키값(항목명)을 가져옴		
				$(".msg_item").empty();
				$.each(data.Chatlist, function(index, Chatlist) { // 이치를 써서 모든 데이터들을 배열에 넣음												
					var items = [];		
					if(Chatlist.sendid != 'admin2'){
					items.push("<div class='msg_line'><p class='manager'>" + Chatlist.sendid + " > "+ Chatlist.cdetail +"</p></div>");
					}else if(Chatlist.sendid == 'admin2'){
					items.push("<div class='msg_line'><p class='you'>"+ Chatlist.cdetail +" < " + Chatlist.sendid + "</p></div>");
					
					}
					$("<div>", {							
						html : items // 티알에 붙임,						
					}).appendTo(".msg_item"); // 			
				});//each끝				
			}			
	});	
	 
}
</script>


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
