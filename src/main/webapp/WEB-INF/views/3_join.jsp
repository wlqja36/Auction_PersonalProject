<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/8cc7f9d44b.js"
	crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
	
	function idCheck() {
		$.ajax({
			url : "idCheck.do",
			method : "post",
			dataType : "text",
			data : {"u_id":joinForm.u_id.value},
			success : function(data){
				if(data =="1"){
					alert("사용 가능한 id입니다.");
					document.getElementById("u_id").setAttribute("readonly",true);
				}else{
					alert("사용 불가능한 id입니다.");
					document.getElementById("u_id").value ="";
				}
			},
			error : function() {
				alert("아이디 중복확인 에러 관리자에게 연락해주세요.");
			}
		});
	}
	function nickCheck() {
		
		$.ajax({
			url : "nickCheck.do",
			method : "post",
			dataType : "text",
			data : {"u_nick":joinForm.u_nick.value},
			success : function(data){
				if(data =="1"){
					alert("사용 가능한 닉네임입니다.");
					document.getElementById("submit").removeAttribute("disabled");
				}else{
					alert("사용 불가능한 닉네임입니다.");
					document.getElementById("u_nick").value ="";
					document.getElementById("submit").setAttribute("disabled",true);
				}
			},
			error : function() {
				alert("닉네임 중복확인 에러 관리자에게 연락해주세요.");
			}
		});
	}
	function passChk() {
		var u_pw = document.getElementById("u_pw");
		var pwchk= document.getElementById("pwchk");
		var passwordCheckMsg = document.getElementById("passwordCheckMsg");
		var correctColor = "#00ff00";
		var wrongColor = "#ff0000";
		
		if(u_pw.value==pwchk.value){
			passwordCheckMsg.style.color=correctColor;
			passwordCheckMsg.innerHTML ="비밀번호 일치";
			document.getElementById("nickChk").removeAttribute("disabled");
		}else{
			passwordCheckMsg.style.color=wrongColor;
			passwordCheckMsg.innerHTML ="비밀번호 불일치";
			document.getElementById("nickChk").setAttribute("disabled",true);
		}
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
		<form action="joinOk.do" name="joinForm" method="post">
			<div class="login-stay-sign-in"></div>
			<div class="info">
				<span class="info">아이디</span><input required="required" class="info" type="text" name="u_id" id="u_id"
					placeholder="아이디입력"><input type="button" onclick="idCheck()" class="info" value="중복확인" style="padding: 9px; margin-left: 2px;" >
			</div>
			<div class="login-stay-sign-in"></div>
			<div class="info">
				<span class="info">비밀번호</span><input required="required" class="info" type="password" onchange="passChk()" name="u_pw" id="u_pw" placeholder="비밀번호 입력">
			</div>
			<div class="login-stay-sign-in"></div>
			<div class="info">
				<span class="info">비밀번호 확인</span><input required="required" style="display: block; float: left;" class="info" type="password" onchange="passChk()" id="pwchk" placeholder="비밀번호 확인"><p id=passwordCheckMsg style="float: left; color: black;"></p>
			</div>
			<div class="login-stay-sign-in"></div>
			<div class="info">
				<span class="info">이름</span><input required="required" class="info" type="text" name="u_name"
					placeholder="이름 입력">
			</div>
			<div class="login-stay-sign-in"></div>
			<div class="info">
				<span class="info">닉네임</span><input required="required" class="info" type="text" name="u_nick" id="u_nick"
					placeholder="닉네임 입력"><input type="button" disabled="disabled" id="nickChk" onclick="nickCheck()" class="info" value="중복확인" style="padding: 9px; margin-left: 2px;" >
			</div>
		    <div class="login-stay-sign-in"></div>
			<!-- <div class="info" style="display: flex; flex-direction: row;">
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
			
			<div class="login-stay-sign-in"></div> -->
			 <div class="info">
				<span class="info">이메일</span><input required="required" class="info" type="text" name="u_email"
					placeholder="아이디입력">
					
			</div>
			<div class="login-stay-sign-in"></div> 
			<input type="submit" id="submit" disabled="disabled" value="다음" style="padding: 10px 40px 10px 40px; float: right; font-size: 24px;">
		</form>
	</div>
	<div>
		<%@ include file="0_Footer_beom.jsp"%>
	</div>
</body>
</html>