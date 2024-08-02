<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<meta charset="UTF-8">
	<title>연계교통서비스</title>
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
		.subMenu2 {
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
		<h1>연계교통서비스</h1>
		<br>
		<hr>
		<div class="subMenu subtle bg-secondary text-center px-2">
			<div class="row">
				<div class="subMenu1 col border border-white bg-secondary"><a href="trainService.do" class="atag fs-5">열차서비스</a></div>
				<div class="subMenu2 col border border-white"><a href="linkService.do" class="atag fs-5">연계교통서비스</a></div>
				<div class="subMenu3 col border border-white bg-secondary"><a href="wheelService.do" class="atag fs-5">휠체어서비스</a></div>
			</div>
		</div>
		<div class="line"></div>
		<div>
			<h4>화천역 찾아오시는 길 <i class="bi bi-signpost-2"></i></h4>
			<div class="textBox">
				<div class="d-flex flex-column mb-3">
					<div class="border p-2">
						<div class="d-inline fs-5">지하철 <i class="bi bi-train-front"></i></div>
						<div class="d-inline">
							<ul>
								<li>[일반] 101 , [간선] 402 , [지선] 2412, 3416, 3425, 3426, 4419 , [마을] 강남03, 강남06, 강남06-1<br>
									<span class="fc_red">※탑승 후 ‘쟁골마을’ 정류장 하차</span></li>
								<li>[일반] 101 , [지선] 2412, 3416 , [직행] 1007, 1007-1, 5600, 5700, 6900, [마을] 강남03, 강남06, 강남06-1<br>
									<span class="fc_red">※탑승 후 ‘수서역 5번출구’ 정류장 하차</span></li>
						</div>		
					</div>
					<div class="border p-2">
						<div class="d-inline fs-5">버스 <i class="bi bi-bus-front"></i></div>
						<div class="d-inline">
							<ul>
								<li>수인분당선-3호선 수서역에서 하차 후 환승통로 이용</li>
						</div>
					</div>
					<div class="border p-2">
						<div class="d-inline fs-5">자차 <i class="bi bi-car-front"></i></div>
						<div class="d-inline">
							<ul>
								<li>수서IC에서 밤고개로(0.6km)→광평로(0.2km)→광평로56길(0.2km) <약 4분 소요></li>
								<li>헌릉IC에서 헌릉로(0.2km)→자곡로(2.1km)→밤고개로(1.2km) <약 9분 소요></li>
								<li>송파IC에서 서울외곽순환도로(5.7km)→서울외곽순환도로(5.4km)→탄천동로(1.3km) <약 25분 소요></li>
								<li>양재IC에서 경부고속도로(0.7km)→양지대로(5.3km)→밤고개로(0.5km) <약 19분 소요></li>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="line"></div>
		<div>
			<h4>양구역 찾아오시는 길 <i class="bi bi-signpost-2"></i></h4>
			<div class="textBox">
				<div class="d-flex flex-column mb-3">
					<div class="border p-2">
						<div class="d-inline fs-5">지하철 <i class="bi bi-train-front"></i></div>
						<div class="d-inline">
							<ul>
								<li>[일반] 80, 99, 200, 701, 708-1 , [마을] 19-1, 9A, 9B , [직행] 6001 , [광역] M4130<br>
									<span class="fc_red">※탑승 후 ‘동탄역 포스코’ 정류장 하차</span></li>
						</div>
					</div>
					<div class="border p-2">
						<div class="d-inline fs-5">버스 <i class="bi bi-bus-front"></i></div>
						<div class="d-inline">
							<ul>
								<li>1호선 서동탄역 하차 → '서동탄역신일해피트리' 정류장에서 701번 버스 탑승 → '우남퍼스트빌'정류장 하차 → 도보 5분</li>
								<li>708번 버스 탑승 → '우남퍼스트빌 자이' 정류장 하차 → 도보 9분</li>
								<li>1호선 병점역 하차 → '병점역' 정류장에서 708-1번 버스 탑승 → '우남퍼스트빌'정류장 하차 → 도보 5분</li>
						</div>
					</div>
					<div class="border p-2">
						<div class="d-inline fs-5">자차 <i class="bi bi-car-front"></i></div>
						<div class="d-inline">
							<ul>
								<li>오산IC에서 경부고속도로(7.4km) <약 6분 소요></li>
								<li>기흥IC에서 경부고속도로(5.4km)→봉담동탄고속도로(5.0km)→봉담동탄고속도로(4.3km)→ 경부고속도로(3.4km) <약 19분 소요></li>
								<li>송파IC에서 서울외곽순환도로(5.7km)→서울외곽순환도로(5.4km)→탄천동로(1.3km) <약 25분 소요></li>
								<li>북오산IC에서 봉담동탄고속도로(5.4km)→봉담동탄고속도로(9.2km)→경부고속도로(3.4km) <약 13분 소요></li>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="line"></div>
		<div>
			<h4>인제역 찾아오시는 길 <i class="bi bi-signpost-2"></i></h4>
			<div class="textBox">
				<div class="d-flex flex-column mb-3">
					<div class="border p-2">
						<div class="d-inline fs-5">지하철 <i class="bi bi-train-front"></i></div>
						<div class="d-inline">
							<ul>
								<li>[일반]1-1, 2, 2-2, 810, 17, 27, 29, 3, 35, 36, 5-1<br>
									<span class="fc_red">※탑승 후 ‘평택지제역’ 정류장 하차</span></li>
						</div>		
					</div>
					<div class="border p-2">
						<div class="d-inline fs-5">버스 <i class="bi bi-bus-front"></i></div>
						<div class="d-inline">
							<ul>
								<li>1호선 ‘평택지제역’ 하차 후 환승통로 이용</li>
						</div>
					</div>
					<div class="border p-2">
						<div class="d-inline fs-5">자차 <i class="bi bi-car-front"></i></div>
						<div class="d-inline">
							<ul>
								<li>오성IC에서 서동대로(5.6km)→은실고가길(0.7km)→울성길(0.2km) <약 19분 소요></li>
								<li>송탄IC에서 삼남로(2.0km)→남북대로(1.7km)→지제로(1.4km) <약 17분 소요></li>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>