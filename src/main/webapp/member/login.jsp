<%@page import="com.localtrip.www.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko-kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../css/loginCss.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>로그인</title>
</head>
<body>
	<div class="main">
		<div class="container">
			<div class="form_wrap">
				<div class="logo_wrap">
					<h1><img src="../image/logo_2.png"></h1>
				</div>
				<div class="login_form">
					<label class="title">로그인</label>
					<form name="loginForm" action="loginOK.do" method="post">
						<div class="ipt_wrap">
							<input type="text" class="ipt_box" name="id" id="id" placeholder="아이디 입력">
						</div>
						<div class="ipt_wrap">
							<input type="password" class="ipt_box" name="pw" id="pw" placeholder="비밀번호 입력">
							</div>
						<div class="login_btn">
							<input type="button" onclick="loginForm_check()" value="로그인">
						</div>
					</form>
				</div>
				<div class="rgt_link">
					<a href="memberRegister.do">회원가입</a><br/>
				</div>
			</div>
		</div>
	</div>
	<script src="../js/jquery-3.6.4.js"></script>
	<script src="../js/login.js"></script>
</body>
</html>