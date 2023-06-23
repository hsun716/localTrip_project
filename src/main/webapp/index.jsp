<%@page import="com.localtrip.www.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="index.css" rel="stylesheet" type="text/css">
<script src="js/jquery-3.6.4.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link href="css/index.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>LocalTrip</title>
</head>
<body>
	<header>
		<div id="header_right">
			<div class="info_wrap">
				<c:choose>
					<c:when test="${userInfo eq null}">
						<a href="member/login.do" class="loginLine">로그인</a>
						<a href="member/memberRegister.do">회원가입</a>
					</c:when>
					<c:when test="${userInfo ne null }">
                        ${userInfo.id } 님
                        <a href="logout.do" class="loginLine">로그아웃</a>
                        <a href="member/memberModify.do">회원정보수정</a>
					</c:when>
				</c:choose>
			</div>
		</div>
		<div id="header_left">
			<div class="logo">
				<a href="#home"><img src="image/logo_2.png"></a>
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
	<div id="menu">
		<ul class="menuUl">
			<li class="mainMenu"><a class="a" href="#">지역</a>
				<ul class="bigSubUl">
					<li><a href="#">서울</a></li>
					<li><a href="#">인천</a></li>
					<li><a href="#">대전</a></li>
					<li><a href="#">대구</a></li>
					<li><a href="#">광주</a></li>
					<li><a href="#">부산</a></li>
					<li><a href="#">울산</a></li>
					<li><a href="#">세종</a></li>
					<li><a href="#">경기</a></li>
					<li><a href="#">강원</a></li>
					<li><a href="#">충북</a></li>
					<li><a href="#">충남</a></li>
					<li><a href="#">경북</a></li>
					<li><a href="#">경남</a></li>
					<li><a href="#">전북</a></li>
					<li><a href="#">전남</a></li>
					<li><a href="#">제주</a></li>
				</ul></li>
			<li class="mainMenu"><a href="#">숙소</a>
				<ul class="subUl">
					<li><a href="#">SUB_MENU</a></li>
					<li><a href="#">SUB_MENU2</a></li>
					<li><a href="#">SUB_MENU3</a></li>
				</ul></li>
			<li class="mainMenu"><a href="#">먹거리</a>
				<ul class="subUl">
					<li><a href="#">한식</a></li>
					<li><a href="#">중식</a></li>
					<li><a href="#">일식</a></li>
					<li><a href="#">양식</a></li>
				</ul></li>
			<li class="mainMenu"><a href="board/board.jsp">여행이야기</a></li>
		</ul>
	</div>
	<div id="slider_wrap">
		<div class="cont">
			<img src="image/soeul.jpg">
		</div>
		<div class="cont">
			<img src="image/busan.jpg">
		</div>
		<div class="cont">
			<img src="image/jeju.png">
		</div>
		<div class="cont">
			<img src="image/sokcho.jpg">
		</div>
		<div class="cont">
			<img src="image/Incheon.jpg">
		</div>
		<div class="cont">
			<img src="image/lisan.jpg">
		</div>
		<div class="cont">
			<img src="image/asan.jpg">
		</div>
	</div>
	<script src="js/index.js"></script>
</body>
</html>