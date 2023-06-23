<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../css/memberModify.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>회원정보수정</title>
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
                                <h4 class="join_title">회원정보수정</h4>
                            </div>
                            <div class="edit_wrap">
                                <div class="form">
                                    <label class="title">아이디(이메일주소)</label>
                                    <div class="ipt_box inner">
                                        <input type="email" name="id" value="${userInfo.id}" readonly>
                                    </div>
                                </div>
                                <div class="form">
                                    <label class="title">비밀번호</label>
                                    <div class="ipt_box inner">
                                        <input type="password" name="pw" placeholder="비밀번호 입력">
                                    </div>
                                    <div class="ipt_box inner">
                                        <input type="password" name="pwOk" placeholder="비밀번호 확인">
                                    </div>
                                </div>
                                <div class="form">
                                    <label class="title">이름</label>
                                    <div class="ipt_box inner">
                                        <input type="text" name="name" value="${userInfo.name}" readonly>
                                    </div>
                                </div>
                                <div class="form">
                                    <label class="title">생년월일</label>
                                    <div class="ipt_box inner">
                                        <input type="text" name="birth" value="${userInfo.birth}" readonly>
                                    </div>
                                </div>
                                <div class="form">
                                    <label class="title">휴대폰 번호</label>
                                    <div class="ipt_box inner">
                                        <input type="text" name="phoneNum" placeholder="'-'없이 숫자만 입력"
                                                value="${userInfo.phoneNum}" maxlength="13">
                                    </div>
                                </div>
                                <div class="form">
                                    <label class="title">성별</label>
                                    <div class="radio_grp">
                                        <div class="radios">
                                            <input type="radio" id="M" name="gender" value="M" ${userInfo.gender eq 'M' ? 'checked':''}>
                                            <label class="btn md" for="M">남성</label>
                                        </div>
                                        <div class="radios">
                                            <input type="radio" id="F" name="gender" value="F" <c:if test="${userInfo.gender eq ''}"> checked </c:if>>
                                            <label class="btn md" for="F">여성</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="btn_wrap">
                                <button type="submit" class="btn primary">수정</button>
                                <button type="reset" class="btn primary">취소</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</body>

</html>