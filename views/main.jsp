<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
	    <!-- jQuery와 jQuery UI CSS -->
	    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

	    <!-- jQuery와 jQuery UI JavaScript -->
	    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	    <!-- jQuery UI Datepicker 한글화 -->
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-ui-datepicker/1.12.1/i18n/datepicker-ko.min.js"></script>

	    
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<title>메인 페이지</title>
<style>
	.form-check{
		margin-left: 10px;
	}
	.transferoption{
		margin-left: 20px;
	}
    .ui-datepicker .ui-datepicker-title select {
        font-size: 15px !important;
    }
    .ui-datepicker-title {
        text-align: center;
        font-size: 15px;
        white-space: nowrap;
    }
    .ui-datepicker-year, .ui-datepicker-month {
        width: auto !important;
    }
    .link1, .link2, .link3, .link4, .link5 {
        text-decoration: none;
    }

    .con {
        display: flex;
        width: 100%;
        justify-content: center;
        text-align: center;
        width: 1200px;
        margin: auto;
        padding: 20px;
		
    }
    .wrap {
        display: flex;
        width: 90%;
        flex-direction: column;
        align-items: center;
    }
    .trainimg {
        width: 30px;
        transition: background-image 0.3s ease; /* 배경 이미지가 변경될 때 0.3초 동안 부드럽게 전환 */
		margin-bottom: 8px;
    }
    a:hover .trainimg {
        background-image: url('../img/trainimg2.png');
        background-size: cover;
    }
	.fontspan{
		margin-top: -5px;
		font-size: smaller;
	}
    .top {
        display: flex;
        flex-direction: row;
        justify-content: space-evenly;
        width: 100%;
    }
    .mid {
        display: flex;
        align-items: center;
        width: 100%;
		justify-content: space-between;
    }
    .midRow, .midbutton {
        display: flex;
        width: 100%;
        justify-content: center;
    }
	.midbutton {
	    width: 140px;
	}
	.midbutton:hover{
		transform: scale(1.1);
	}
    .midItem {
        display: flex;
        flex-direction: column;
        align-items: center;
        flex: 1;
        min-width: 0;
        margin: 0 5px;
    }
	.midcontent{
		height: 337px;
		background-color: rgb(226, 240, 217);
		border: 3px solid gray;
		padding: 10px;
		border-radius: 10px;
	}
	.bot {
	    display: flex;
	    width: 100%;
	    padding: 10px;
		border: 3px solid gray;
		border-radius: 10px;
	}
	.bot-left {
	    flex: 2;
	    border: 1px solid black;
	    padding: 10px;
	}
	.bot-right {
	    flex: 1;
	    display: flex;
	    flex-direction: column;
	    justify-content: space-between;
	    
	    padding: 10px;
	}
    .botNotice {
        width: 30%;
        
        padding: 10px;
    }
	.banner {
	    flex: 1;
	    display: flex;
		justify-content: space-between;
	    margin-top: 10px;
		
	}
    .topItem {
        display: flex;
        width: 100px;
        justify-content: center;
        text-align: center;
    }
	.topItem a{
		color:black;
	}
    .item {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    .magnifier1 {
        width: 20px;
        height: 20px;
    }
    .form-group {
        display: flex;
        flex-direction: column;
        width: 100%;
    }
    .btn_midium {
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 10px;
        border: 1.5px solid #000;
        text-decoration: none;
		color: white;
		background-color: rgb(84, 130, 53);
        cursor: pointer;
        text-align: center;
		border: 1px solid green;
		border-radius: 10px;
		margin-bottom: 20px;
    }
    .middleBox {
        display: flex;
        width: 90%;
        justify-content: center;
    }
    .fieldset {
        display: flex;
        flex-direction: column;
        align-items: center;
        border: none;
        width: 100%;
		
    }
    .dropDownJquery, input[type="text"], input[type="button"] {
		font-family: monospace;
        padding: 12px;
        margin: 13px;
        width: 100%;
		height: 44px;
        box-sizing: border-box;
		border: 1px solid green;
		border-radius: 10px;
    }
    .departureStation .arrivalStation .startDate .startTime .adultCount .childCount .form-check-label {
        margin-bottom: 5px;
    }
    
    .mbo {
        width: 80%;        
        margin: auto;
        padding: 15px;
    }
    .bo {
        padding: 15px;
    }
    .notice-item {
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 10px;
        margin-bottom: 10px;
    }
    .notice-item a {
        text-decoration: none;
        color: #000;
    }
    .notice-item a:hover {
        text-decoration: underline;
    }
	#banner1, #banner2{
		width:320px;
		height:220px;
	}
	.radioBox{
		display:flex;
		position:relative;
		left: 75px;
	    top: -73px;
	    align-items: center;
	}
	.calender{
		position:relative;
		left: 34%;
		bottom: 912px;
	}
	.transfer{
		width: 500px;
		margin-left: 10px;
	    margin-top: 30px;
	    border-radius: 10px;
	    border: 3px solid gray;
	}
