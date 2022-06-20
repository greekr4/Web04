<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" %>
<%response.setCharacterEncoding("utf-8"); %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="${path}/resources/css/normalize.css">
    <link rel="stylesheet" href="${path}/resources/css/common.css">
	<title>HomeZZ</title>
	    <style>
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  margin-top:100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}


.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #343a40;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #444a50;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}

.form .message a {
  color: #343a40;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
    </style>
</head>
<body>
    <header id="header">
	<%@ include file="/resources/html/hd.jsp" %>
    </header>
    
<div id="ct">
       <div class="loginbox">
            <div class="join-page">
          <div class="form">
            <form class="join" id="join" action="join" method="post">
              <input type="text" placeholder="id" name="mid" id="mid" pattern="^([a-z0-9]){6,20}$" required/>
              <button type="button" onclick="idck();">IDCK</button>
              <input type="password" placeholder="password" name="mpw" id="mpw" required/>
              <input type="password" placeholder="password_ck" name="mpw2" id="mpw2" required/>
              <input type="text" placeholder="name" name="mname" id="mname" required/>
              <input type="text" placeholder="nickname" name="mnick" id="mnick" required/>
              <input type="text" placeholder="tel" name="mtel" id="mtel" required/>
              <input type="text" placeholder="address" name="maddress" id="maddress"  onclick="findAddr();" readonly required/>
              <input type="text" placeholder="zip_code" name="postcode" id="postcode" required/>
              <input type="text" placeholder="detail_address" name="maddress2" id="maddress2" required/>
              <input type="text" placeholder="email" name="memail" id="memail" required/>
              <input type="hidden" id="mpoint" name="mpoint" value="0">
              <input type="hidden" id="mgrade" name="mpoint" value="0">
              <button type="submit" onclick="">join</button>
            </form>
            <script type="text/javascript">
    function findAddr() {
			  new daum.Postcode({
		            oncomplete: function(data) {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var addr = ''; // 주소 변수
		                var extraAddr = ''; // 참고항목 변수

		                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    addr = data.roadAddress;
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    addr = data.jibunAddress;
		                }

		                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
		                if(data.userSelectedType === 'R'){
		                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있고, 공동주택일 경우 추가한다.
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                    if(extraAddr !== ''){
		                        extraAddr = ' (' + extraAddr + ')';
		                    }
		                    // 조합된 참고항목을 해당 필드에 넣는다.
		                   
		                
		                } else {
		                   
		                }

		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById("postcode").value = data.zonecode;	//우편번호
		                document.getElementById("maddress").value = addr;				//주소1
		                // 커서를 상세주소 필드로 이동한다.
		                document.getElementById("maddress2").focus();					//주소2(상세주소)
		            }
		        }).open();
    }
            
            
   
            function idck() {
     
            var ck_id = document.getElementById("mid").value;
            if (ck_id != ''){
            	
            var xPos = (document.body.offsetWidth/2) - (300/2); // 가운데 정렬
            var yPos = (document.body.offsetHeight/2) - (200/2);
            
            var href = './IDCK?mid='+ck_id
            window.open(href, "pop_name", "width=300, height=200, left="+xPos+", top="+yPos+", menubar=yes, status=yes, titlebar=yes, resizable=yes");
            }else{alert('제대로 입력바람');}
            }
            
            function join(){
   
                
            }
            
            
            </script>
          </div>
        </div>
        </div>
    </div>

     <footer id="footer">
	<%@ include file="/resources/html/ft.jsp" %>
    </footer>
</body>
</html>
