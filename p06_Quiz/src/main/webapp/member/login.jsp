<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>    
<% String errMessage = (String) request.getAttribute("erroMessage"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
<form action="../session_Set.jsp" method="post">
	<div id="wrap">
		<h2>로그인 페이지</h2>
		<div id="gnbArea">
		<div id="home">	<div id="home"><a href="../main.jsp">Home</a></div></div>
		<div id="gaip"><span>회원가입</span></div>
		<div id="login"><span>로그인</span></div>	
		</div>
		<hr>
		<div id="insArea">
		<input name="id"  id="id" type="text" placeholder="아이디 입력">
		<input name="pwd" id="pwd" type="text" placeholder="비밀번호 입력">
		</div>
		
		<div id="BtnArea">
		<button id="btn">로그인</button>
	</form>
		</div>
		 <% if (request.getParameter("error") != null) { %>
                <p style="color: red;">로그인 실패! 아이디와 비밀번호를 확인하세요.</p>
            <% } %>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    