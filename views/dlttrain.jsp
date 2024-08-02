<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<script src="../js/calender.js"></script>
<!DOCTYPE html>
<html>
<head>
<title>DLT 관광열차</title>

<style>
	.dltheader{
		background-color:green;
		height:30px;
	}
	.dlt{
		padding:20px;
	}
	.dlttitle{
		text-align: center;
	}
	.dltcontent{
		display: flex;
	}
	.dltimg img{
		border-radius: 10px;
	}
	#carouselExampleIndicators{
		margin-right: 30px;
		width: 65%;		
	}
	.people{
		display: flex;
		align-items: flex-start;
	}
	.no{
		margin-left: 10px;
		font-size: 12px;
	}
	.tourdetail{
		text-align: center;
		width: 100px;
		border: 1px solid black;
		border-radius: 10px 10px 0 0;
		border-bottom: 0px;
		background-color: rgb(240, 240, 240);
	}
	#detail, #detail2, #detail3{
		padding: 10px;
	}
	.content{
		background-color: rgb(226, 240, 217);
		font-size: 20px;
		font-weight: bold;
	}
	
	a { color:#000000; text-decoration:none; }
	.scriptCalendar { text-align:center; }
	.scriptCalendar > thead > tr > td { width:50px;height:50px; }
	.scriptCalendar > thead > tr:first-child > td { font-weight:bold; }
	.scriptCalendar > thead > tr:last-child > td { background-color: rgb(226, 240, 217); }
	.scriptCalendar > tbody > tr > td { width:50px;height:50px; }
	.calendarBtn { cursor:pointer; } 
	
</style>


</head>
<body>
	<div class="dltheader">
	</div>
	<br>
	<div class="dlt">
		<h1 class="dlttitle">DLT 바다열차 속초↔양양</h1>
		<br>
			<div class="dltcontent">
				<div id="carouselExampleIndicators" class="carousel slide">
	  				<div class="carousel-indicators">
	    				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  				</div>
	  				<div class="carousel-inner">
	    				<div class="carousel-item active">
	      					<img src="../img/seatrain.png" class="d-block w-100 h-80" alt="...">
	    				</div>
	    				<div class="carousel-item">
		      				<img src="../img/seatrain2.JPG" class="d-block w-100 h-80" alt="...">
		    			</div>
	    				<div class="carousel-item">
	      					<img src="../img/seatrain3.jpg" class="d-block w-100 h-80" alt="...">
	    				</div>
	  				</div>
	  				<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
	    				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    				<span class="visually-hidden">Previous</span>
	  				</button>
	  				<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
		    			<span class="carousel-control-next-icon" aria-hidden="true"></span>
		    			<span class="visually-hidden">Next</span>
	  				</button>
				</div>

		<div class="dltname">
			<h6><b>상품번호 : DLT1005</b></h6>
			<h6><b>상품명 : DLT 바다열차</b></h6>
			<div class="people">	
				<h6><b>예약 인원 : </b></h6>	
				<select class="no" style="font-size:14px">	
					<option>1명</option>
					<option>2명</option>
					<option>3명</option>
					<option>4명</option>
					<option>5명</option>
					<option>6명</option>
					<option>7명</option>
					<option>8명</option>
					<option>9명</option>
					<option>10명</option>				
				</select>
			</div>
				<h6><b>여행 날짜 : </b><span id="selectedDateDisplay">날짜를 선택하세요</span></h6>
				<input type="hidden" id="selectedDate" name="selectedDate">
			<div>
	    		<table class="scriptCalendar">
	        		<thead>
	    		        <tr>
    	            		<td class="calendarBtn" id="btnPrevCalendar">&#60;&#60;</td>
        	        		<td colspan="5">
            	        		<span id="calYear">YYYY</span>년
                	    		<span id="calMonth">MM</span>월
                			</td>
                			<td class="calendarBtn" id="nextNextCalendar">&#62;&#62;</td>
           				</tr>
			            <tr>
    	    		        <td>일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td>
        	    		</tr>
        			</thead>
        			<tbody></tbody>
    			</table>
			</div>
				<input type="button" value="예매하기">
		</div>	
	</div>
	<ul class="nav nav-underline">
		<li class="nav-item">
	    	<a class="nav-link active" aria-current="page" href="#">상세 설명</a>
  		</li>
  		<li class="nav-item">
		    <a class="nav-link" href="#detail2">요금안내</a>
	  	</li>
  		<li class="nav-item">
		    <a class="nav-link" href="#detail3">참고사항</a>
	  	</li>  
	</ul>
	<div id="detail">
		<p>CRX 와 30년 여정을 함께한 오동수 기관사님과 그와 함께 달려온 DLT(DongSoo Love Train)열차를 타고 떠나는 바다여행</p>
		<p>매일 14시 출발!(※당일 12시 이전까지만 예약이 가능합니다.)<p> 
			<b>[14:00]</b><br>
			<span style="color:red">속초역 </span>출발<br>
			<br>
			<b>[15:00]</b><br>
			양양역 도착<br>
			<br>
			<b>[17:00]</b><br>
			<span style="color:red">양양역 </span>출발<br>
			<br>
			<b>[18:00]</b><br>
			속초역 도착<br>	
	</div>
	<br>
	<br>
	
	<p class="content">요금안내</p>
	<div id="detail2">		
		<div class="faretable">
			<div>
				<table>
					<tbody>
						<tr style="text-align:center">
							<td>구분</th>
							<td>금액</th>
						</tr>
						<tr>
							<td>월~일요일, 공휴일</td>
							<td>10,000</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<br>
	<br>
	
	<p class="content">참고사항</p>
	<div id="detail3">		
		<img src="../img/button.gif" style="width:20px">열차 탑승 안내
		<h6>
			1. 인원, 출발일 선택 후 결제완료<br>
			※달력에서 선택하는 날짜는 출발하는 날짜입니다.<br>
			2. 직원 안내 없이 개별탑승입니다.<br>
			3. 출발일, 열차 출발 20분 전까지 탑승역에 도착하셔서 [열차 타는 곳] 확인 후 개별탑승 바랍니다.<br>
			※ 상품 특성상 당일 12시 이전까지만 예약이 가능합니다.<br>
			※ 원하시는 탑승역을 예약 시 고객요청사항에 기입하시거나 전화로 말씀해주세요.<br>			
			※ 확정 열차편에 따라 경유역에 차이가 있으니 참고 부탁 드립니다.
		</h6>
		<br>
		<img src="../img/button.gif" style="width:20px">예약 방법
		<h6>
			1.원하시는 상품 선택 ⇢ 인원 기입 ⇢ 출발일 선택 ⇢ 예약하기 ⇢ 가예약 접수<br>
			2.가예약 접수 후 24시간 이내(영업일 기준) 담당자가 확인하여 문자메시지로 안내 드립니다.<br>
			3.예약금(총 금액의 10%, 이후 일주일 전 완납) 또는 총 금액 결제 안내 드립니다.<br>
			4.가상계좌는 발행 다음날 17시까지, 카드결제는 당일 자정까지 유효합니다.<br>
			5.결제가 완료되어야 [예약완료] 상태로 전환되며, 결제 전 상품이 마감되었을 경우 예약건이 취소됩니다.<br>
			6.결제완료 후 [예약확인/결제]에서 예약상태 확인 가능합니다.<br>
			7.온라인 예약 접수 시 취소/변경 규정에 동의한 것으로 간주됩니다.
		</h6>
		<br>
		<img src="../img/button.gif" style="width:20px">예약 시 유의사항
		<h6>
			1.왕복열차 및 버스의 방향 및 좌석지정은 절대 불가능하오니, 이점 유의하여 주시기 바랍니다.<br>
			2.이미 발권된 열차를 개인사정으로 놓치신 경우에는 반환, 변경이 불가능하며, 개별적으로 티켓 구매하셔야 합니다.<br>
			3.여행자는 여행 출발 이후 본인의 사정으로 숙박, 식사, 관광 등 여행요금에 포함된 서비스를 제공받지 못한 경우 국내여행 표준약관 제10조 6항에 의거, 여행사에게 그에 상응하는 요금의 환급을 청구할 수 없습니다.<br>
			4.열차 출발시간 및 일정은 변경될수 있으며 변경시 사전통보하여 드립니다.<br>
			5.예약하신 상품의 취소와 변경은 평일 근무시간 내에 전화로만 가능합니다.<br>
			※평일:월~금요일 09:00~18:00
		</h6>
	</div>
	</div>
</div>
<script src="../js/tago.js"></script>
</body>
</html>