<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/8cc7f9d44b.js"
	crossorigin="anonymous"></script>
<style type="text/css">
:root { --border-gray-color: #dadada;
}

.login-stay-sign-in {
	width: 1200px;
	height: 1px;
	display: flex;
	font-size: 15px;
	color: #4e4e4e;
	align-items: center;
	justify-content: flex-start;
	border-bottom: solid 1px var(--border-gray-color);
	margin-top: 30px;
	margin-bottom: 30px;
}

div.container {
	display: flex;
	flex-direction: column;
	max-width: 1200px;
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
	flex-wrap: nowrap;
	justify-content: space-between;
	align-items: center;
	margin-top: 10px;
	box-sizing: border-box;
}

span.info {
	display: block;
	width: 200px;
	font-size: 25px;
	float: left;
}

input.info {
	padding: 10px;
	padding-top: 12px;
	padding-bottom: 9px;
}

div.info {
	
}
</style>

</head>
<body>
	<div>
		<%@ include file="0_Top_beom.jsp"%>
	</div>
	<div class="container" style="margin-top: 100px;">
		<div style="align-items: center;">
			<h1>회원가입</h1>
		</div>
		<form action="joinOk.do">
			<div class="login-stay-sign-in"></div>
			<div class="info">
				<span class="info">아이디</span><input class="info" type="text"
					placeholder="아이디입력"><input type="button" class="info" value="중복확인" style="padding: 9px; margin-left: 2px;" >
			</div>
			<div class="login-stay-sign-in"></div>
			<div class="info">
				<span class="info">비밀번호</span><input class="info" type="text"
					placeholder="아이디입력">
			</div>
			<div class="login-stay-sign-in"></div>
			<div class="info">
				<span class="info">비밀번호 확인</span><input class="info" type="text"
					placeholder="아이디입력">
			</div>
			<div class="login-stay-sign-in"></div>
			<div class="info">
				<span class="info">이름</span><input class="info" type="text"
					placeholder="아이디입력">
			</div>
			<div class="login-stay-sign-in"></div>
			<div class="info">
				<span class="info">닉네임</span><input class="info" type="text"
					placeholder="아이디입력"><input type="button" class="info" value="중복확인" style="padding: 9px; margin-left: 2px;" >
			</div>
		    <div class="login-stay-sign-in"></div>
			<div class="info" style="display: flex; flex-direction: row;">
			<div>
				<span class="info">휴대폰 번호</span><input class="info" type="text"
					placeholder="아이디입력">
					</div>
					<div>
						<input type="button" class="info" value="인증번호받기" style="padding: 9px; margin-left: 2px;" >
					</div>
					<div>
					<span class="info" style="margin-left: 50px; width: 180px;">인증 번호</span><input class="info" type="text"
					placeholder="아이디입력">
					</div>
					<div>
						<input type="button" class="info" value="인증" style="padding: 9px; margin-left: 2px;" >
					</div>
					
			</div>
			
			<div class="login-stay-sign-in"></div>
			<div class="info">
				<span class="info">이메일</span><input class="info" type="text"
					placeholder="아이디입력">
					
			</div>
			<div class="login-stay-sign-in"></div>
			<input type="submit" value="다음" style="padding: 10px 40px 10px 40px; float: right; font-size: 24px;">
		</form>
	</div>
	<div>
		<%@ include file="0_Footer_beom.jsp"%>
	</div>
</body>
</html>