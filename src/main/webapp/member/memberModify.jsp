<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../css/modifyCss.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>회원정보수정</title>
</head>
<body>
	<div class="main">
		<div class="container">
			<div class="form_wrap">
				<div class="logo_wrap">
					<h1><img src="../image/logo_2.png"></h1>
				</div>
				<div class="rgt_wrap">
					<label class="big_title">회원정보수정</label>
					<form name="modifyForm" action="memberModifyOK.do" method="post">
						<label class="title">아이디</label>
						<div class="ipt_wrap" id="gray">
							<input type="text" class="ipt_box" name="id" id="id" value="${userInfo.id }" readonly> 
						</div>
						<label class="title">비밀번호</label>
						<div class="ipt_wrap">
							<input type="password" class="ipt_box" name="pw" id="pw" placeholder="비밀번호 입력">
						</div>
						<label class="title">비밀번호 확인</label>
						<div class="ipt_wrap">
							<input type="password" class="ipt_box" name="pw2" id="pw2" placeholder="비밀번호 재입력">
						</div>
						<label class="title">이름</label>
						<div class="ipt_wrap" id="gray">
							<input type="text" class="ipt_box" name="name" id="name" value="${userInfo.name}" readonly>
						</div>
						<label class="title">생년월일 <span>(예:19980101)</span></label>
						<div class="ipt_wrap" id="gray">
							<input type="text" class="ipt_box" name="birth" id="birth" value="${userInfo.birth }" readonly>
						</div>
						<label class="title">전화번호 <span>(예:01012345678)</span></label>
						<div class="ipt_wrap">
							<input type="text" class="ipt_box" name="phoneNum" id="phoneNum" value="${userInfo.phoneNum }">
						</div>
						<label class="title">성별</label>
						<div class="radio_wrap">
							<div class="radios">
								<input class="radio_btn" type="radio" id="male" name="gender"
									value="male" ${userInfo.gender eq 'male' ? 'checked':''} disabled="disabled">
								<label class="btn radio" for="male">남성</label>
							</div>
							<div class="radios">
								<input class="radio_btn" type="radio" id="female" name="gender" value="female"
									<c:if test="${userInfo.gender eq 'female'}"> checked </c:if> disabled="disabled">
								<label class="btn radio" for="female">여성</label>
							</div>
						</div>
						<div class="btn_wrap">
							<input class="btn rgt" type="button" onclick="modifyForm_check()" value="수정하기">
							<input class="btn rgt" type="reset" id="go-back" value="취소">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="../js/jquery-3.6.4.js"></script>
	<script src="../js/memberModify.js"></script>
</body>
</html>