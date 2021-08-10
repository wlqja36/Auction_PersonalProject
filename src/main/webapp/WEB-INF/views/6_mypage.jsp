<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/8cc7f9d44b.js" crossorigin="anonymous"></script>
<script type="text/javascript">
	function productList() {
		document.getElementById("productList").style.backgroundColor="#87CEEB";
		document.getElementById("successBidList").style.backgroundColor="white";
		document.getElementById("bidList").style.backgroundColor="white";
		document.getElementsByClassName("productList")[0].style.display="block";
		document.getElementsByClassName("successBidList")[0].style.display="none";
		document.getElementsByClassName("bidList")[0].style.display="none";
	}
	function successBidList() {
		document.getElementById("productList").style.backgroundColor="white";
		document.getElementById("successBidList").style.backgroundColor="#87CEEB";
		document.getElementById("bidList").style.backgroundColor="white";
		document.getElementsByClassName("productList")[0].style.display="none";
		document.getElementsByClassName("successBidList")[0].style.display="block";
		document.getElementsByClassName("bidList")[0].style.display="none";
	}
	function bidList() {
		document.getElementById("productList").style.backgroundColor="white";
		document.getElementById("successBidList").style.backgroundColor="white";
		document.getElementById("bidList").style.backgroundColor="#87CEEB";
		document.getElementsByClassName("productList")[0].style.display="none";
		document.getElementsByClassName("successBidList")[0].style.display="none";
		document.getElementsByClassName("bidList")[0].style.display="block";
		
	}
</script>

<style type="text/css">

div.container {
	display: flex;
	flex-direction: row;
	max-width: 1200px;
	width: 100%;
	padding-right: 15px;
	padding-left: 0px;
	margin-right: auto;
	margin-left: auto;
	flex-wrap: nowrap;
	justify-content: space-between;
	margin-top: 10px;
	box-sizing: border-box;
}
a.info {
	text-decoration: none;
}

a.info:visited {
	text-decoration: none;
	color: inherit;
}
tr.info:nth-child(odd){
	background-color: #d3d3d3;
}
	

</style>

