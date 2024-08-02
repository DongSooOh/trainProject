<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<c:choose>
	<c:when test="${result == 'loginFailed'}">
		<script>
			window.onload = function() {
				alert("회원번호 또는 비밀번호가 틀립니다. 다시 로그인 하세요!");
			}
		</script>
	</c:when>
</c:choose>
<style>
	body {
		font-family: Arial, sans-serif;
		background-color: #f5f5f5;
	}
	#wrapper {
		text-align: center;
		width: 100%;
		max-width: 400px;
		margin: 50px auto 20px;
		padding: 20px;
		background-color: #fff;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		border-radius: 8px;
	}
	.login {
	    text-align: center;
	}
	.login_middle {
		display: flex;
		flex-direction: column;
		justify-content: center;
		margin-bottom: 20px;
	}
	.login_middle .login_fields {
		width: 100%;
	}
	.login_middle .login_fields .form-floating {
		margin-bottom: 15px;
	}
	.login_middle label {
		font-weight: bold;
	}
	.login_middle input[type="text"],
	.login_middle input[type="password"] {
		width: 100%;
		padding: 15px;
		border: 1px solid #dbdbdb;
		border-radius: 4px;
		box-sizing: border-box;
	}
	.login_button {
		width: 100%;
		margin-bottom: 15px;
	}
	.login_button .btn-success {
		width: 100%;
		height: 50px;
		background-color: #016f01;
		color: white;
		border: none;
		font-size: 16px;
		font-weight: bold;
		cursor: pointer;
		border-radius: 4px;
	}
	.login_button .btn-success:hover {
		background-color: green;
	}
	.actions {
		display: flex;
		justify-content: space-around;;
	}
	.actions a{
		font-size: 12px;
		color: gray;
		text-decoration: none;
	}
	.actions .btn-success {
		width: 32%;
		padding: 10px;
		border: 1px solid #2db400;
		background-color: #fff;
		color: #2db400;
		cursor: pointer;
		border-radius: 4px;
		font-size: 14px;
		font-weight: bold;
	}
	.actions .btn-success:hover {
		background-color: #2db400;
		color: white;
	}
	.actspan{
		font-size: 12px;	
	}
	.advice {
		margin-top: 20px;
		color: #888;
		font-size: 12px;
		text-align: center;
	}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div class="login">
		<h1>로그인</h1>
	</div>
	<div id="wrapper">

		<div class="login_form">
			<div class="login_middle">
				<form action="${contextPath}/login" method="post">
					<div class="login_fields">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="userid" name="userid" placeholder="userid">
							<label for="userid">회원번호</label>
						</div>
						<div class="form-floating">
							<input type="password" class="form-control" id="userpwd" name="userpwd" placeholder="password">
							<label for="userpwd">비밀번호</label>
						</div>
					</div>
					<div class="login_button">
						<button type="submit" class="btn btn-success">로그인</button>
					</div>
				</form>
			</div>
			<div class="actions">
				<a href='findId.do'">회원번호 찾기</a><span class="actspan">|</span>
				<a href='findPwd.do'">비밀번호 찾기</a><span class="actspan">|</span>
				<a href='signupTerms.do'">회원가입</a>
			</div>
		</div>
	</div>
	<p class="advice">안전한 개인정보관리를 위하여 비밀번호는 3개월마다 변경을 권고합니다.</p>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp" />
</body>
</html>
