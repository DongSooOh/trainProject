<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<meta charset="UTF-8">
	<title>열차운임 및 시간표</title>
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
		li::marker {
			color: rgb(84, 130, 53);			
		}
		hr {
			width: 1200px;
		}
		.subMenu {
			width: 1200px;
		}
		.subMenu3 {
			background-color: rgb(84, 130, 53);
		}
		.atag {
			display: block;
			text-decoration: none;
			color: white;
		}
		.aBox {
			width: 1200px;
			height: 150px;
		}
		.btnDown {
			width: 300px;
			text-decoration: none;
			color: white;
		}
		.btnPDF {
			image: url("../img/btnPDF.jpg");
			
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div class="con">
		<h1>열차운임 및 시간표</h1>
		<br>
		<hr>
		<div class="subMenu text-center px-2">
			<div class="row bg-secondary">
				<div class="subMenu1 col border border-white bg-secondary"><a href="ticketManagement.do" class="atag fs-5">승차권 구입/환불/분실</a></div>
				<div class="subMenu2 col border border-white bg-secondary"><a href="trainDelayStop.do" class="atag fs-5">열차지연/운행중지</a></div>
				<div class="subMenu3 col border border-white"><a href="trainFaresTime.do" class="atag fs-5">열차운임 및 시간표</a></div>
			 </div>
		</div>
		<div class="line"></div>
		<h4>운임과 요금 <i class="bi bi-train-lightrail-front"></i></h4>
		<h5 class="text-success"><b>철도사업법 제9조에 따라 운임과 요금은 다음과 같이 정의하고 있습니다.</b></h5>
		<ul>
			<li>(운임) 운송수단을 이용하여 장소를 이동한 대가로 수수하는 것을 말합니다.</li>
			<li>(요금) 운송과 관련하여 부가적으로 제공한 서비스에 대한 대가로 수수하는 것으로 특실요금 등을 말합니다.</li>
		</ul>
		<div class="line"></div>
		<h4>열차 운임 <i class="bi bi-coin"></i></h4>
		<div class="aBox border bg-light my-3 text-center d-flex align-items-center justify-content-center">
		    <a class="btnDown btn btn-success align-middle" href="../file/CRX 운임표.pdf" download><i class="bi bi-download"></i> 운임표 다운로드</a>
		</div>
		<div class="line"></div>
		<h4>열차 시간표 <i class="bi bi-clock"></i></h4>
		<div class="aBox border bg-light my-3 text-center d-flex align-items-center justify-content-center">
			<a class="btnDown btn btn-success align-middle" href="../file/CRX 시간표.pdf" download><i class="bi bi-download"></i> 시간표 다운로드</a>
		</div>
		<div class="d-flex align-middle">PDF를 보시려면 Adobe Reader를 설치하셔야 합니다.<a href="https://get.adobe.com/reader/?loc=kr" class="btnPDF" target="_blank"><img src="../img/btnPDF.jpg" alt="PDF 페이지"></a></div>
		<br>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>