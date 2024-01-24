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
	
		.joinform {
			margin-left: auto;
			margin-right: auto;
			width: 400px;
			text-align: center;
			background-color: rgb(101, 163, 199, 0.3);
 			padding: 10px 5px 25px 5px; 
/*  			위 오른 아래 왼 */
		}
		
		.joinform .form {
			text-align: left;
			padding:2px;
		}
		
		.joinform .blank {
			height:15px;
		}
	</style>
	<div>
		<a href="../home/main">메인으로 돌아가기</a>
	</div>

	<!-- 	<a href="https://www.naver.com" -->
	<!-- 		onclick="if(confirm('진짜 이동 할거임????') == false) return false;">naver</a> -->
	<div class = "joinform">
		<h2>회원가입</h2>
	
		<script type="text/javascript">
			var JoinForm__submitDone = false;
			var CheckedId = false;
			
			function JoinForm__submit(form) {
				if (JoinForm__submitDone) {
					alert('이미 처리중입니다');
					return;
				}
				// 			form.loginId.value = form.loginId.value.trim();
				var loginId = form.loginId.value.trim();
				var loginPw = form.loginPw.value.trim();
				var loginPwConfirm = form.loginPwConfirm.value.trim();
				var name = form.name.value.trim();
	
				console.log('form.loginId.value : ' + loginId);
				console.log('form.loginPw.value : ' + loginPw);
				console.log('form.loginPwConfirm.value : ' + loginPwConfirm);
				console.log('form.name.value : ' + name);
	
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
				if (loginPwConfirm.length == 0) {
					alert('비밀번호 확인을 입력해주세요');
					form.loginPwConfirm.focus();
					return;
				}
	
				if (loginPw != loginPwConfirm) {
					alert('비밀번호가 일치하지 않습니다.');
					form.loginPw.focus();
					return;
				}
	
				if (name.length == 0) {
					alert('이름을 입력해주세요');
					form.name.focus();
					return;
				}
				
				if (!CheckedId){
					alert('아이디를 중복체크해주세요.');
					return;
				}
			}
		</script>
		<script type="text/javascript">
			function send() {
				var CheckId = document.getElementById('loginId');
				if(CheckId.value == ""){
					alert('아이디를 입력해주세요');
					return;
				} else {
					location.href = "doConfirm?loginId="+ CheckId.value;
				}
				
				CheckedId = true;
			}
		</script>
		<script type="text/javascript">
				function cancel() {
					history.back();
				}
		</script>
		<form method="POST" action="doJoin"
			onsubmit="JoinForm__submit(this); return false;">
			<div class = "form id">
				로그인 아이디 : <input autocomplete="off" type="text"
					placeholder="아이디를 입력해주세요" name="loginId" id="loginId" size=23/>
				<input type="button" onclick="send()" value = "중복체크" class = "id_btn">
			</div>
			<div class = "form pw">
				로그인 비밀번호 : <input autocomplete="off" type="password"
					placeholder="비밀번호를 입력해주세요" name="loginPw" size=32/>
			</div>
			<div class = "form pw_2">
				로그인 비밀번호 확인: <input autocomplete="off" type="password"
					placeholder="비밀번호 확인을 입력해주세요" name="loginPwConfirm" size=27/>
			</div>
			<div class = "form name">
				이름 : <input autocomplete="off" type="text" placeholder="이름을 입력해주세요"
					name="name" size=45/>
			</div>
			<div class = "blank">
			</div>
			<button type="submit">가입</button>
			<input type="button" onclick="cancel()" value = "취소" class = "c_btn">
		</form>
	
	</div>


</body>
</html>