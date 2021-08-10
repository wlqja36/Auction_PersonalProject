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
	margin-top: 50px;
	margin-bottom: 40px;
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

/* 슬라이드 시작 */
.section input[id*="sli de"] {
	display: none;
}

.section {
	margin-top: 10px;
}

.section .slidewrap {
	margin: 0 auto;
}

.section .slidelist {
	white-space: nowrap;
	font-size: 0;
	overflow: hidden;
	position: relative;
}

.section .slidelist>li {
	display: inline-block;
	vertical-align: middle;
	width: 100%;
	transition: all .5s;
}

.section .slidelist>li>a {
	display: block;
	position: relative;
}

.section .slidelist>li>a img {
	width: 100%;
	max-height: 400px;
}

.section .slidelist label {
	position: absolute;
	z-index: 10;
	top: 50%;
	transform: translateY(-50%);
	padding: 50px;
	cursor: pointer;
}

.section .slidelist .textbox {
	position: absolute;
	z-index: 1;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	line-height: 1.6;
	text-align: center;
}

.section .slidelist .textbox h3 {
	font-size: 36px;
	color: #fff;;
	transform: translateY(30px);
	transition: all .5s;
}

.section .slidelist .textbox p {
	font-size: 16px;
	color: #fff;
	opacity: 0;
	transform: translateY(30px);
	transition: all .5s;
}

/* input에 체크되면 슬라이드 효과 */
.section input[id="slide01"]:checked ~ .slidewrap .slidelist>li {
	transform: translateX(0%);
}

.section input[id="slide02"]:checked ~ .slidewrap .slidelist>li {
	transform: translateX(-100%);
}

.section input[id="slide03"]:checked ~ .slidewrap .slidelist>li {
	transform: translateX(-200%);
}

/* input에 체크되면 텍스트 효과 */
.section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .textbox h3
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .2s;
}

.section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .textbox p
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .4s;
}

.section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .textbox h3
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .2s;
}

.section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .textbox p
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .4s;
}

.section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .textbox h3
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .2s;
}

.section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .textbox p
	{
	opacity: 1;
	transform: translateY(0);
	transition-delay: .4s;
}

/* 좌,우 슬라이드 버튼 */
.slide-control>div {
	display: none;
}

.section .left {
	left: 30px;
	background: url('../img/left.png') center center/100% no-repeat;
}

.section .right {
	right: 30px;
	background: url('../img/right.png') center center/100% no-repeat;
}

.section input[id="slide01"]:checked ~ .slidewrap .slide-control>div:nth-child(1)
	{
	display: block;
}

.section input[id="slide02"]:checked ~ .slidewrap .slide-control>div:nth-child(2)
	{
	display: block;
}

.section input[id="slide03"]:checked ~ .slidewrap .slide-control>div:nth-child(3)
	{
	display: block;
}

/* 페이징 */
.slide-pagelist {
	text-align: center;
	padding: 20px;
}

.slide-pagelist>li {
	display: inline-block;
	vertical-align: middle;
}

.slide-pagelist>li>label {
	display: block;
	padding: 8px 30px;
	border-radius: 30px;
	background: #ccc;
	margin: 20px 10px;
	cursor: pointer;
}

.section input[id="slide01"]:checked ~ .slidewrap .slide-pagelist>li:nth-child(1)>label
	{
	background: #999;
}

.section input[id="slide02"]:checked ~ .slidewrap .slide-pagelist>li:nth-child(2)>label
	{
	background: #999;
}

.section input[id="slide03"]:checked ~ .slidewrap .slide-pagelist>li:nth-child(3)>label
	{
	background: #999;
}

li.content-title {
	font-size: 30px;
	margin-left: 20px;
}

li.content-left {
	display: block;
	font-size: 22px;
	margin-left: 20px;
}

li.content-right {
	display: block;
	float: right;
	font-size: 22px;
	margin-right: 20px;
}

/* 슬라이드 끝 */
</style>

