<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원번호 찾기</title>
<c:choose>
	<c:when test="${result == 'confirmFailed'}">
		<script>
			window.onload = function() {
				alert("이름 또는 회원번호가 틀립니다. 확인해주세요");
			}
		</script>
	</c:when>
</c:choose>
<style>
	#wrapper {
		text-align: center;
		width: 1200px;
		margin: auto;
		padding: 20px;
	}
	.confirm_top {
		text-align:center;
	}
	.confirm_middle {
		display: flex;
		align-items: center;
		justify-content: center;
		margin-bottom: 20px;
		margin-top: 40px;
	}
	.confirm_middle .confirm_fields {
		display: flex;
		flex-direction: column;
		margin-right: 20px;
	}
	.confirm_middle div {
		margin-bottom: 10px;
		display: flex;
		align-items: center;
	}
	.confirm_middle label {
		width: 100px;
		text-align: right;
		margin-right: 10px;
	}
	.confirm_middle input[type="text"],
	.confirm_middle input[type="password"] {
		width: 363px;
		border: 1px solid green;
		padding: 5px;
	}
	.confirm_button{
		place-content: center;
		margin-top: 40px;
	}
	.confirm_button input {
		width: 100px;
		height: 40px;
		background-color: green;
		color: white;
		border: none;
		cursor: pointer;
	}

	.button:hover{
		background-color:#198754;
	}
	.hrline{
		position:relative;
		right:-15%;
		width:70%;
	}

</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	
	<div id="wrapper">
		<h1>회원번호 찾기</h1>
		<br><hr class="hrline">
		<div class="confirm_middle">
			<form action="confirm.do" method="post">
				<div class="confirm_fields">
					<div class="form-floating mb-3">
					  <input type="text" class="form-control" id="username" placeholder="username">
					  <label for="username">이름</label>
					</div>
					<div class="form-floating" >
					  <input type="text" class="form-control" id="usertel" placeholder="usertel">
					  <label for="usertel" style="width:auto;">휴대폰번호</label>
					</div>
				</div>
				<div class="confirm_button">
					<button type="submit" class="btn btn-success">휴대폰 인증</button>
				</div>
			</form>
		</div>
		
	</div>
	

	<a href="finishFindId.do">회원번호 찾기 완료 페이지 이동</a>
	
	<jsp:include page="footer.jsp" />
</body>
</html>
