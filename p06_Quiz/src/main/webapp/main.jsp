<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
	String ckId= (String) session.getAttribute("skey");
	
%>  
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>메인페이지</title>
	<link rel="stylesheet" href="style/style.css">
</head>
<body>

	<div id="wrap">
		<h2>GNB 메뉴 Login 세션처리</h2>
		<div id="gnbArea">
		<div id="home"><a href="main.jsp">Home</a></div>
		<div id="gaip"><span>회원가입</span></div>
		<div id="login">
		  <% if (ckId != null) { %>
                    
                    <a href="member/logout.jsp">로그아웃</a>
                    
                    
                <% } else { %>
                    <a href="member/login.jsp">로그인</a>
                    
                <% } %>
            </div>  
             </div>  
	<hr>
	<div id="footer">

	<h3>메인 페이지(<%= ckId != null ? ckId + "님 로그인 상태" : "로그아웃상태" %>)</h3>
	
	</div>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    