<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../css/login.css" rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<title>로그인</title>
</head>
<body>
	<div class="wrap none_pt">
		<div class="main gray_pt none_ptb">
			<div class="section">
				<div class="container form">
					<div class="form_wrap">
						<div class="form_logo">
							<h1 class="logo">
								<img src="../image/logo_2.png">
							</h1>
						</div>
						<div class="login_wrap">
							<form action="login.do" method="post">
								<div class="inner_cont">
									<div class="member_login">
										<div class="form">
											<label class="title">로그인</label>
											<div class="ico_form">
												<input type="text" placeholder="아이디(이메일주소)"
													class="textfiled">
											</div>
											<p class="dec red"></p>
										</div>
										<div class="form">
											<div class="ico_form">
												<input type="password" placeholder="비밀번호 입력"
													autocomplete="off" class="textfiled">
											</div>
											<p class="dec red"></p>
										</div>
									</div>
									<div class="login_bottom">
										<div class="align">
											<div class="lft"></div>
											<div class=rgt></div>
										</div>
										<div class="btn_wrap">
											<button type="submit" class="btn primary full">로그인</button>
										</div>
										<div class="join_to_email">
											<a href="memberRegister.do">회원가입</a>
										</div>
									</div>
								</div>
								<!-- <div class="inner_cont">
                                <div class="line_title">
                                    <h4>간편 로그인</h4>
                                </div>
                                <div class="comfort_login">
                                    <div class="comfort_login_box">
                                        <button class="login_btn kakao">
                                            <img src="https://whataulsan.com/_nuxt/ico_login_kakao.60e19ca6.svg"
                                                alt="카카오톡">
                                        </button>
                                        <button class="login_btn naver">
                                            <img src="https://whataulsan.com/_nuxt/ico_login_naver.81c0bba0.svg"
                                                alt="네이버">
                                        </button>
                                        <button class="login_btn google">
                                            <img src="https://whataulsan.com/_nuxt/ico_login_goggle.84889293.svg"
                                                alt="구글">
                                        </button>
                                    </div>
                                </div>
                            </div> -->
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>