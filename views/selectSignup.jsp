<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<style>
	#wrapper {
		text-align: center;
		width: 1200px;
		margin: auto;
		padding: 20px;
		display: flex;
		place-content: center;		
	}

	.fourteen{
		width:150px;
		height:150px;		
	}
	.fourteen:hover{
		transform: scale(1.08);	
	}
	.agelink{
		color: black;
		text-decoration: none;
	}
	.word{
		margin-top:10px;
	}
	
	.hrline{
		position: relative;
	    right: -30%;
	    width: 40%;
	}
	
	.centerWord{
		text-align:center;
	}
	
	.consent {
		border: 1px solid #ccc;
		padding: 20px;
		width: 700px;
		margin: 20px auto;
	}
	.consent-header {
		background-color: rgb(226,240,217);
		color: black;
		padding: 10px;
		text-align: center;
		font-weight: bold;
	}
	.consent-table {
		width: 100%;
		border-collapse: collapse;
		margin-top: 20px;
	}
	.consent-table th, .consent-table td {
		border: 1px solid #ddd;
		padding: 8px;
		text-align: left;
	}
	.consent-table th {
		background-color: #f2f2f2;
	}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<br>
	<h1 class="centerWord">회원가입</h1>
	<br><hr class="hrline">	
	<div class="d-flex justify-content-evenly align-items-center" id="wrapper">
		
		<a href="confirm.do" class="agelink">
		<div class="border rounded-3 border-3 border-success fourteen">
			<div class="word">
				<b>14세 이상 고객</b>
			</div>
			<div>
				<div class="over-img">
					<img src="../img/adult.png">
				</div>
			</div>		
		</div>
		</a>
		<a href="childConfirm.do" class="agelink">
		<div class="border rounded-3 border-3 border-success fourteen">
			<div class="word">
				<b>14세 미만 고객</b>
			</div>
			<div>
				<div class="under-img">
					<img src="../img/child.png">
				</div>
			</div>
		</div>
		</a>
	</div>
	<div class="consent">
		<div class="consent-header">
			만 14세 미만 회원가입을 위한 법정대리인 개인정보 수집·이용 동의서
		</div>
		<p>
			&lt;CRX&gt;는 만 14세 미만 회원가입을 위하여 아래와 같이 법정대리인의 개인정보를 수집·이용하고자 합니다.
			내용을 자세히 읽으신 후 동의 여부를 결정해 주십시오.
		</p>
		<table class="consent-table">
			<tr>
				<th>개인정보 항목</th>
				<th>수집·이용 목적</th>
				<th>보유·이용기간</th>
			</tr>
			<tr>
				<td>성명, 생년월일, 성별, 휴대전화번호, 증명서 발급여부, 본인확인정보(DI)</td>
				<td>만 14세 미만의 회원가입을 위한 법정대리인 동의여부 확인</td>
				<td>
					회원 가입 시 까지(가입 이후 즉시 파기) ※ 본인확인정보(DI)는 만14세 미만 회원 탈퇴 후 30일 보관
				</td>
			</tr>
		</table>
	</div>
	<br>
	<jsp:include page="footer.jsp" />
</body>
</html>
