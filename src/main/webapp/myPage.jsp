<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/index.css" rel="stylesheet" type="text/css">
<title>마이페이지</title>
</head>
<body>
	<header>
		<div id="header_right">
			<div class="info_wrap">
				<c:choose>
					<c:when test="${userInfo eq null}">
						<a href="member/login.jsp" class="loginLine">로그인</a>
						<a href="member/memberRegister.jsp">회원가입</a>
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
		</div>
	</header>
</body>
</html>