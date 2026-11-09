<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		//request 객체안 내용을 빼기전에 utf-8로 셋팅하고 빼기
		request.setCharacterEncoding("utf-8");
	
		String mid = request.getParameter("memberid"); //유저가 입력한 아이디 가져오기
		String mpw = request.getParameter("memberpassword"); //유저가 입력한 비밀번호 가져오기
		//select * from member where memberid = ? and memberpw = ?;
		String[] mrank = request.getParameterValues("memberrank");
		//checkbox 는 하나의 파라미터 이름으로 여러개의 값이 전달되므로 배열형태로 받아야 됨		
		
		System.out.println(mid);
		System.out.println(mpw);	
	%>
	
	<h3><%= mid %>님 로그인 성공!!</h3>
	<h3>입력하신 비밀번호는 <%= mpw %> 입니다.</h3>
	<h3>
		<%
			for(int i=0;i<mrank.length;i++) {
		%>
			당신의 등급은 <%= i+1 %> : <%= mrank[i] %><br>
			
		<%					
			}
		%>
	</h3>
	
</body>
</html>