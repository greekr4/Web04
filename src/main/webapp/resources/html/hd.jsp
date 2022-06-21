<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<c:set var="path" value="${pageContext.request.contextPath}"/>

<div class="header_wrap">
    <div class="header_top">
        <h1>무척조은병원은 환자중심의 진료환경을 지향합니다.</h1>
    </div>
    <div class="util_wrap">
    <div class="util_menu">
        <ul>
            
            <c:if test="${sid==null }">
            <li><a href="${path}/member/agreement">회원가입</a></li>
            <li><a href="${path}/member/loginForm">로그인</a></li>
            </c:if>
            <c:if test="${sid!=null }">
            <li><a href="${path}/member/logout">로그아웃</a></li>
            <li><a href="${path}/member/updateForm?mid=${sid }">${sid }님</a></li>
            </c:if>
            <c:if test="${sid eq 'admin2' }">
            <li><a href="${path}/board/list">글목록보기</a></li>
            <li><a href="${path}/member/memberlist">회원목록보기</a></li>
            </c:if>
        </ul>
    </div>
    </div>
    <div class="header_bottom" >
        <div class="logo"><a href="${path}"><img src="${path }/resources/img/header_logo.png" alt="로고"></a></div>
        <ul>
            <a href="${path }/sub1#page1">병원소개</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <a href="${path }/sub1#page1" onclick="javascript:window.scrollTo(0,0)"><li>병원 소개</li></a>
                <a href="${path }/sub1#page2"><li>의료진 소개</li></a>
                <a href="${path }/sub1#page3"><li>장비 소개</li></a>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">관절센터</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <a href="${path }/sub2#page1"><li>관절치료센터 소개</li></a>
                <a href="${path }/sub2#page2"><li>어깨질환</li></a>
                <a href="${path }/sub2#page3"><li>무릎질환</li></a>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">척추센터</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <a href="${path }/sub3#page1"><li>척추치료센터 소개</li></a>
                <a href="${path }/sub3#page1"><li>목디스크</li></a>
                <a href="${path }/sub3#page1"><li>허리디스크</li></a>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">도수재활센터</a>
            <div class="submenu_wrap">
                <div class="submenu" style="left:-42px;">
                <a href="${path }/sub4#page1"><li>도수재활센터 소개</li></a>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">외상센터</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <a href="${path }/sub5#page1"><li>상지골절</li></a>
                <a href="${path }/sub5#page1"><li>하지골절</li></a>
                <a href="${path }/sub5#page1"><li>척추골절</li></a>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">검진센터</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <a href="${path }/sub6#page1"><li>검진센터</li></a>
                <a href="${path }/sub6#page1"><li>일반내과질환</li></a>
                <a href="${path }/sub6#page1"><li>성인병클리닉</li></a>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">커뮤니티</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <a href="${path }/sub7#page1"><li>공지사항</li></a>
                <a href="${path }/sub7#page1"><li>자유게시판</li></a>
                <a href="${path }/sub7#page1"><li>뉴스</li></a>
                </div>
            </div>
        </ul>
    </div>
</div>