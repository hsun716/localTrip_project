<%@page import="com.localtrip.www.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../css/review.css" rel="stylesheet" type="text/css">
    <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
    <script src="https://unpkg.com/imagesloaded@5/imagesloaded.pkgd.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <title>review</title>
</head>
<body>
	<form method = "post" action="search.do">
	    <div class="re_header">
	        <span>검색</span>
	        <input type="text" class="search" name="searchKeyword">
	        <input type="submit" class="search_btn" value="검색">
	        <c:if test="${userInfo ne null}">
				<a href="re_Write.html">리뷰작성</a>
			</c:if>
		</div>
	</form>
    <div id="re_container">
        <div class="masonry">
            <div class="item">
                <img src="https://via.placeholder.com/300.jpg" alt="300 * 300 size image">
                <button class="like_btn" id="likeButton" onclick="toggleLike()">🤍</button>
                <div class="desc">
                	<h3>제목</h3>
                </div>
            </div>
        </div>
        <button id="load-more">더보기</button>
    </div>

    <div id="popup" class="popup">
        <div class="desc">
            <span class="close-popup" onclick="closePopup()">&times;</span>
                <label>제목</label>
                <div class="ipt_wrap">
                    <input type="text" class="ipt_box" name="title" id="title">
                </div>
                <label>작성자</label>
                <div class="ipt_wrap">
                    <input type="text" class="ipt_box" name="id" id="id">
                </div>
                <label>이미지 파일</label>
                <div class="file_wrap">
		            <img src="https://via.placeholder.com/300.jpg" alt="300 * 300 size image">
                	<div class="file-list"></div>
                </div>
                <label>내용</label>
                <div class="txa_wrap">
                    <textarea type="text" name="contents" id="contents"></textarea>
                </div>
        </div>
    </div>

    <div id="overlay" class="overlay"></div>

    <script src="../js/jquery-3.6.4.js"></script>
    <script src="../js/review.js"></script>
</body>
</html>