</style>
</head>
<body>
    <script>
        $(function() {
            // Datepicker 한글화 설정
            $.datepicker.setDefaults({
                closeText: '닫기',
                prevText: '이전달',
                nextText: '다음달',
                currentText: '오늘',
                monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
                monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
                dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
                dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
                weekHeader: '주',
                dateFormat: 'yy-mm-dd',
                firstDay: 0,
                isRTL: false,
                showMonthAfterYear: true,
            });

            // Datepicker 초기화
            $(".calendar1").datepicker({
                changeMonth: true,
                changeYear: true,
                minDate: 0, // 오늘 날짜 이후로만 선택 가능
                beforeShow: function(input, inst) {
                    setTimeout(function() {
                        // 년도를 월 앞에 배치
                        inst.dpDiv.find('.ui-datepicker-title').children().first().before(inst.dpDiv.find('.ui-datepicker-year'));
                        // 년과 월을 같은 줄에 배치
                        inst.dpDiv.find('.ui-datepicker-title select').css('display', 'inline-block');
                        inst.dpDiv.find('.ui-datepicker-title select').css('width', 'auto');
                    }, 0);
                },
                onChangeMonthYear: function(year, month, inst) {
                    setTimeout(function() {
                        // 년도를 월 앞에 배치
                        inst.dpDiv.find('.ui-datepicker-title').children().first().before(inst.dpDiv.find('.ui-datepicker-year'));
                        // 년과 월을 같은 줄에 배치
                        inst.dpDiv.find('.ui-datepicker-title select').css('display', 'inline-block');
                        inst.dpDiv.find('.ui-datepicker-title select').css('width', 'auto');
                    }, 0);
                }
            });
        });

        function selectCalendarInfo(input) {
            $(input).datepicker("show");
        }
    </script>

    <jsp:include page="header.jsp" />

    <div class="con">
        <div class="wrap">
            <div class="top">
                <div class="topItem">
                    <a href="customerservice.do" class="link1">
                        <div class="item">
                            <img src="../img/trainimg.png" class="trainimg">
                            <span class="fontspan">고객센터</span>
                        </div>
                    </a>
                </div>
                <div class="topItem">
                    <a href="lostItemList.do" class="link2">
                        <div class="item">
                            <img src="../img/trainimg.png" class="trainimg">
                            <span class="fontspan">유실물 안내</span>
                        </div>
                    </a>
                </div>
				<div class="topItem">
				    <a href="trainFaresTime.do" class="link3">
				        <div class="item">
				            <img src="../img/trainimg.png" class="trainimg">
				            <span class="fontspan">운임시간</span>
				        </div>
				    </a>
				</div>
                <div class="topItem">
                    <a href="tourtrain.do" class="link4">
                        <div class="item">
                            <img src="../img/trainimg.png" class="trainimg">
                            <span class="fontspan">관광열차</span>
                        </div>
                    </a>
                </div>
                <div class="topItem">
                    <a href="" onclick="window.open('chatbot.do','_blank','width=440, height=650')" class="link5">
                        <div class="item">
                            <img src="../img/trainimg.png" class="trainimg">
                            <span class="fontspan">1:1챗봇</span>
                        </div>
                    </a>
                </div>
            </div>
            <div class="mid">
				<div class="midcontent">
                <form name="search-form" id="search-form" action="#" onsubmit="return false;" method="post">
                    <fieldset class="fieldset">
                        <div class="midRow">
                            <div class="midItem">
                                <label for="departure" class="departureStation"></label>
                                <select name="departure" id="departure" class="dropDownJquery">
                                    <option value selected>출발역</option>
                                    <option value="0001">대전</option>
                                    <option value="0002">오송</option>
                                    <option value="0003">수원</option>
                                    <option value="0004">영등포</option>
                                    <option value="0005">서울</option>
                                    <option value="0006">행신</option>
                                    <option value="0007">광명</option>
                                    <option value="0008">천안아산</option>
                                    <option value="0009">김천</option>
                                    <option value="0010">동대구</option>
                                    <option value="0011">춘천</option>
                                    <option value="0012">화천</option>
                                    <option value="0013">양구</option>
                                    <option value="0014">인제</option>
                                    <option value="0015">고성</option>
                                    <option value="0016">속초</option>
                                    <option value="0017">양양</option>
                                    <option value="0018">강릉</option>
                                </select>
                            </div>
                            <div class="midItem">
                                <label for="arrival" class="arrivalStation"></label>
                                <select name="arrival" id="arrival" class="dropDownJquery">
                                    <option value selected>도착역</option>
                                    <option value="0001">대전</option>
                                    <option value="0002">오송</option>
                                    <option value="0003">수원</option>
                                    <option value="0004">영등포</option>
                                    <option value="0005">서울</option>
                                    <option value="0006">행신</option>
                                    <option value="0007">광명</option>
                                    <option value="0008">천안아산</option>
                                    <option value="0009">김천</option>
                                    <option value="0010">동대구</option>
                                    <option value="0011">춘천</option>
                                    <option value="0012">화천</option>
                                    <option value="0013">양구</option>
                                    <option value="0014">인제</option>
                                    <option value="0015">고성</option>
                                    <option value="0016">속초</option>
                                    <option value="0017">양양</option>
                                    <option value="0018">강릉</option>
                                </select>
                            </div>
                        </div>
                        <div class="midRow">
                            <div class="midItem">
                                <label for="startdate" class="startDate"></label>
                                <input type="text" id="startdate" name="startdate" value="날짜 선택" readonly="readonly" title="출발일자 입력" class="calendar1" onclick="selectCalendarInfo(this)">
                            </div>
                            <div class="midItem">
                                <label for="starttime" class="startTime"></label>
                                <select name="starttime" id="starttime" class="dropDownJquery" title="출발시각 선택">
                                    <option value="000000">00시 이후</option>
                                    <option value="020000">02시 이후</option>
                                    <option value="040000">04시 이후</option>
                                    <option value="060000">06시 이후</option>
                                    <option value="080000">08시 이후</option>
                                    <option value="100000">10시 이후</option>
                                    <option value="120000">12시 이후</option>
                                    <option value="140000">14시 이후</option>
                                    <option value="160000">16시 이후</option>
                                    <option value="180000">18시 이후</option>
                                    <option value="200000">20시 이후</option>
                                </select>
                            </div>
                        </div>
                        <div class="midRow">
                            <div class="midItem">
                                <label for="adultcount" class="adultCount"></label>
                                <select name="adultcount" id="adultcount" class="dropDownJquery">
                                    <option value="0">어른(만 13세 이상) 0명</option>
                                    <option value="1">어른(만 13세 이상) 1명</option>
                                    <option value="2">어른(만 13세 이상) 2명</option>
                                    <option value="3">어른(만 13세 이상) 3명</option>
                                    <option value="4">어른(만 13세 이상) 4명</option>
                                    <option value="5">어른(만 13세 이상) 5명</option>
                                    <option value="6">어른(만 13세 이상) 6명</option>
                                    <option value="7">어른(만 13세 이상) 7명</option>
                                    <option value="8">어른(만 13세 이상) 8명</option>
                                    <option value="9">어른(만 13세 이상) 9명</option>
									<option value="10">어른(만 13세 이상) 10명</option>
                                </select>
                            </div>
                            <div class="midItem">
                                <label for="childcount" class="childCount"></label>
                                <select name="childcount" id="childcount" class="dropDownJquery">
                                    <option value="0">어린이(만 6~12세) 0명</option>
                                    <option value="1">어린이(만 6~12세) 1명</option>
                                    <option value="2">어린이(만 6~12세) 2명</option>
                                    <option value="3">어린이(만 6~12세) 3명</option>
                                    <option value="4">어린이(만 6~12세) 4명</option>
                                    <option value="5">어린이(만 6~12세) 5명</option>
                                    <option value="6">어린이(만 6~12세) 6명</option>
                                    <option value="7">어린이(만 6~12세) 7명</option>
                                    <option value="8">어린이(만 6~12세) 8명</option>
                                    <option value="9">어린이(만 6~12세) 9명</option>
									<option value="10">어린이(만 6~12세) 10명</option>
                                </select>
                            </div>
                        </div>
                        <hr>
                        <div class="midRow">
							<div class="midbutton">
                            <a href="#none" onclick="selectScheduleList(); return false;" class="btn_midium btn_burgundy_dark corner val_m">                                
                                <span><i class="bi bi-search"></i> 간편조회</span>
                            </a>
							</div>
                        </div>
					
                    </fieldset>
                </form>
				</div>

				<div class="midTransfer">
					<form>
						<div class="transferImg">
						<img src="../img/transfer.gif" alt="환승" class="transfer" margin-left:10px; margin-top: 42px;">
						</div>
						<div class="radioBox">
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault" id="transferBus" checked>
						  <label class="form-check-label" for="transferBus">
						    버스
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault" id="transferSubway">
						  <label class="form-check-label" for="transferSubway">
						    지하철
						  </label>
						</div>
						<div class="transferoption">
						<select>
							<option selected>서울역</option>
							<option>광운대역</option>
							<option>수서역</option>
							<option>왕십리역</option>
							<option>망우역</option>
							<option>상봉역</option>
							<option>영등포역</option>
							<option>청량리역</option>
							<option>옥수역</option>
							<option>광운대역</option>
						</select>
						</div>
						<div class="transferoption">
						<input type="submit" class="submit" value="검색">
						</div>
						</div>
					</form>
				</div>
            </div>
			<div class="bot">
			    <div class="bot-left">
			        <div class="botNotice">
			            <c:if test="${not empty message}">
			                <div>${message}</div>
			            </c:if>
			            <div>
			                <div>
			                    공지사항 부분
			                    <c:forEach var="mainBoList" items="${mainBoList}"> 
			                        <div class="notice-item">
			                            <a href="${contextPath}/boListView.do/${mainBoList.board_no}" class="link5">${mainBoList.title}</a>
			                        </div>
			                    </c:forEach>
			                </div>
			            </div>
			        </div>
			    </div>
			    <div class="bot-right">
					<div class="botCarousel">
					    <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel" data-bs-interval="4000">
					        <div class="carousel-inner">
					            <div class="carousel-item active">
					                <img src="../img/carousel1.jpg" class="d-block" style="width:650px; height:350px;"alt="캐러셀1">
					            </div>
					            <div class="carousel-item">
					                <img src="../img/carousel2.jpg" class="d-block" style="width:650px; height:350px;" alt="캐러셀2">
					            </div>
					            <div class="carousel-item">
					                <img src="../img/carousel3.jpg" class="d-block" style="width:650px; height:350px;" alt="캐러셀3">
					            </div>
					        </div>
					        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
					            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					            <span class="visually-hidden">Previous</span>
					        </button>
					        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
					            <span class="carousel-control-next-icon" aria-hidden="true"></span>
					            <span class="visually-hidden">Next</span>
					        </button>
					    </div>
					</div>

			        <div class="banner">
			            <a href="#" class="link1">
			                <img src="../img/transfer.gif" alt="배너1" id="banner1"> 
			            </a>
			            <a href="#" class="link1">
			                <img src="../img/transfer.gif" alt="배너2" id="banner2"> 
			            </a>
			        </div>
			    </div>
			</div>
		</div>
		<div class="calender">
			<img src="../img/tel.jpg">
		</div>
    </div>
	<br>
	<jsp:include page="footer.jsp" />
</body>
</html>
