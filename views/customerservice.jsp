<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>고객센터</title>
	<style>
		.con {
			margin:auto;
			width: 1200px;
		}
		.header {
		    background-color: rgb(226, 240, 217);
		    text-align: center;
		}
		.CSMainImg {
			width: 1200px;
			height: 600px;
			background-image: url('../img/CSImg.jpg');
			background-size: cover;
		}
		.line {
			margin: 10px 0;
			width:50px;
			height: 50px;
			border-bottom: 5px solid rgb(84, 130, 53);
		}
		li {
			list-style-image: url('../img/tel.jpg');
		}
		li::marker {
			color: rgb(84, 130, 53);			
		}
		hr {
			width: 1200px;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div class="con">
		<h1>고객센터</h1>
		<br>
		<hr>
		<div class="CSMainImg"></div>
		<div class="line"></div>
		<div class="useTime">
			<h3>이용시간</h3>
			<ul>
				<li> 365일 연중무휴</li>
				<li> 상담원 연결: 오전 09시 ~ 오후 5시 40분(ARS 24시간 이용가능)</li>
			</ul>
		</div>
		<div class="line"></div>
		<div class="serviceInfo">
			<h3>CRX 고객센터</h3> 
			<ul>
				<li>회원가입 시 등록한 휴대전화 번호로 1005-1005에 연락하시면 더 빠르게 안내받으실 수 있습니다.</li>
				<li>경로, 장애인 고객으로 등록된 회원이시면 전문상담원을 우선 연결해드립니다.</li>
				<li>이례상황 발생으로 문의량이 증가하면 상담원 연결이 지연될 수 있습니다.<br>
					이런 경우, 긴급 공지를 확인할 수 있는 홈페이지와 챗봇 연결 안내 페이지를 문자로 받으실 수 있습니다.</li>
				<li>전화 외 채팅으로도 상담원 안내를 받으실 수 있습니다.</li>
			</ul>
		</div>
		<br>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>