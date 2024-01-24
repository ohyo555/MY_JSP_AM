<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 페이지</title>
</head>
<body>

	<style type="text/css">
	
	.loginform {
		margin-left: auto;
		margin-right: auto;
		width: 300px;
		text-align: center;
		background-color: rgb(101, 163, 199, 0.3);
		padding: 10px 0px 20px 0px; 
	}
	
	.loginform .form{
		text-align: left;
		margin-left: 10px;
		margin-right: 10px;
	}
	
	.loginform a {
		color: black;
		text-decoration: none;
		display:block;
	}
	
	.loginform .btn{
		margin: 10px 0px;
	}

	</style>
	<div>
		<a href="../home/main">메인으로 돌아가기</a>
	</div>

	<div class = "loginform">
		<h2>로그인</h2>
	
		<script type="text/javascript">
			var LoginForm__submitDone = false;
			var CheckedId = false;
			
			function LoginForm__submit(form) {
				if (LoginForm__submitDone) {
					alert('이미 처리중입니다');
					return;
				}
				var loginId = form.loginId.value.trim();
				var loginPw = form.loginPw.value.trim();
	
				console.log('form.loginId.value : ' + loginId);
				console.log('form.loginPw.value : ' + loginPw);
				
				if (loginId.length == 0) {
					alert('아이디를 입력해주세요');
					form.loginId.focus();
					return;
				}
				if (loginPw.length == 0) {
					alert('비밀번호를 입력해주세요');
					form.loginPw.focus();
					return;
				}
			}
		</script>
		
		<script type="text/javascript">
				function cancel() {
					history.back();
				}
		</script>
		<form method="POST" action="dologin"
			onsubmit="LoginForm__submit(this); return false;">
			<div class = "form id">
				아이디 : <input autocomplete="off" type="text"
					placeholder="아이디" name="loginId" id="loginId" size=25/>
			</div>
			<div class = "form pw">
				비밀번호 : <input autocomplete="off" type="password"
					placeholder="비밀번호" name="loginPw" size=23/>
			</div>
			<div class = "blank">
			</div>
			
			<button type="submit" class = "btn">로그인</button>
			<input type="button" onclick="cancel()" value = "취소" class = "btn">

			<a href="join">회원가입</a>
		</form>
	
	</div>


</body>
</html>