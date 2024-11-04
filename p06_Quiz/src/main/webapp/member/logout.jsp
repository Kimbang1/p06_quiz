<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="style/style.css?v">
</head>
<body>

	<div id="wrap">
		<%
			//세션 무효화(로그아웃)
			session.invalidate();
			//로그아웃 후 메인 페이지로 리다이렉트
			response.sendRedirect("/main.jsp");
		
		%>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    