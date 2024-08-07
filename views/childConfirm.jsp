<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>본인인증</title>
<style>
	#wrapper {
        text-align: center;
        width: 1200px;
        margin: auto;
        padding: 20px;
    }

	.confirm_img{
		margin-top: 80px;
	}
	.hrline{
		position:relative;
		right:-15%;
		width:70%;
	}
	.confirm_button{
		margin-top: 100px;

	}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
	
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div id="wrapper">
		<div class="confirm_top">
		<h1>보호자 휴대폰 인증</h1>
		</div>
		어린이 회원(14세 미만)은 보호자의 동의 절차가 필요합니다.
		<br><hr class="hrline">
		
		<div class="confirm_img">
			<img src="../img/phone.png" alt="phone">
		</div>
		
		<div class="confirm_button">
		        <button type="button" class="btn btn-success" onclick="openAuthWindow()">휴대폰 인증하기</button>
	    </div>		
	</div>
	

	<a href="minorSignup.do">회원가입 페이지 이동</a>
	
	<script>
	function openAuthWindow() {
	    
	    window.open('https://www.google.co.kr/', 'phoneAuthWindow', 'width=500,height=600');
	}
	</script>
	<jsp:include page="footer.jsp" />
</body>
</html>