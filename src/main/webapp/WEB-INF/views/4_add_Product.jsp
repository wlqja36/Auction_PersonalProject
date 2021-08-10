<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/8cc7f9d44b.js"
	crossorigin="anonymous"></script>
	<script type="text/javascript">
	
	function write_ok(f) {
		// 입력 유무 확인
		
		
		f.action="addProduct_ok.do";
		f.submit();
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
select.info{
	padding: 12px;
	width: 200px;
}

div.info {
	
}
</style>

</head>
<body>
	<div>
		<%@ include file="0_Top_beom_loginOk.jsp"%>
	</div>
	<div class="container" style="margin-top: 100px;">
		<div style="align-items: center;">
			<h1>제품등록</h1>
		</div>
		<form method="post" enctype="multipart/form-data">
			<div class="login-stay-sign-in"></div>
			<div class="info">
				<span class="info">제품명</span>
				<input class="info" type="text" placeholder="제품명" style="width: 900px;" name ="p_name">
			</div>
			<div class="login-stay-sign-in"></div>
			<div class="info">
				<span class="info">카테고리</span>
				<select class="info" name ="category" required="required">
					<option class="info" hidden="">선택</option>
					<option class="info" value="m1">디지털/가전</option>
					<option class="info" value="m2">패션/잡화/뷰티</option>
					<option class="info" value="m3">생활</option>
					<option class="info" value="m4">기타</option>
				</select>
			</div>
			<div class="login-stay-sign-in"></div>
			<div class="info">
				<span class="info">이미지</span>
				<input class="info" type="file" style="padding: 9px; font-size: 15px;" name="f_name">
				
			</div>
			<div class="login-stay-sign-in"></div>
			<div class="info">
				<span class="info">제품 상세 정보</span>
				<textarea name="p_info" rows="25" cols="126" style="resize: none;" placeholder="제품의 상세한 정보를 입력하세요. &#13;&#10;ex)제품명&#13;&#10;   구매날짜&#10;   충전이 안될 때가 있습니다.&#10;   왼쪽 상단에 기스가 있습니다.&#10;   미개봉 새 제품입니다." ></textarea>
				
			</div>
			<div class="login-stay-sign-in"></div>
			<div class="info">
				<span class="info">거래방식</span>
				<select class="info" name="trade">
					<option class="info" hidden="">선택</option>
					<option class="info">직거래</option>
					<option class="info">택배거래</option>
					<option class="info">상관없음</option>
				</select>

			</div>
		    <div class="login-stay-sign-in"></div>
			<span class="info">시작가</span>
			<input class="info" type="number" placeholder="시작가 입력" step="10" name="s_price">
			<div class="login-stay-sign-in"></div>
			<span class="info">호가</span>
			<input class="info" type="number" placeholder="호가 입력" step="10" name="a_price">
			<div class="login-stay-sign-in"></div>
			<span class="info">경매종료</span>
			<input class="info" type="datetime-local" name="e_day">
			<div class="login-stay-sign-in"></div>
			<input type="submit" value="제품등록" style="padding: 10px 40px 10px 40px; float: right; font-size: 24px; onclick="write_ok(this.form)"">
		</form>
	</div>
	<div>
		<%@ include file="0_Footer_beom.jsp"%>
	</div>
</body>
</html>