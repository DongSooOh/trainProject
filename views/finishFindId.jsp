<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<title>회원번호 찾기</title>
<style>
	#wrapper {
        text-align: center;
        width: 1200px;
        margin: auto;
        padding: 20px;
    }
	.rt{
		margin: 3px;
	}	
	.search{
		text-align: center;
	}
	.minititle a{
		color: #000000;
	}
	.guide{
		width: 1200px;
		height: auto;
		background-color: #f8f8f8;
		margin: 2px;
		padding: 5px;
		font-size: 12px;
	}
	.guidep{
		margin-bottom: 3px;
	}

	
</style>
</head>
<body>	 
<jsp:include page="header.jsp" />
<jsp:include page="sidemenu.jsp" />
<div id="wrapper">
	
	<div class="guide">
		<br><br>
		<h4 style="text-align: center;">${username}님의 회원번호는 ${userid}입니다.</h4>
		<br><br>
	</div>
	<br>
	<div style="text-align: center;">
		<button type="button" class="btn btn-success" onclick="location.href='login.do'">로그인 하기</button>
		<button type="button" class="btn btn-success" onclick="location.href='findPwd.do'">비밀번호 찾기</button>
	</div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>