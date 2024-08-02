<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<meta charset="UTF-8">
	<title>열차지연/운행중지</title>
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
		.subMenu2 {
			background-color: rgb(84, 130, 53);
		}
		.atag {
			display: block;
			text-decoration: none;
			color: white;
		}
		.delayTable {
			width: 950px;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div class="con">
		<h1>열차지연/운행중지</h1>
		<br>
		<hr>
		<div class="subMenu text-center px-2">
			<div class="row bg-secondary">
				<div class="subMenu1 col border border-white bg-secondary"><a href="ticketManagement.do" class="atag fs-5">승차권 구입/환불/분실</a></div>
				<div class="subMenu2 col border border-white"><a href="trainDelayStop.do" class="atag fs-5">열차지연/운행중지</a></div>
				<div class="subMenu3 col border border-white bg-secondary"><a href="trainFaresTime.do" class="atag fs-5">열차운임 및 시간표</a></div>
			 </div>
		</div>
		<div class="line"></div>
		<h4>열차지연 <i class="bi bi-stopwatch"></i></h4>
		<ul>
			<li>천재지변 이외 CRX의 귀책사유로 CRX가 20분 이상 지연된 경우 소비자분쟁해결기준에 정한 금액을 보상하여 드립니다.</li>
			<li>지연승낙한 승차권은 지연배상 대상에서 제외됩니다.</li>
			<table class="delayTable table-border my-2 text-center">
<!--				<caption>열차지연시 배상기준 안내 표</caption>-->
				<colgroup>
					<col style="width: 25%;">
					<col style="width: 25%;">
					<col style="width: 25%;">
					<col style="width: 25%;">
				</colgroup>
				<thead class="border">
					<tr>
						<th class="bg-light border">구분</th>
						<th colspan="3" class="bg-light">SRT</th>
					</tr>
				</thead>
				<tbody class="border">
					<tr>
						<td class="border">지연시간</td>
						<td class="border">20분 이상 40분 미만</td>
						<td class="border">40분 이상 1시간 미만</td>
						<td class="border">1시간 이상</td>
					</tr>
					<tr>
						<td class="border">배상액</td>
						<td class="border">12.5%</td>
						<td class="border">25%</td>
						<td class="border">50%</td>
					</tr>
				</tbody>
			</table>
			<li>특실요금은 보상금액에 포함되지 않습니다.</li>
		</ul>
		<div class="line"></div>
		<h4>배상방법 <i class="bi bi-currency-exchange"></i></h4>
		<ul>
			<li>승차권 구매 결제 수단으로 지연배상금액 반환</li>
			<li>(신용결제) 소비자분쟁해결기준에 정한 금액만큼 열차 지연일 이후 승인 자동 취소<br>
			* 카드사별로 전액 취소후 재결제 될 수 있습니다.<br>
			* 카드 결제일 및 이용하신 카드사에 따라 처리 기간이 상이할 수 있습니다.</li>
			<li>(현금결제)<br>
			① 열차 지연일로부터 1년 이내에 승차권을 SRT 정차역에 제출 후 반환<br>	
			② CRX 홈페이지(www.localhost:8080/main.do)를 통해 계좌이체 신청 <a class="btn btn-success btn-sm m-1" href="delayCompensationRequest.do"><i class="bi bi-box-arrow-up-right"></i> 계좌이체 신청 바로가기</span></a></li>
		</ul>
		<div class="line"></div>
		<h4>운행중지 <i class="bi bi-sign-stop"></i></h4>
		<ul>
			<li>법령, 정부기관의 명령, 전쟁, 소요, 천재지변 등 불가항력적인 사유로 열차운행이 중지되었을 경우 승차하지 않은 구간의 운임·요금을 환불하여 드립니다.</li>
			<li>여행시작전에 여행을 포기하는 경우, 운임·요금 전액을 환불하여 드립니다.</li>
			<li>열차고장, 선로고장, 파업, 노사분규 등 CRX의 책임사유로 열차 운행이 중지되었을 경우 승차권에 표시된 영수금액을 환불하여 드립니다.</li>
		</ul>
		<br>	
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>