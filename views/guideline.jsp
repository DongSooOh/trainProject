<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<meta charset="UTF-8">
	<title>안내사항</title>
	<style>
		.con {
			margin:auto;
			width: 1200px;
		}
		.header {
		    background-color: rgb(226, 240, 217);
		    text-align: center;
		}
		.GLMainImg {
			width: 990px;
			height: 395px;
			background-image: url('../img/GLMainImg.jpg');
			background-size: cover;
			margin: auto;
		}
		.SDImg {
			width: 1200px;
			height: 330px;
			background-image: url('../img/SDImg.jpg');
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
		<h1>안내사항</h1>
		<br>
		<hr>
		<div class="GLMainImg"></div>
		<div class="line"></div>
		<div class="coreService">
			<h3>핵심서비스 이행표준</h3>
			<hr>
			<div class="SDImg"></div>
			<hr>
		</div>
		<div class="line"></div>
		<div class="customerService">
			<h3>고객응대 서비스 이행표준</h3> 
			<p>고객에게 기분 좋은 경험을 제공하기 위해 항상 정중하고 친절한 자세를 유지하겠습니다.<br>
				또한 국민이 원하는 서비스를 제공하기 위해 고객의 의견을 적극 경청하고, 서비스 품질을 지속적으로 관리하겠습니다.<br>
				만약 잘못된 서비스가 제공되었을 경우 즉시 사과드리고 시정 조치하겠습니다.</p><br>
			<div class="aTag text-center">
				<a class="atag btn btn-success" href="../file/CRX 고객응대서비스 이행표준.pdf" download><i class="bi bi-download"></i> 고객응대 서비스 이행표준 다운로드</span></a>
			</div>
		</div>
		<br>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>