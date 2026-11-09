<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인</title>
</head>
<body>
	<h1>회원 로그인</h1>
	<hr>
	<script type="text/javascript">
		function checkLogin() {
			
			var f = document.loginform;
			//let, const, var
			
			//현재 페이지에서 memberid(아이디)의 값을 가져와서 빈칸으로 입력되었는지를 확인
			if (f.memberid.value == "") {
				alert("로그인하시려는 아이디를 입력하세요!");
				f.memberid.focus();
				//아이디 입력란으로 커서 이동
				return false; //로그인(submit) 과정을 정지시킴
			}
			
			//아이디가 4~12자 사이만 입력가능하게 유효성 체크
			if (f.memberid.value.length < 4 || f.memberid.value.length > 12) {
				alert("아이디는 4~12 자 사이의 값만 입력하세요!");
				f.memberid.focus();
				//아이디 입력란으로 커서 이동
				return false; //로그인(submit) 과정을 정지시킴
			}
			
			if (f.memberpassword.value == "") {
				alert("로그인하시려는 비밀번호를 입력하세요!");
				f.memberpassword.focus();
				//비밀번호 입력란으로 커서 이동
				return false; //로그인(submit) 과정을 정지시킴
			}
			
			if (f.memberpassword.value.length < 4 || f.memberpassword.value.length > 12) {
				alert("비밀번호는 4~12 자 사이의 값만 입력하세요!");
				f.memberpassword.focus();
				//비밀번호 입력란으로 커서 이동
				return false; //로그인(submit) 과정을 정지시킴
			}
		}
	
	</script>
	
	<form action="loginok.jsp" name="loginform" onsubmit="return checkLogin()">
		아이디 : <input type="text" name="memberid"><br><br>
		비밀번호 : <input type="password" name="memberpassword"><br><br>
		회원등급 : 
		<input type="checkbox" name="memberrank" value="normal"> NORMAL
		<input type="checkbox" name="memberrank" value="vip"> VIP
		<input type="checkbox" name="memberrank" value="vvip"> VVIP 
		<input type="submit" value="로그인">
	</form>
	
</body>
</html>