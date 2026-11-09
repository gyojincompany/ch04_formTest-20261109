<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>닉네임과 비밀번호 입력</title>
</head>
<body>
	<script type="text/javascript">
		function nickCheck() {
			
			var f = document.nicknameForm;
			
			//닉네임의 모든 문자는 영문 대문자로만 입력가능
			for(i=0;i<f.nickname.value.length;i++) {
				
				if(!(f.nickname.value.charAt(i) >= 'A' && f.nickname.value.charAt(i) <= 'Z')) {
					alert("닉네임은 모두 영문 대문자로만 입력해주세요.");
					f.nickname.focus();
					return false;
				}
			}
			
			//비밀번호는 숫자만 입력가능
			if(isNaN(f.password.value)) { //참->숫자가 아닌 경우
				alert("비밀번호는 숫자만 입력 가능합니다!");
				f.password.focus();
				return false;
			}
		}	
	
	
	</script>

	<h1>닉네임과 비밀번호 입력</h1>
	<hr>
	<form action="nicknameok.jsp" name="nicknameForm" onsubmit="return nickCheck()">
		닉네임 : <input type="text" name="nickname"><br><br>
		비밀번호 : <input type="password" name="password"><br><br>
		<input type="submit" value="신청하기">
	</form>
</body>
</html>