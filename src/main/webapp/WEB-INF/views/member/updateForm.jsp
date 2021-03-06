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
            <form class="join" id="join" action="update" method="post">
              <input type="text" placeholder="id" name="mid" id="mid" pattern="^([a-z0-9]){6,20}$" value="${DTO.mid }" readonly/>
              <input type="password" placeholder="password" name="mpw" id="mpw" required/>
              <input type="password" placeholder="password_ck" name="mpw2" id="mpw2" required/>
              <input type="text" placeholder="name" name="mname" id="mname" value="${DTO.mname }" readonly/>
              <input type="text" placeholder="nickname" name="mnick" id="mnick" value="${DTO.mnick }"required/>
              <input type="text" placeholder="tel" name="mtel" id="mtel" value="${DTO.mtel }" required/>
              <input type="text" placeholder="address" name="maddress" id="maddress"  onclick="findAddr();"  value="${DTO.maddress }" readonly required/>
              <input type="text" placeholder="zip_code" name="postcode" id="postcode" required/>
              <input type="text" placeholder="detail_address" name="maddress2" id="maddress2" required/>
              <input type="text" placeholder="email" name="memail" id="memail" value="${DTO.memail }" required/>
              <input type="hidden" id="mpoint" name="mpoint" value="0">
              <input type="hidden" id="mgrade" name="mpoint" value="0">
              <button type="submit" onclick="">join</button>
            </form>
            <script type="text/javascript">
    function findAddr() {
			  new daum.Postcode({
		            oncomplete: function(data) {
		                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

		                // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
		                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
		                var addr = ''; // ?????? ??????
		                var extraAddr = ''; // ???????????? ??????

		                //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
		                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
		                    addr = data.roadAddress;
		                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
		                    addr = data.jibunAddress;
		                }

		                // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
		                if(data.userSelectedType === 'R'){
		                    // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
		                    // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
		                    if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
		                        extraAddr += data.bname;
		                    }
		                    // ???????????? ??????, ??????????????? ?????? ????????????.
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
		                    if(extraAddr !== ''){
		                        extraAddr = ' (' + extraAddr + ')';
		                    }
		                    // ????????? ??????????????? ?????? ????????? ?????????.
		                   
		                
		                } else {
		                   
		                }

		                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
		                document.getElementById("postcode").value = data.zonecode;	//????????????
		                document.getElementById("maddress").value = addr;				//??????1
		                // ????????? ???????????? ????????? ????????????.
		                document.getElementById("maddress2").focus();					//??????2(????????????)
		            }
		        }).open();
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