</head>
<body>
	<div>
		<%@ include file="0_Top_beom_loginOk.jsp"%>
	</div>
	<div class="container" style="margin-top: 100px;">
	<div style="margin-top: 50px;"> <!-- 큰틀 -->
			 <!-- 내정보 -->
			<table style="margin: auto; text-align: center;width: 150px; border: 1px solid black; border-collapse: collapse; height: 400px;">
				<tr bgcolor="#d3d3d3"  >
					<th style="border-bottom: 1px solid black;">마이페이지</th>
				</tr>
				<tr>
					<td>
						<i class="fas fa-user-circle" style="font-size: 100px"></i>
					</td>
				</tr>
				<tr>
					<td>'유저닉네임'님</td>
				</tr>
				<tr>
					<td>포인트</td>
				</tr>
				<tr>
					<td>5,000원</td>
				</tr>
				<tr>
					<td><a href="">충전</a> | <a href="">출금</a></td>
				</tr>
				<tr>
					<td><p></p></td>
				</tr>
				<tr>
					<td><a class="info" href="">충전내역</a></td>
				</tr>
				<tr>
					<td><a class="info" href="">출금내역</a></td>
				</tr>
				
				<tr>
					<td><p></p></td>
				</tr>
				<tr>
					<td><a class="info" href="">회원정보 변경</a></td>
				</tr>
				<tr>
					<td><a class="info" href="">로그아웃</a></td>
				</tr>
			</table>
		</div>
		<div style="margin-top: 50px;"> <!-- 정보틀 -->
			<table style="width: 1000px; border: 1px solid black; text-align: center;border-collapse: collapse;" >
				<tr>
					<th id="productList" style="cursor: pointer; background-color: #87CEEB" onclick="productList()" >등록한 제품</th>
					<th id="successBidList"style="cursor: pointer;" onclick="successBidList()">낙찰 내역</th>
					<th id="bidList" style="cursor: pointer;" onclick="bidList()">응찰 내역</th>
				</tr>
			</table>
			<div style="position: relative;">
			<div class="productList" style="position: absolute; display: block;"><!-- 상세정보 -->
				<table style="width: 1000px; margin-top: 20px; text-align: center; border: 1px solid black; border-collapse: collapse; position: absolute;">
					<tr bgcolor="#d3d3d3">
						<th width="5%">번호</th>
						<th width="15%">제품이름</th>
						<th width="15%">희망가</th>
						<th width="15%">현재가</th>
						<th width="10">낙찰</th>
						<th width="25%">남은시간</th>
						<th width="15%">관리</th>
					
					</tr>
					<tr class="info">
						<td class="info" width="5%">1</td>
						<td class="info" width="15%"><a href="">제품이름</a></td>
						<td class="info" width="15%">00,000</td>
						<td class="info" width="15%">00,000</td>
						<td class="info" width="10">응찰중</td>
						<td class="info" width="25%">2일 10시간 35분</td>
						<td class="info" width="15%"><a style="cursor: pointer;">수정</a> | <a style="cursor: pointer;">삭제</a></td>
					</tr>
					<tr class="info">
						<td class="info" width="5%">2</td>
						<td class="info" width="15%"></td>
						<td class="info" width="15%"></td>
						<td class="info" width="15%"></td>
						<td class="info" width="10"></td>
						<td class="info" width="25%"></td>
						<td class="info" width="15%"></td>
					</tr>
					<tr class="info">
						<td class="info" width="5%"></td>
						<td class="info" width="15%"></td>
						<td class="info" width="15%"></td>
						<td class="info" width="15%"></td>
						<td class="info" width="10"></td>
						<td class="info" width="25%"></td>
						<td class="info" width="15%"></td>
					</tr>
					<tr class="info">
						<td class="info" width="5%"></td>
						<td class="info" width="15%"></td>
						<td class="info" width="15%"></td>
						<td class="info" width="15%"></td>
						<td class="info" width="10"></td>
						<td class="info" width="25%"></td>
						<td class="info" width="15%"></td>
					</tr>
				</table>
			</div>
			<div class="successBidList" style="position: absolute; display: none"><!-- 상세정보-낙찰내역 -->
				<table style="width: 1000px; margin-top: 20px; text-align: center; border: 1px solid black; border-collapse: collapse;">
					<tr bgcolor="#d3d3d3">
						<th width="5%">번호</th>
						<th width="15%">제품이름</th>
						<th width="15%">판매자</th>
						<th width="15%">낙찰가</th>
						<th width="25%">남은시간</th>
						<th width="25%">연락처</th>
					</tr>
					<tr class="info">
						<td class="info" width="5%">1</td>
						<td class="info" width="15%"><a href="">제품이름</a></td>
						<td class="info" width="15%">판매자이름</td>
						<td class="info" width="15%">00,000</td>
						<td class="info" width="25%">2일 10시간 35분</td>
						<td class="info" width="25">010-0000-0000</td>
					</tr>
					<tr class="info">
						<td class="info" width="5%">2</td>
						<td class="info" width="15%"><a href="">제품이름</a></td>
						<td class="info" width="15%">판매자이름</td>
						<td class="info" width="15%">00,000</td>
						<td class="info" width="25%">2일 10시간 35분</td>
						<td class="info" width="25">010-0000-0000</td>
					</tr>
					<tr class="info">
						<td class="info" width="5%">3</td>
						<td class="info" width="15%"><a href="">제품이름</a></td>
						<td class="info" width="15%">판매자이름</td>
						<td class="info" width="15%">00,000</td>
						<td class="info" width="25%">2일 10시간 35분</td>
						<td class="info" width="25">010-0000-0000</td>
					</tr>
					
				</table>
			</div>
			<div class="bidList" style="position: absolute; display: none;"><!-- 상세정보-응찰내역 -->
				<table style="width: 1000px; margin-top: 20px; text-align: center; border: 1px solid black; border-collapse: collapse;">
					<tr bgcolor="#d3d3d3">
						<th width="5%">번호</th>
						<th width="15%">제품이름</th>
						<th width="15%">판매자</th>
						<th width="15%">응찰가</th>
						<th width="15">현재가</th>
						<th width="10%">상태</th>
						<th width="25%">종료시간</th>
					
					</tr>
					<tr class="info">
						<td class="info" width="5%">1</td>
						<td class="info" width="15%"><a href="">제품이름</a></td>
						<td class="info" width="15%">판매자 이름</td>
						<td class="info" width="15%">00,000</td>
						<td class="info" width="15">00,000</td>
						<td class="info" width="10%">유찰됨</td>
						<td class="info" width="25%">21.07.02 00:00:00</td>
					</tr>
					<tr class="info">
						<td class="info" width="5%">2</td>
						<td class="info" width="15%"><a href="">제품이름</a></td>
						<td class="info" width="15%">판매자 이름</td>
						<td class="info" width="15%">00,000</td>
						<td class="info" width="15">00,000</td>
						<td class="info" width="10%">낙찰예정</td>
						<td class="info" width="25%">21.07.02 00:00:00</td>
					</tr>
					<tr class="info">
						<td class="info" width="5%">3</td>
						<td class="info" width="15%"><a href="">제품이름</a></td>
						<td class="info" width="15%">판매자 이름</td>
						<td class="info" width="15%">00,000</td>
						<td class="info" width="15">00,000</td>
						<td class="info" width="10%">낙찰됨</td>
						<td class="info" width="25%">21.07.02 00:00:00</td>
					</tr>
					
				</table>
			</div>
			</div>
		</div>
	</div>
	
	</div>
	<div>
		<%@ include file="0_Footer_beom.jsp"%>
	</div>
</body>
</html>