</head>
<body>
	<div>
		<%@ include file="0_Top_beom.jsp"%>
	</div>
	<div class="container" style="margin-top: 100px;"></div>
	<div class="container" style="align-items: flex-start;">
		<div>
			<h2>
				<a href="">메인</a> > <a href="">기타</a> > <a href="">세부카테고리</a>
			</h2>
		</div>
		<div style="flex-direction: row; display: flex;"><!-- 큰틀 -->
			<div style="max-width: 580px; margin-right: 20px; max-height: 320px;" ><!-- 슬라이드 -->
				<div class="section">
					<input type="radio" name="slide" id="slide01" checked
						style="position: fixed; opacity: 0"> <input type="radio"
						name="slide" id="slide02" style="position: fixed; opacity: 0">
					<input type="radio" name="slide" id="slide03"
						style="position: fixed; opacity: 0">
					<div class="slidewrap">

						<ul class="slidelist">
							<!-- 슬라이드 영역 -->
							<li class="slideitem"><a>
									<div class="textbox">
										<h3>첫번째 슬라이드</h3>
										<p>첫번째 슬라이드 입니다.</p>
									</div> <img src="../img/slide.jpg">
							</a></li>
							<li class="slideitem"><a>

									<div class="textbox">
										<h3>두번째 슬라이드</h3>
										<p>두번째 슬라이드 입니다.</p>
									</div> <img src="../img/slide.jpg">
							</a></li>
							<li class="slideitem"><a>

									<div class="textbox">
										<h3>세번째 슬라이드</h3>
										<p>세번째 슬라이드 입니다.</p>
									</div> <img src="../img/slide.jpg">
							</a></li class="slideitem">

							<!-- 좌,우 슬라이드 버튼 -->
							<div class="slide-control">
								<div>
									<label for="slide03" class="left"></label> <label for="slide02"
										class="right"></label>
								</div>
								<div>
									<label for="slide01" class="left"></label> <label for="slide03"
										class="right"></label>
								</div>
								<div>
									<label for="slide02" class="left"></label> <label for="slide01"
										class="right"></label>
								</div>
							</div>

						</ul>
						<!-- 페이징 -->
						<!-- <ul class="slide-pagelist">
							<li><label for="slide01"></label></li>
							<li><label for="slide02"></label></li>
							<li><label for="slide03"></label></li>
						</ul> -->
					</div>
				</div>
			</div>
			<div style="width: 580px; max-width: 580px; height: 320px; max-heigh:320px; margin-top:10px; border: 1px solid black;"  >
				<form>
			<ul>
				<li class="content-title">제품명</li>
				<li class="content-right">000,000원</li>
				<li class="content-left">희망가</li>
				<li class="content-right">000,000원</li>
				<li class="content-left">시작가</li>
				<li class="content-right">000,000원</li>
				<li class="content-left">현재가</li>
				<li class="content-right">남은시간</li>
				<li class="content-left">남은시간</li>
				<br>
				<li class="content-right">0건</li>
				<li class="content-left">응찰</li>
				<li class="content-right">1,000원</li>
				<li class="content-left">호가</li>
				<li class="content-right"><input class="info" type="number" placeholder="호가 입력" step="1000"></li>
				<li class="content-left">응찰가격</li>
				
				<input type="submit" value="응찰하기" style="padding: 1px 230px 1px 230px; font-size: 22px;  margin-left: 20px; margin-right: 20px; margin-top: 10px;">
			</ul>
			</form>
			</div>
		</div>
		
		<div class="login-stay-sign-in"></div>
		<div>
			<h1>제품정보</h1>
			<div style="margin-bottom: 100px;">
				<span>
					제품 정보가 들어옵니다<br>
					제품 정보가 들어옵니다<br>
					제품 정보가 들어옵니다<br>
					제품 정보가 들어옵니다<br>
					제품 정보가 들어옵니다<br>
					제품 정보가 들어옵니다<br>					
				</span>
			</div>
		</div>
		<div>
			<h1>응찰내역</h1>
			<div style="width: 1200px; height: 400px; max-heigh:400px; margin-top:10px; border: 1px solid black;"  >
				<span>
					응찰 내역이 들어옵니다<br>
					응찰 내역이 들어옵니다<br>
					응찰 내역이 들어옵니다<br>
					응찰 내역이 들어옵니다<br>
					응찰 내역이 들어옵니다<br>
				</span>
			</div>
		</div>
	</div>
	<div>
		<%@ include file="0_Footer_beom.jsp"%>
	</div>
</body>
</html>