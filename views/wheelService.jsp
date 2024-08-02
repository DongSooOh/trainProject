<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<meta charset="UTF-8">
	<title>휠체어서비스</title>
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
		.subMenu3 {
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
		li {
			list-style: none;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div class="con">
		<h1>휠체어서비스</h1>
		<br>
		<hr>
		<div class="subMenu subtle text-center px-2">
			<div class="row">
				<div class="subMenu1 col border border-white bg-secondary"><a href="trainService.do" class="atag fs-5">열차서비스</a></div>
				<div class="subMenu2 col border border-white bg-secondary"><a href="linkService.do" class="atag fs-5">연계교통서비스</a></div>
				<div class="subMenu3 col border border-white"><a href="wheelService.do" class="atag fs-5">휠체어서비스</a></div>
			 </div>
		</div>
		<div class="line"></div>
		<div>
			<h4>CRX 교통약자 도우미 서비스 이용안내 <i class="bi bi-person-wheelchair"></i></h4>
			<br>
			<div class="textBox">
				<div class="d-flex flex-column mb-3">
					<ul>
						<li><p><i class="bi bi-1-square"></i> 이동이 불편한 장애인, 노약자, 임산부 등을 위해 열차를 타고 내리실 때 불편함이 없도록 직원이 안내해드립니다.</p></li>
						<li><p><i class="bi bi-2-square"></i> 대상고객 : 보호자 없이 열차를 이용하는 휠체어 이용 고객, 시각장애인, 노약자, 임산부 등 이동에 불편이 있는 고객</p></li>
						<ul>
							<li><i class="bi bi-dot"></i> CRX 교통약자 도우미 서비스 접수 시 성함, 연락처, 연령대, 장애유형 등 개인정보 수집·이용 동의가 가능한 고객께<br>교통약자 도우미 서비스를 제공합니다.</li>
							<li><i class="bi bi-dot"></i> CRX 장애인석 규격으로 인해 700mm X 1,212mm 이하의 휠체어에 한해 서비스를 제공 받을 수 있습니다.</li>
							<li><i class="bi bi-dot"></i> 동시간대 다량의 요청이 있을 경우 신청 순으로 서비스를 제공하며, 직원의 도움 없이 열차 탑승 및 역사 내 이동이 불가능한<br> 시각장애인과 이동에 어려움이 있는 지체장애인 등 장애인복지카드 소지자께 최우선적으로 서비스를 실시합니다.</li>
						</ul><br>
						<li><i class="bi bi-3-square"></i> 이용방법</li>
						<div>
							<img src="../img/wheel.jpg" alt="교통약자 도우미 서비스 이용방법">
						</div><br>
						<li><p><i class="bi bi-4-square"></i> 고객을 배웅하기 위해 역사에 방문하신 고객께서는 더 많은 고객에게 서비스를 제공할 수 있도록 보호자께서 휠체어를 대여하여<br> 이용해 주시기 바랍니다. 단, 휠체어 대여 서비스는 현재 수서역 대상 시범운영 중이며 추후 인제역, 양양역 확대 예정입니다.</p></li>
						<li><p><i class="bi bi-5-square"></i> 열차출발시각 이후까지 휠체어를 반납하시지 않은 고객께는 별도 연락을 드려 휠체어 반환 요청을 드립니다. 반환 요청을<br> 거부하시거나 휠체어를 훼손하신 고객께는 배상을 요구드릴 수 있습니다.</p></li>
					</ul>	
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>