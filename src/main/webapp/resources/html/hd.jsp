<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" %>
<%response.setCharacterEncoding("utf-8"); 
HttpSession session = request.getSession();
request.setAttribute("sid", session.getAttribute("sid"));
%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<div class="header_wrap">
    <div class="header_top">
        <h1>연세디에이지는 환자중심의 진료환경을 지향합니다.</h1>
    </div>
    <div class="util_wrap">
    <div class="util_menu">
        <ul>
            <li><a href="./agreement.html">회원가입</a></li>
            <c:if test="${sid==null }">
            <li><a href="${path}/member/loginForm">로그인</a></li>
            </c:if>
            <c:if test="${sid!=null }">
            <li><a href="${path}/member/logout">로그아웃</a></li>
            <li><a href="${path}/member/updateForm?mid=${sid }">${sid }님 변경</a></li>
            </c:if>
            <li><a href="${path}/board/list">글목록보기</a></li>
            <li><a href="${path}/member/memberlist">회원목록보기</a></li>
        </ul>
    </div>
    </div>
    <div class="header_bottom" >
        <div class="logo"><a href="${path}"><img src="${path }/resources/img/header_logo.png" alt="로고"></a></div>
        <ul>
            <a href="">메뉴1</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="./sub1.html#page1">메뉴-1</a></li>
                <li><a href="./sub1.html#page2">메뉴-2</a></li>
                <li><a href="./sub1.html#page3">메뉴-3</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">메뉴2</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="./sub1.html#page1">메뉴-1</a></li>
                <li><a href="./sub1.html#page2">메뉴-2</a></li>
                <li><a href="./sub1.html#page3">메뉴-3</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">메뉴3</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="./sub1.html#page1">메뉴-1</a></li>
                <li><a href="./sub1.html#page2">메뉴-2</a></li>
                <li><a href="./sub1.html#page3">메뉴-3</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">메뉴4</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="./sub1.html#page1">메뉴-1</a></li>
                <li><a href="./sub1.html#page2">메뉴-2</a></li>
                <li><a href="./sub1.html#page3">메뉴-3</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">메뉴5</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="./sub1.html#page1">메뉴-1</a></li>
                <li><a href="./sub1.html#page2">메뉴-2</a></li>
                <li><a href="./sub1.html#page3">메뉴-3</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">메뉴6</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="./sub1.html#page1">메뉴-1</a></li>
                <li><a href="./sub1.html#page2">메뉴-2</a></li>
                <li><a href="./sub1.html#page3">메뉴-3</a></li>
                </div>
            </div>
        </ul>
        <ul>
            <a href="">메뉴7</a>
            <div class="submenu_wrap">
                <div class="submenu">
                <li><a href="./sub1.html#page1">메뉴-1</a></li>
                <li><a href="./sub1.html#page2">메뉴-2</a></li>
                <li><a href="./sub1.html#page3">메뉴-3</a></li>
                </div>
            </div>
        </ul>
    </div>
</div>