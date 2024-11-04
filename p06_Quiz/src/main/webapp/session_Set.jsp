<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
	String Id= request.getParameter("id");
	String pwd= request.getParameter("pwd");

	String testid= "test01";
	String testpwd="1234";
	//아이디와 비번 고정 연습
	if(testid.equals(Id) && testpwd.equals(pwd)){
		//로그인 성공시 세션에 사용자 id 저장
		session.setAttribute("skey",testid);
	    response.sendRedirect("main.jsp");
	}else{
		//로그인 실패시 에러 메시지와 함께 로그인 페이지로 이동
		request.setAttribute("erroMessage","아이디 또는 비밀번호가 틀렸습니다.");
		 request.getRequestDispatcher("/member/login.jsp").forward(request, response); 
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>세션처리</title>
	<link rel="stylesheet" href="style/style.css?v">
</head>
<body>
	<div id="wrap">
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    