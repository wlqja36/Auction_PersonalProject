<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	margin: 0;
}
/* top */
/* 헤더 */
div.top {
	position: fixed;
	top: 0;
	/* width: 100% */
	left: 0;
	right: 0;
	z-index: 11;
	flex-wrap: nowrap;
}

div.head {
	display: flex;
	flex-direction: column;
}

section.header {
	position: relative;
	padding: 80px 0px 20px;
	display: flex;
	flex-direction: column;
}

div.header {
	position: absolute;
	width: 100%;
	height: 100%;
	background-color: black;
	left: 0;
	top: 0;
	color: white;
}

div.container_head {
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
}

div.row {
	display: flex;
	flex-direction: row;
	justify-content: center;
	background: black;
	margin-top: 15px;
	height: 50px;
	
}

img.logo {
	width: 130px;
	height: 65px;
}
/* 헤더 끝 */
/* 메뉴바 */


ul, li {
	list-style: none;
	margin: auto;
	padding: 0px;
	margin-top: 0px;
}

ul.footer, li.footer {
	margin: 0px;
}

ul.myMenu>li {
	display: inline-block;
	width: auto;
	padding: 5px 10px;
	background-color: black;
	text-align: center;
	position: relative;
	font-size: 22px;
	margin-left: 30px;
	margin-right: 30px;
}

ul.myMenu>li>ul.sub {
	display: none;
	position: absolute;
	top: 35px;
	left: 0px;
}

ul.myMenu>li>ul.sub>li {
	display: inline-block;
	text-align: center;
	width: 150px;
	padding: 10px 15px;
	background-color: white;
	color:black;
	font-size: 17px;
}

ul.myMenu>li:hover ul.sub {
	display: block;
	z-index: 1;
}

ul.myMenu>li:hover ul.sub>li:hover {
	background-color: darkgray;
}

li.menu {
	margin-right: 20px;
}

a.category {
	text-decoration: none;
}

a.category:visited {
	text-decoration: none;
	color: inherit;
}
/* 메뉴바 끝*/
/* top 끝 */
</style>
</head>

<body>
	<div class="top">
		<div class="head">
			<section class="header">
				<div class="header">
					<div class="container_head">
						<div>
							<a href="main.do"> <img class="logo" alt="" src="resources/img/logo.png" style="margin-top: 8px;">
							</a>
						</div>

						<div class="row">
							
								<ul class="myMenu">
									<li class="menu"><a class="category" href="main.do?category=m1"> 디지털/가전</a>
										<!--  <ul class="sub">
											<li><a class="category" href="">장르</a> <a
												class="category" href="">공포</a> <a class="category" href="">공포</a></li>
											<li><a class="category" href="">장르</a> <a
												class="category" href="">공포</a> <a class="category" href="">공포</a></li>
											<li><a class="category" href="">장르</a> <a
												class="category" href="">공포</a> <a class="category" href="">공포</a></li> 

										</ul> -->
									</li>
									<li class="menu"><a class="category" href="main.do?category=m2">패션/잡화/뷰티</a>
										<!-- <ul class="sub">
											<li><a class="category" href="">장르</a> <a
												class="category" href="">장르</a> <a class="category" href="">장르</a></li>
											<li><a class="category" href="">장르</a> <a
												class="category" href="">장르</a> <a class="category" href="">장르</a></li>
											<li><a class="category" href="">장르</a> <a
												class="category" href="">장르</a> <a class="category" href="">장르</a></li>

										</ul> -->
									</li>
									<li class="menu"><a class="category" href="main.do?category=m3">생활</a>
										<!-- <ul class="sub">
											<li><a class="category" href="">장르</a> <a
												class="category" href="">장르</a> <a class="category" href="">장르</a></li>
											<li><a class="category" href="">장르</a> <a
												class="category" href="">장르</a> <a class="category" href="">장르</a></li>
											<li><a class="category" href="">장르</a> <a
												class="category" href="">장르</a> <a class="category" href="">장르</a></li>

										</ul> -->
									</li>
									<li class="menu"><a class="category" href="main.do?category=m4">기타</a>
										<!-- <ul class="sub">
											<li><a class="category" href="">고객센터 항목 1 </a></li>
											<li><a class="category" href="">고객센터 항목 2 </a></li>
											<li><a class="category" href="">고객센터 항목 3 </a></li>
											<li><a class="category" href="">고객센터 항목 4 </a></li>
										</ul> -->
									</li>
								</ul>
							

						</div>
						<div>
							<a href="login.do"><input type="button" value="로그인/회원가입"></a>
						</div>
					</div>


				</div>
			</section>
		</div>
	</div>
</body>
</html>