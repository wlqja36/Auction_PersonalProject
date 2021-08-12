<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/8cc7f9d44b.js"
	crossorigin="anonymous"></script>
	
	<!-- 자동 갱신 스크립트 include -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
function updateN_price() {
	
	$.ajax({
		url : "addBid.do",
		method : "post",
		dataType : "text",
		data : {"p_num":bidForm.p_num.value,"b_price":bidForm.b_price.value},
		success : function(data){
			alert("입찰 되었습니다.");
			document.getElementById("n_price").innerHTML = data+"원";
		},
		error : function() {
			alert("응찰 에러. 관리자에게 연락해주세요.");
		}
	});
}

var timerID;
$(document).ready(function () {
    $('#execute').on('click',function(e){
        e.preventDefault();
        updateData();
    });
    $('#stop').on('click',function(e){
        e.preventDefault();
        clearTimeout(timerID); // 타이머 중지
        $('#showtime').html('');
    });   
});

function updateData(){
    $.ajax({
      url: "selectBid.do",
      type:"post",
      cache : false,
      data : {"p_num":bidForm.p_num.value},
      success: function(data){ // getserver.php 파일에서 echo 결과값이 data 임
       $('#showtime').html(data);
      }
    });
    timerID = setTimeout("updateData()", 2000); // 2초 단위로 갱신 처리
}
</script>


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
	<c:if test="${mvo == null}">
	<div>
		<%@ include file="0_Top_beom.jsp"%>
	</div>
		</c:if>
		<c:if test="${mvo != null}">
	<div>
		<%@ include file="0_Top_beom_loginOk.jsp"%>
	</div>
		</c:if>
	<div class="container" style="margin-top: 100px;"></div>
	<div class="container" style="align-items: flex-start;">
		<div>
			<h2>
				<a href="mainLogin.do">메인</a> > <a href="mainLogin.do?category=${vo.category }" id="cate">상위카테고리
				<script type="text/javascript">
				
				switch ("${vo.category}") {
				case "m1":
					document.getElementById("cate").innerHTML ="디지털/가전";
					break;
				case "m2":
					document.getElementById("cate").innerHTML ="패션/잡화/뷰티";
					break;
				case "m3":
					document.getElementById("cate").innerHTML ="생활";
					break;
				case "m4":
					document.getElementById("cate").innerHTML ="기타";
					break;
				default:
					document.getElementById("cate").innerHTML ="에러";
					break;
				}
				/* if(${vo.category}=="m1"){
					document.getElementById("cate").innerHTML ="디지털/가전";
				}else if (${vo.category}=="m2") {
					document.getElementById("cate").innerHTML ="패션/잡화/뷰티";
				}else if (${vo.category}=="m3") {
					document.getElementById("cate").innerHTML ="생활";
				}else if (${vo.category}=="m4") {
					document.getElementById("cate").innerHTML ="기타";
				}else{
					document.getElementById("cate").innerHTML ="에러";
				} */

				</script></a>
			</h2>
		</div>
		<div style= "display: flex; flex-flow: row;"><!-- 큰틀 -->
			<div>
			<img src="resources/upload/${vo.p_img }" style="margin-top: 10px;max-width: 400px; min-width:400px; min-height:320px; margin-right: 20px; max-height: 320px;" >
			</div>
			<!-- 슬라이드 -->
				<%-- <div class="section">
					<input type="radio" name="slide" id="slide01" checked
						style="position: fixed; opacity: 0"> <input type="radio"
						name="slide" id="slide02" style="position: fixed; opacity: 0">
					<input type="radio" name="slide" id="slide03"
						style="position: fixed; opacity: 0">
					<div class="slidewrap">

						<ul class="slidelist">
							<!-- 슬라이드 영역 -->
							<li class="slideitem"><a>
									
							</a></li>
							<li class="slideitem"><a>
									 <img src="resources/upload/${vo.p_img }">
							</a></li> --%>
							 
							<!-- 좌,우 슬라이드 버튼 -->
							<!--
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
							 -->

						<!-- </ul> -->
						<!-- 페이징 -->
						<!-- <ul class="slide-pagelist">
							<li><label for="slide01"></label></li>
							<li><label for="slide02"></label></li>
							<li><label for="slide03"></label></li>
						</ul> -->
					
				
			
			<div style="width: 580px; max-width: 580px; height: 320px; max-heigh:320px; margin-top:10px; border: 1px solid black;"  >
				<form method="post" name="bidForm">
			<ul>
				<li class="content-title">${vo.p_name}</li>
				<li class="content-right"><fmt:formatNumber value ="${vo.s_price}" pattern="#,###"/>원</li>
				<li class="content-left">시작가</li>
				<li class="content-right" id="n_price"><fmt:formatNumber value ="${vo.n_price}" pattern="#,###"/>원</li>
				<li class="content-left">현재가</li>
				<li class="content-right">남은시간</li>
				<li class="content-left">남은시간</li>
				<br>
				<li class="content-right">0건</li>
				<li class="content-left">응찰</li>
				<li class="content-right"><fmt:formatNumber value ="${vo.a_price}" pattern="#,###"/>원</li>
				<li class="content-left">호가</li>
				<li class="content-right"><input class="info"  required="required" id="b_price" name="b_price" type="number" min="${vo.n_price + vo.a_price}" placeholder="호가 입력" step="${vo.a_price}"></li>
				<li class="content-left">응찰가격</li>
				<input type="hidden" id="p_num" name="p_num" value="${vo.p_num }">
				<input type="button" value="응찰하기" onclick="updateN_price()" style="padding: 1px 230px 1px 230px; font-size: 22px;  margin-left: 20px; margin-right: 20px; margin-top: 10px;">
			</ul>
			</form>
			</div>
		</div>
		
		
		<div class="login-stay-sign-in"></div>
		<div>
			<h1>제품정보</h1>
			<div style="margin-bottom: 100px;">
				<span>
					<pre style="font-size: 15px">${vo.p_info}</pre>			
				</span>
			</div>
		</div>
		<div>
			<h1>응찰내역</h1>
			<div style="width: 1200px; height: 400px; max-heigh:400px; margin-top:10px; border: 1px solid black;"  >
			<input type="button" id="execute" value="응찰내역 실시간보기">
			<input type="button" id="stop" value="멈추기"><br>
				<span id="showtime">
					
				</span>
			</div>
		</div>
	</div>
	<div>
		<%@ include file="0_Footer_beom.jsp"%>
	</div>
</body>
</html>