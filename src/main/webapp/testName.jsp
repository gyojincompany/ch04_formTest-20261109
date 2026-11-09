<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정규표현식 연습</title>
</head>
<body>
	<script type="text/javascript">
		function testCheck() {
			var f = document.testForm;
			
			//이름을 한글만 입력 가능하게 정규식
			var regExpName = /^[가-힣]+$/; //한글 입력
			
			//아이디는 영문 대문자 시작 특수문자 반드시 1자 이상 포함 정규식
			var regExpId = /^(?=.*[!@#$%^&*])[A-Z][A-Za-z0-9!@#$%^&*]+$/;
	
			//비밀번호 정규식
			var regExpPw = /^(?=.*[!@#$%^&*])[A-Z](?!.*([A-Za-z])\1)[A-Za-z0-9!@#$%^&*]{6,}$/;
			
			if(!regExpId.test(f.mid.value)) {
				alert("아이디는 대문자로 시작하고 특수문자가 1개 이상 포함되어야 합니다!");
				return false;
			}
			
			if(!regExpPw.test(f.mpw.value)) {
				alert("비밀번호는 대문자로 시작하고 특수문자가 1개 이상 포함되어야 합니다!");
				return false;
			}
			
			//이름이 한글을 제외한 문자가 입력되었을때 참 판정
			if(!regExpName.test(f.mname.value)) {
				alert("이름은 한글만 입력 가능합니다.");
				return false;
			}
			
		}
	
	</script>
	
	<h1>회원가입</h1>
	<hr>
	<form action="testok.jsp" name="testForm" onsubmit="return testCheck()">
		아이디 : <input type="text" name="mid"><br><br>
		비밀번호 : <input type="password" name="mpw"><br><br>
		회원이름 : <input type="text" name="mname"><br><br>
		이메일 : <input type="text" name="memail"><br><br>
		<input type="submit" value="회원가입"> 
	
	</form>
</body>
</html>