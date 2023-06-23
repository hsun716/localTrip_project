<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../css/join.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>회원가입</title>
</head>
<body>
<form action=memberJoinOK.do method="post">
    <div class="wrap none_pt">
        <div class="main gray_pt none_ptb">
            <div class="section">
                <div class="container form">
                    <div class="form_wrap">
                        <div class="form_logo">
                            <h1 class="logo"><img src="../image/logo_2.png"></h1>
                        </div>
                        <div class="join_wrap">
                            <div class="inner_cont">
                                <h4 class="join_title">회원가입</h4>
                            </div>
                            <div class="edit_wrap">
                                <div class="form">
                                    <label class="title">아이디</label>
                                    <div class="ipt_box inner">
                                        <input type="text" name="id" placeholder="아이디 입력" class="input_id">
                                        <button type="button" name="checkId" class="btn primary">중복확인</button>
                                    </div>
                                </div>
                                <div class="form">
                                    <label class="title">비밀번호</label>
                                    <div class="ipt_box inner">
                                        <input type="password" name="pw" placeholder="비밀번호 입력" class="input_pw">
                                    </div>
                                    <div class="ipt_box inner">
                                        <input type="password" name="pwOk" placeholder="비밀번호 확인" class="input_pwOk">
                                    </div>
                                </div>
                                <div class="form">
                                    <label class="title">이름</label>
                                    <div class="ipt_box inner">
                                        <input type="text" name="name" placeholder="이름 입력">
                                    </div>
                                </div>
                                <div class="form">
                                    <label class="title">생년월일</label>
                                    <div class="ipt_box inner">
                                        <input type="text" name="birth" placeholder="생년월일 입력(예:19900101)">
                                    </div>
                                </div>
                                <div class="form">
                                    <label class="title">휴대폰 번호</label>
                                    <div class="ipt_box inner">
                                        <input type="text" name="phoneNum" placeholder="'-'없이 숫자만 입력" maxlength="13">
                                    </div>
                                </div>
                                <div class="form">
                                    <label class="title">성별</label>
                                    <div class="radio_grp">
                                        <div class="radios">
                                            <input type="radio" id="M" name="gender" value="M">
                                            <label class="btn md" for="M">남성</label>
                                        </div>
                                        <div class="radios">
                                            <input type="radio" id="F" name="gender" value="F">
                                            <label class="btn md" for="F">여성</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="btn_wrap">
                                <button type="submit" class="btn primary full">가입하기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<script src="js/jquery-3.6.4.js"></script>
<script src="js/memberJoin.js"></script>
</body>
</html>