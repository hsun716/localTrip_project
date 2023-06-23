<%@page import="com.localtrip.www.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../css/board.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <title>여행이야기</title>
</head>
<body>
	<header>
		<div id="header_right">
			<div class="info_wrap">
				<c:choose>
					<c:when test="${userInfo eq null}">
						<a href="../member/login.jsp" class="loginLine">로그인</a>
						<a href="../member/memberRegister.do">회원가입</a>
					</c:when>
					<c:when test="${userInfo ne null }">
                        ${userInfo.id } 님
                        <a href="../logout.do" class="loginLine">로그아웃</a>
                        <a href="../member/memberModify.do">회원정보수정</a>
					</c:when>
				</c:choose>
			</div>
		</div>
		<div id="header_left">
			<div class="logo">
				<a href="../index.jsp"><img src="../image/logo_2.png"></a>
			</div>
			<div class="search_wrap">
				<div class="search_input">
					<div>
						<input type="search" placeholder="여행 어디로 갈까?">
						<button type="button">
							<i class="ico"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</header>
	<hr class="widthHr">
	<h1><img src="../icon/icons8-도서-48.png">여행이야기</h1>
	<div id="container">
		<ul>
			<li><a href="review.jsp" class="menu-item">리뷰</a></li>
			<li><a href="community.html" class="menu-item">커뮤니티</a></li>
		</ul>
		<main>
			<div id="contents"></div>
		</main>
	</div>
	<script src="../js/jquery-3.6.4.js"></script>
	<script src="../js/board.js"></script>
</body>
</html>