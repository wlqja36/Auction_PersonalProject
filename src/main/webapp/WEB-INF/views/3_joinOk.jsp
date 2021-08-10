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
:root{
	--body-background-color: #f5f6f7;
	--font-color: #4e4e4e;
	--border-gray-color : #dadada;
	--naver-green-color: #04c75a;
	--naver-green-border-color: #06b350;
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
	justify-content: center;
	align-items: center;
	margin-top: 10px;
	box-sizing: border-box;
}

 .login-input-section-wrap{
	padding-top: 60px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.login-input-wrap{
	width: 465px;
	height :48px;
	border: solid 1px var(	--border-gray-color );
	background: white;
}
.password-wrap{
	margin-top: 13px;
}
.login-input-wrap input{
	border: none;
	width:430px;
	margin-top: 10px;
	font-size: 14px;
	margin-left: 10px;
	height:30px;
}
.login-button-wrap {
	padding-top: 13px;
}
.login-button-wrap button{
	width: 465px;
	height :48px;
	font-size: 18px;
	background: var(--naver-green-color);
	color: white;
	border: solid 1px var(--naver-green-border-color);
}
.login-stay-sign-in{
	width: 1200px;
	height: 52px;
	
	display: flex;
	font-size: 15px;
	color: #4e4e4e;
	align-items: center;
	justify-content: flex-start;
	border-bottom: solid 1px var(--border-gray-color);
}
.login-stay-sign-in i{
	font-size: 25px;
	color: #9ba1a3;
}
.login-stay-sign-in span{
	padding-left: 5px;
	line-height: 25px;
}

.Easy-sgin-in-wrap{

	display: flex;
	flex-direction: column;
	align-items: center;
	padding-top: 40px;

}
.Easy-sgin-in-wrap h2{
	font-size: 20px;
}
.Easy-sgin-in-wrap .sign-button-list
{
	padding-top:25px;
	list-style: none;
	width: 465px;
	display: flex;
	flex-direction: column;
	align-items: center;
}
.Easy-sgin-in-wrap .sign-button-list li{
	padding-bottom: 10px;
}
.Easy-sgin-in-wrap .sign-button-list li button{
	width: 465px;
	height: 56px;
	border: solid 1px var(--border-gray-color);
	text-align: left;
	background: white;
}
.Easy-sgin-in-wrap .sign-button-list li button i{
	padding-left: 15px;
	font-size: 20px;
}

.fa-facebook-square
{
	color:#4064ac;
}
.Easy-sgin-in-wrap .sign-button-list li button span{
	padding-left: 20px;
	font-size: 18px;
}
.Easy-sgin-in-wrap .forget-msg{
	color:var(--font-color);
	font-size: 14px;
	padding-top: 10px;

}
</style>

</head>
<body>
	<div>
		<%@ include file="0_Top_beom.jsp"%>
	</div>
	<div class="container" style="margin-top: 150px;">

		<i class="far fa-thumbs-up" style="font-size: 150px;"></i>

		<h1>회원 가입이 완료 되었습니다!</h1>

		<p style="font-size: 20px; line-height: 1px;">회원 가입을 해 주셔서 감사합니다.</p>
		<p style="font-size: 20px; line-height: 1px;">바로 로그인하시고 사이트를 즐겨주세요! 좋은 낙찰을 기원합니다!</p>
		<section class="login-input-section-wrap">
			<div class="login-input-wrap">
				<input placeholder="Username" type="text"></input>
			</div>
			<div class="login-input-wrap password-wrap">
				<input placeholder="Password" type="password"></input>
			</div>
			<div class="login-button-wrap">
				<a href="adminPage.do"><button style="cursor: pointer;">Sign in</button></a>
			</div>
			
		</section>
		<section class="Easy-sgin-in-wrap">
			<ul class="sign-button-list">
				<li><button onclick="" style="cursor: pointer; text-align: center;">
						<i class="fab fa-google" style="color: #4285f4;"></i><span style="padding-left: 10px;">구글 로그인</span>
					</button></li>
				<li><button style="cursor: pointer; text-align: center;">
						<i class="fab fa-facebook-square"></i><span style="padding-left: 10px;">페이스북 로그인</span>
					</button></li>
				
					<div class="login-stay-sign-in"></div>
			</ul>
			<p class="forget-msg"> <a href="">회원가입</a> | <a href="">아이디 찾기</a> | <a href="">비밀번호 찾기</a> </p>
		</section>



	</div>
	<div>
		<%@ include file="0_Footer_beom.jsp"%>
	</div>
</body>
</html>