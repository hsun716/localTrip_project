<%@page import="com.localtrip.www.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../css/re_write.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <title>리뷰쓰기</title>
</head>
<body>
	<header>
		<div id="header_left">
			<div class="logo">
				<a href="../index.jsp"><img src="../image/logo_2.png"></a>
			</div>
		</div>
	</header>
    <hr class="widthHr">
    <h1><img src="../icon/icons8-연필-48.png">리뷰 쓰기</h1>

    <div class="bg">
        <div id="writeForm">
            <form method="post" action="re_writeOK.do" onsubmit="return false;" enctype="multipart/form-data">
                <label>작성자</label>
                <div class="ipt_wrap">
                    <input type="text" class="ipt_box" name="id" id="id">
                </div>
                <label>제목</label>
                <div class="ipt_wrap">
                    <input type="text" class="ipt_box" name="title" id="title">
                </div>
                <label>이미지 파일</label>
                <div class="file_wrap">
                        <label class="btn file_btn" for="file">파일</label>
                        <input type="file" id="file" onchange="addFile(this);" multiple />
                        <div class="file-list"></div>
                </div>
                <label>내용</label>
                <div class="txa_wrap">
                    <textarea type="text" name="contents" id="contents"></textarea>
                </div>
                <div class="writeForm_btn">
                    <input class="btn" type="submit" value="작성">
                    <input class="btn" type="reset" id="go-back" value="취소">
                </div>
            </form>
        </div>
    </div>
    <script src="../js/jquery-3.6.4.js"></script>
    <script src="../js/re_write.js"></script>
</body>
</html>