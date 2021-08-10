<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<title>Insert title here</title>
<script type="text/javascript">
	function message() {
		
			alert("경매등록은 로그인 이후 이용하실 수 있습니다.");
			location.href="login.do";
	}
	function message2() {
		
		alert("경매물품 상세정보는 로그인 이후 보실 수 있습니다.");
		location.href="login.do";
}
	
	
	
</script>
<style type="text/css">
.section input[id*="sli de"] {
	display: none;
}

.section {
	margin-top: 77px;
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
	background: url('resources/img/left.png') center center/100% no-repeat;
}

.section .right {
	right: 30px;
	background: url('resources/img/right.png') center center/100% no-repeat;
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

div.container {
	display: flex;
	flex-direction: row;
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

div.item_box {
	border: 1px solid #eee;
	padding: 10px;
	margin: 10px;
}

img.title {
	width: 100%;
	border-radius: 5px;
	min-height:358px ;
	min-width: 250px ;
	max-height: 358px;
	max-width: 250px ; 
	 
	
}

li.content-title {
	text-align: center;
	font-size: 22px;
}

li.content-left {
	display: block;
	font-size: 15px;
}

li.content-right {
	display: block;
	float: right;
	font-size: 15px;
}

a {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
	color: inherit;
}

/* 페이징 */

.page_wrap {
	text-align:center;
	font-size:0;
 }
.page_nation {
	display:inline-block;
}
.page_nation .none {
	display:none;
}
.page_nation a {
	display:block;
	margin:0 3px;
	float:left;
	border:1px solid #e6e6e6;
	width:28px;
	height:28px;
	line-height:28px;
	text-align:center;
	background-color:#fff;
	font-size:13px;
	color:#999999;
	text-decoration:none;
}
.page_nation .arrow {
	border:1px solid #ccc;
}
.page_nation .pprev {
	background:#f8f8f8 url('resources/img//page_pprev.png') no-repeat center center;
	margin-left:0;
}
.page_nation .prev {
	background:#f8f8f8 url('resources/img/page_prev.png') no-repeat center center;
	margin-right:7px;
}
.page_nation .next {
	background:#f8f8f8 url('resources/img/page_next.png') no-repeat center center;
	margin-left:7px;
}
.page_nation .nnext {
	background:#f8f8f8 url('resources/img/page_nnext.png') no-repeat center center;
	margin-right:0;
}
.page_nation a.active {
	background-color:#42454c;
	color:#fff;
	border:1px solid #42454c;
}
/* 페이징 끝 */
</style>
</head>
<body>
	<div>
		<%@ include file="0_Top_beom.jsp"%>
	</div>
	<div class="section">
		<input type="radio" name="slide" id="slide01" checked> <input
			type="radio" name="slide" id="slide02"> <input type="radio"
			name="slide" id="slide03">
		<div class="slidewrap">

			<ul class="slidelist">
				<!-- 슬라이드 영역 -->
				<li class="slideitem"><a>
						<div class="textbox">
							<h3>첫번째 슬라이드</h3>
							<p>첫번째 슬라이드 입니다.</p>
						</div> <img src="resources/img//slide.jpg">
				</a></li>
				<li class="slideitem"><a>

						<div class="textbox">
							<h3>두번째 슬라이드</h3>
							<p>두번째 슬라이드 입니다.</p>
						</div> <img src="resources/img//slide.jpg">
				</a></li>
				<li class="slideitem"><a>

						<div class="textbox">
							<h3>세번째 슬라이드</h3>
							<p>세번째 슬라이드 입니다.</p>
						</div> <img src="resources/img/slide.jpg">
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
			<ul class="slide-pagelist">
				<li><label for="slide01"></label></li>
				<li><label for="slide02"></label></li>
				<li><label for="slide03"></label></li>
			</ul>
		</div>
	</div>
	<div class="container" style="margin-bottom: 20px;">
	<div>
		<h2>카테고리</h2>
		
	</div>
	</div>
	<!--            검색바           -->
	
	<div class="container" style="margin-bottom: 20px;">
	
			<div style="margin-left: 10px;">
				<select style="width: 200px; padding: 5px;" name="category">
					<option value="serach_All">전체</option>
					<option value="search_Name">제목</option>
					<option value="search_User">작성자</option>
					<option value="search_Content">글내용</option>
				</select>
			</div>
			<div>
				<input type="text" style="width: 800px; padding: 5px;" placeholder="검색어를 입력해주세요.">
				<button style="background-color: #1b5ac2; padding: 4px; color: white;">검색</button>
			</div>
			<div>
				<a onclick="message()"><button style="background-color: #1b5ac2; padding: 4px; color: white; margin-right: 10px;">경매등록</button></a>
			</div>
		
	</div>
 	
	<!--            컨텐츠           -->
	
	<c:forEach var="k" items="${list }" varStatus="status">
		
		<c:if test="${status.index %4 == 0}">
			<div class="container">
		</c:if>
		
			<div class="item_box">
				<ul>
					<li class="content-title"><a style="cursor: pointer;" onclick="message2()" >${k.p_name }</a></li>
				</ul>
				<div
					style="border: 0; width: 100%; height: 1px; padding: 0; clear: both; background-color: #eee; margin-bottom: 10px;"></div>
				<a style="cursor: pointer;" onclick="message2()"><img class="title" src="resources/upload/${k.p_img }" alt=""></a>
				<ul>
					<li class="content-right"><fmt:formatNumber value ="${k.n_price}" pattern="#,###"/></li>
					<li class="content-left">현재가</li>
					<li class="content-right"><fmt:formatNumber value ="${k.s_price}" pattern="#,###"/></li>
					<li class="content-left">시작가</li>
					<li class="content-right"><fmt:formatNumber value ="${k.a_price}" pattern="#,###"/></li>
					<li class="content-left">호가</li>
					
					
					<li class="content-right" >
					
					
					<div id="product">
					<span sec="" id="countspan${status.index}">
						<span id="day"></span>일
						<span id="hour"></span>시
						<span id="min"></span>분
						<span id="sec"></span>초
					</span></div>
					</li>
					
					<li class="content-left">남은시간</li>
				</ul>
			</div>
			<script type="text/javascript">
			dpTime();
			function dpTime(){
			 var nnow = "${k.e_day}";
			 
			 var now = new Date();
			    year = now.getFullYear() * 31557600 ;
			    month = (now.getMonth()+parseInt(1)) * 2629800;
			    date = now.getDate()*86400 ;
			    hours = now.getHours()*3600;
			    minutes = now.getMinutes() * 60;
			    seconds = now.getSeconds();
			    nowdate = year + month + date + hours + minutes + seconds;
			    /*
			    console.log("year"+year);
				console.log("month"+month);   
				console.log("date"+date);		    
				console.log("hours"+hours);	    
				console.log("minutes"+minutes);		    
				console.log("seconds"+seconds);	
				*/
				
			    e_year = nnow.substr(0,4) * 31557600;
			    e_month = nnow.substr(5,2) * 2629800;
			    e_date = nnow.substr(8,2) * 86400;
			    e_hours = nnow.substr(11,2) * 3600;
			    e_minutes = parseInt(nnow.substr(14,2)) * 60;
			    e_seconds = parseInt(nnow.substr(17,2));
			    end_date =  e_year + e_month + e_date + e_hours + e_minutes + e_seconds;
			    /* 
			    console.log("e_year"+e_year);
			    console.log("e_month"+e_month);
			    console.log("e_date"+e_date);
			    console.log("e_hours"+e_hours);
			    console.log("e_minutes"+e_minutes);
			    console.log("e_seconds"+e_seconds);
			      */
			    d_day = end_date - nowdate;
			    document.getElementById("countspan${status.index}").setAttribute("sec", d_day);
			    /*
			    console.log("end_date "+ end_date);
			    console.log("nowdate "+ nowdate);
			    console.log("d_day "+d_day);
			    time1_1 = parseInt(d_day / 31557600);
			    time1_2 = d_day % 31557600;
			    time2_1 = parseInt(time1_2 / 2629800);
			    time2_2 = time1_2 % 2629800;
			    time3_1 = parseInt(time2_2 / 86400);
			    time3_2 = time2_2 % 86400;
			    time4_1 = parseInt(time3_2 / 3600);
			    time4_2 = time3_2 % 3600;
			    time5_1 = parseInt(time4_2 / 60);
			    time5_2 = time4_2 % 60;
			    year2 = time1_1;
			    month2 = time2_1;
			    date2 = time3_1;
			    hours2 = time4_1;
			    minutes2 = time5_1;
			    seconds2 = time5_2;

			//parseInt

			document.getElementById("count"+${status.index}).innerHTML = date2 + "일 " + hours2 + "시간 " + minutes2 + "분 " + seconds2 + "초"; 
			*/
			}
			 
			 
			 
			 
			 
			 
			 
			 
			/*  var ddday = document.getElementById("count").value; 
			 var dday = new Date(ddday).getTime(); 
			 
			 
			 
			 
			 setInterval(function() {
			  var today = new Date().getTime();
			  var gap = dday - today;
			  var day = Math.ceil(gap / (1000 * 60 * 60 * 24));
			  var hour = Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
			  var min = Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60));
			  var sec = Math.ceil((gap % (1000 * 60)) / 1000); 

			  document.getElementById("count").innerHTML = day + "일 " + hour + "시간 " + min + "분 " + sec + "초";
			}, 1000);  */
	
			</script>
						
		<c:if test="${status.index %4 == 3 || status.last}">
			</div>
		</c:if>
		
	</c:forEach>
	<script type="text/javascript">

	$('#product > span').each(function() {
		var obj = this;

		getDateCount(obj);
	});

	function getDateCount(obj){
		var second = $(obj).attr("sec");

        $(obj).attr("timer", setInterval(function() {
			setTimeSaleTimer($(obj), second);
			second -= 1;
		}, 1000));
	}

    function setTimeSaleTimer(obj, objSec) {

		var days = parseInt( objSec / 86400 );
		var hours = parseInt( objSec / 3600 ) % 24;
		var minutes = parseInt( objSec / 60 ) % 60;
		var seconds = objSec % 60;

        if (days == 0 && hours == 0 && minutes == 0 && seconds == 0) {
            clearInterval($(obj).attr("timer"));
            return false;
        }
        if (hours == 0) {
			if (days > 0)
			{
				days --;
				hours = 23;
			}
        }
        if (minutes == 0) {
			if (hours > 0)
			{
				hours --;
				minutes = 59;
			}
        }
        if (seconds == 0) {
			if (minutes > 0)
			{
				minutes --;
				seconds = 59;
			}
        } else {
            seconds --;
        }

		$(obj).find('#day').html(days);
		$(obj).find('#hour').html(hours);
		$(obj).find('#min').html(minutes);
		$(obj).find('#sec').html(seconds);

		console.log('남은시간='+ days + '일'+hours+'시'+minutes+'분'+seconds+'초');

    }

</script>
	
	<!-- 
	<div class="page_wrap">
   <div class="page_nation">
      <a class="arrow pprev" href="#"></a>
      <a class="arrow prev" href="#"></a>
      <a href="#" class="active">1</a>
      <a href="#">2</a>
      <a href="#">3</a>
      <a href="#">4</a>
      <a href="#">5</a>
      <a href="#">6</a>
      <a href="#">7</a>
      <a href="#">8</a>
      <a href="#">9</a>
      <a href="#">10</a>
      <a class="arrow next" href="#"></a>
      <a class="arrow nnext" href="#"></a>
   </div>
</div> -->
	
	<div class="container" style="margin-top: 20px;">
		
			<div style="margin-left: 10px;">
				<select style="width: 200px; padding: 5px;" name="category">
					<option value="serach_All">전체</option>
					<option value="search_Name">제목</option>
					<option value="search_User">작성자</option>
					<option value="search_Content">글내용</option>
				</select>
			</div>
			<div>
				<input type="text" style="width: 800px; padding: 5px;" placeholder="검색어를 입력해주세요.">
				<button style="background-color: #1b5ac2; padding: 4px; color: white;">검색</button>
			</div>
			<div>
				<a href="addProduct.do"><button style="background-color: #1b5ac2; padding: 4px; color: white; margin-right: 10px;">경매등록</button></a>
			</div>
		
	</div>
	
	<div>
		<%@ include file="0_Footer_beom.jsp"%>
	</div>
</body>
</html>