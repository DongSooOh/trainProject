<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<meta charset="UTF-8">
	<title>열차서비스</title>
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
			height: 500px;
			background-image: url('../img/CSImg.jpg');
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
		.subMenu1 {
			background-color: rgb(84, 130, 53);
		}
		.atag {
			display: block;
			text-decoration: none;
			color: white;
		}
		.fc_red {
			color: red;
		}
		.textBox {
			width: 1200px;
		}
		.TSText {
			width: auto;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div class="con">
		<h1>열차서비스</h1>
		<br>
		<hr>
		<div class="subMenu subtle bg-secondary text-center px-2">
			<div class="row">
				<div class="subMenu1 col border border-white"><a href="trainService.do" class="atag fs-5">열차서비스</a></div>
				<div class="subMenu2 col border border-white bg-secondary"><a href="linkService.do" class="atag fs-5">연계교통서비스</a></div>
				<div class="subMenu3 col border border-white bg-secondary"><a href="wheelService.do" class="atag fs-5">휠체어서비스</a></div>
			</div>
		</div>
		<div class="line"></div>
		<div>
			<h4>특실서비스 <i class="bi bi-award"></i></h4>
			<div class="textBox border border-success p-3">
				<div class="TSText d-inline">
					<p><b>CRX 특실물품 고객 설문조사 결과를 반영한 고객맞춤 패키지 상품 제공</b></p>
					<ul>
						<li>물품<br>(기본) 생수, 견과류, 다과, 물티슈<br>(선택) 수면안대, 귀마개</li>
						<li>제공방법: 기본제공 물품은 패키지 형태로 모든 특실 고객에게 승무원이 직접 제공하고,<br>선택물품은 고객 요청 시 개별 제공합니다.<br>
							<span class="fc_red">※ 상기 물품은 고객설문조사 결과에 따라 언제든지 변경될 수 있습니다.<br>※ 특실물품은 특실이용고객에게만 제공되는 서비스입니다.</span></li>							
					</ul>
				</div>
			</div>
		</div>
		<div class="line"></div>
		<div>
			<h4>차내 영상광고서비스 <i class="bi bi-badge-ad"></i></h4>
			<div class="textBox border border-success p-3">
				<ul>
					<li>운영사: CRX Ad</li>
					<li>서비스내용: 차내 자동안내방송 및 영상콘텐츠 송출</li>
					<li>광고: 영상, 음성, 래핑, 헤드레스트 광고</li>
					<li>담당자: 이영진 부장(042-1005-1005)</li>
				</ul>
			</div>
		</div>
		<div class="line"></div>
		<div class="md-2">
			<h4>무선인터넷서비스 <i class="bi bi-wifi"></i></h4>
			<div class="textBox border border-success p-3">
				<ul>
					<li>운영사: CRX Telecom</li>
					<li>서비스내용: 매월 50TB 사용 가능(최대 2GB/1인)<br>
						<span class="fc_red">※ 전체 용량 소진 시 사용 제한이 있을 수 있습니다.</span></li>
					<li>고객센터: 1005-1005(09:00 ~ 17:00)<br>
						<span class="fc_red">※ 일부 구간에서 이용 속도가 느리고 장애가 발생할 수 있습니다.</span></li>
				</ul>
			</div>
			<br>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>