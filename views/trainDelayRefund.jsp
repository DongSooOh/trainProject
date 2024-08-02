<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<meta charset="UTF-8">
	<title>열차지연 시 교통비 지급 안내문</title>
	<style>
		.con {
			margin: auto;
			width: 1200px;
		}
		.header {
		    background-color: rgb(226, 240, 217);
		    text-align: center;
		}
		.CSMainImg {
			width: 1200px;
			height: 500px;
			background-image: url('../img/CSImg.jpg');
			background-size: cover;
		}
		.line {
			margin: 10px 0;
			width:50px;
			height: 50px;
			
		}
		li::marker {
			color: rgb(84, 130, 53);			
		}
		hr {
			width: 1200px;
		}
		.subMenu {
			width: 1200px;
		}
		.subMenu1 {
			background-color: rgb(84, 130, 53);
		}
		.atag {
			display: block;
			text-decoration: none;
			color: white;
		}
		li {
			list-style: none;
		}
		.refundBox {
			width: 1200px;
			display: flex;
			justify-content: center;
		}
		.refundImg {
			width: 800px;
			height:350px;
			background-image: url("../img/trainDelayRefund.jpg");
			background-size: cover;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div class="con">
		<h1>열차지연 시 교통비 지급 안내문</h1>
		<br>
		<hr>
		<div class="subMenu subtle text-center px-2">
			<div class="row">
				<div class="subMenu1 col border border-white"><a href="trainDelayRefund.do" class="atag fs-5">열차지연 시 교통비 지급 안내문</a></div>
				<div class="subMenu2 col border border-white bg-secondary"><a href="delayCompensationRequest.do" class="atag fs-5">지연료 계좌반환 신청</a></div>
			 </div>
		</div>
		<div class="line"></div>
		<div class="refundBox">
			<div class="refundImg"></div>
		</div>
	</div>
	<br>
	<jsp:include page="footer.jsp" />
</body>
</html>