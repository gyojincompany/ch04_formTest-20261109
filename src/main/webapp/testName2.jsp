<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="js/join.js"></script>
<title>정규표현식 연습</title>
</head>
<body>
	
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