<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<meta charset="UTF-8">
	<title>승차권 구입/환불/분실</title>
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
		.subMenu1 {
			background-color: rgb(84, 130, 53);
		}
		.atag {
			display: block;
			text-decoration: none;
			color: white;
		}
		.cashTable {
			width: 950px;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div class="con">
		<h1>승차권 구입/환불/분실</h1>
		<br>
		<hr>
		<div class="subMenu text-center px-2">
			<div class="row bg-secondary">
				<div class="subMenu1 col border border-white"><a href="ticketManagement.do" class="atag fs-5">승차권 구입/환불/분실</a></div>
				<div class="subMenu2 col border border-white bg-secondary"><a href="trainDelayStop.do" class="atag fs-5">열차지연/운행중지</a></div>
				<div class="subMenu3 col border border-white bg-secondary"><a href="trainFaresTime.do" class="atag fs-5">열차운임 및 시간표</a></div>
			 </div>
		</div>
		<div class="line"></div>
		<h4>구입처 <i class="bi bi-shop"></i></h4>
		<ul>
			<li>홈페이지 http://localhost:8080/main.do</li>
			<li>승차권 자동발매기</li>
			<li>각 지역에 위치한 역</li>
		</ul>	
		<div class="line"></div>
		<h4>구입기간 <i class="bi bi-hourglass-split"></i></h4>
		<ul>
			<li>홈페이지에서 열차 출발 1개월 전 07:00부터 열차 출발 30분 전까지 승차권 구입이 가능합니다.</li>
		</ul>
		<div class="line"></div>
		<h4>결제/발권 <i class="bi bi-ticket-perforated"></i></h4>
		<ul>
			<li>신용카드, 포인트, 현금계좌이체(홈페이지에 한함)를 이용하여 결제 할 수 있습니다.</li>
			<li>결제금액이 50,000원 이상이면 신용카드 할부 결제가 가능합니다.</li>
			<li>결제 후 스마트폰승차권, 홈티켓으로 직접 발권 하실 수 있습니다.</li>
		</ul>		
		<div class="line"></div>
		<h4>환불 <i class="bi bi-cash-coin"></i></h4>
		<ul>
			<li>인터넷(CRX홈페이지)에서 발행 받은 승차권의 운임·요금 환불은 승차권에 기재된 출발역 출발 전까지 인터넷으로 직접<br>환불하실 수 있습니다.</li>
			<li>승차권에 표기된 열차 출발시각 이후에는 역 창구에서만 환불이 가능합니다.</li>
			<li>승차권에 표기된 도착역 도착시각 이후에는 환불 하실 수 없습니다.</li>
			<li>구입한 승차권을 환불하는 경우 환불시점에 따른 위약금이 발생합니다.</li>
			<li>취소/위약금(하단 표 참고)</li>
			<table class="cashTable table-bordered text-center align-middle my-2">
				<colgroup>
					<col style="width: 10%;">
					<col style="width: 10%;">
					<col style="width: 10%;">
					<col style="width: 10%;">
					<col style="width: 10%;">
					<col style="width: 10%;">
					<col style="width: 10%;">
					<col style="width: 10%;">
				</colgroup>
		<!--		<caption>기존 위약금</caption> -->
				<thead>
					<tr class="align-middle">
						<th rowspan="2" class="bg-light">구분</th>
						<th colspan="4" class="bg-light">출발 전</th>
						<th colspan="3" class="bg-light">출발 후</th>
					</tr>
					<tr class="align-middle">
						<th scope="col">2일 전까지</th>
						<th scope="col">1일 전까지</th>
						<th scope="col">출발당일<br>
						~ 1시간 전</th>
						<th scope="col">1시간 전<br>
						~ 출발시간 전</th>
						<th>20분까지</th>
						<th>60분까지</th>
						<th>60분 ~ 도착</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>일반승차권</td>
						<td colspan="2">무 료</td>
						<td>최저위약금</td>
						<td>10%</td>
						<td>15%</td>
						<td>40%</td>
						<td>70%</td>
					</tr>
					<tr>
						<td>단체승차권</td>
						<td>최저위약금 x 인원수</td>
						<td colspan="3">10%</td>
						<td>15%</td>
						<td>40%</td>
						<td>70%</td>
					</tr>
				</tbody>
			</table>
		</ul>
		<div class="line"></div>
		<h4>홈페이지 및 전화환불 접수방법 <i class="bi bi-phone"></i></h4>
		<ul>
			<li>1. 홈페이지에서 환불접수하기 : 홈페이지 > 마이페이지 > 예매관리 > 환불</li>
			<li>2. ARS에서 환불접수하기 : ☏ARS전화(1005-1005) > 메뉴 2번 > 메뉴 1번<br>
			<b>인터넷환불접수는?</b> 현장발권 승차권 소지 고객이 역 창구 방문이 어려워 열차출발 24시간 전부터 출발시간까지의 승차권을 환불접수 신청하는 서비스입니다.<br>
			* 승차권 환불접수 서비스는 특별약정 제도로 운영하며, 이에 동의한 경우에 한하여 접수 가능합니다.<br>
			* 환불 접수한 승차권을 출발일부터 1년 이내 신청한 승차권(원권)을 소지하여 역 창구 방문 후 환불 가능합니다.<br>
			* CRX 홈페이지에서 예매한 승차권은 CRX 홈페이지에서 직접 환불 가능합니다.<br>
			* 환불 접수 신청한 승차권(원권)을 분실 시 환불 받을 수 없습니다.</li>
		</ul>		
		<div class="line"></div>
		<h4>여행구간변경 <i class="bi bi-arrow-left-right"></i></h4>
		<ul>
			<li>여행중 도착역 전에 내리는 경우<br>
			- 이용한 구간의 운임·요금을 제외하고 이용하지 않은 구간의 운임·요금에 대한 출발후 위약금을 뺀 나머지를 환불하여 드립니다.</li>
			<li>도착역을 지나 더 여행하는 경우<br>
			- 승차권에 표기된 도착역을 지나기 전 승무원에게 추가금액을 지불하고 승차권을 재구입하시기 바랍니다.<br>
			 재구입하지 않을 경우 부정승차로 간주되어 정상운임 외에 부가운임을 징수합니다.</li>
		</ul>	
		<div class="line"></div>
		<h4>승차권 분실 <i class="bi bi-ticket-perforated-fill"></i></h4>
		<ul>
			<li>승차권을 분실하는 경우 승차권에 대한 운송·변경 환불을 청구 할 수 없습니다.</li>
			<li>회원번호, 신용카드 등으로 승차권을 구입한 사실이 확인되는 경우 (단, 좌석을 지정하지 않은 승차권은 제외)</li>
			<div class="ticketLoss text-center my-2"><img src="../img/ticketLoss.jpg" alt="승차권 분실"></div>
			<li>아래와 같은 경우 분실로 재발급 받은 승차권의 환불이 불가능합니다.<br>
				- 분실한 승차권이 변경 또는 환불되는 경우<br>
				- 재발행한 승차권을 환불 또는 변경하거나 도착역 전에 내리신 경우</li>
		</ul>	
		<div class="line"></div>
		<h4>위약금 감면 사유 <i class="bi bi-percent"></i></h4>
		<ul>
			<li>1. 역<br>
			- 소지한 승차권의 출발시각 이전으로 변경을 청구하는 경우<br>
			- 열차지연으로 출발시각이 경과하였으나 실제로 열차가 도착하지 않은 경우 출발 전 위약금 적용<br>
			- 사업자 귀책에 따른 열차지연으로 승객이 승차권을 취소하는 경우<br>
			- 운임·요금을 지급하지 않은 무임승차권은 환불 위약금을 수수하되, 차감한 무임횟수 복구<br><br>
			※ 대용 취급 사유 및 승차권 환불번호(고객이 잘못 구입한 승차권 등)를 대용발매 사유란에 명확히 입력하고, 정해진 기준에서 사용</li>
		</ul><br>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>