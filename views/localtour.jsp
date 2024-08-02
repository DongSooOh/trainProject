<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역상품</title>
	<style>
		.title{
			position: relative;
			margin-left: 19%;
			margin-bottom: 50px;
		}
		.tourtable {
		    margin: auto;
		    width: 1200px;
		    border-radius: 5px;
		    border-collapse: collapse;
		    border-top: none;
		}
		.tourheader {
		    background-color: rgb(226, 240, 217);
		    text-align: center;
		}
		.tourtable tr {
		    border-bottom: 1px lightgray solid; 
		    height: 30px;
		    font-size: 14px;
		}
		.tourlist a{
			text-decoration: none;
			color: black;
		}
		.tourlist a:hover{
			color: green;
		}
		.tourlist img{
			margin: 20px 20px 20px 0px;
			width: 200px;
		}
		.tourlist img:hover{			
			transform: scale(1.2);
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />		

	<table class="tourtable">
		<div class="title">
			<h1>지역상품</h1>
		</div> 
	    <tr class="tourheader">
	        <td class="local"><b>지역</b></td>
	        <td class="locallist"><b>상품명</b></td>
			<td></td>
	    </tr>
		<tr class="tourlist">
			<td><a href="https://travel.naver.com/domestic/01790/summary" target='_blank'><img src="../img/local1.jpg" alt="화천군"></a></td>
			<td><a href="https://travel.naver.com/domestic/01790/summary" target='_blank'><h2>화천군</h2>물이 만든 경관이 매력 있는 화천군. 그중에도 '신비로운 물이 빛은 아홉 가지 아름다운 경치'라는 뜻을 가진 비수구미 마을은 숨겨진 명소로 손꼽힌다.</a></td>
			<td><a href="https://travel.naver.com/domestic/01790/summary" target='_blank'><img src="../img/search.png" akt="돋보기" style="width:50px">
		</tr>
		<tr class="tourlist">
			<td><a href="https://travel.naver.com/domestic/01800/summary" target='_blank'><img src="../img/local2.jpg" alt="양구군"></a></td>
			<td><a href="https://travel.naver.com/domestic/01800/summary" target='_blank'><h2>양구군</h2>우리나라 국토의 배꼽 강원도 양구군. 한국전쟁 당시 치열한 격전지 중 하나였던 이곳은 오랜 상처를 치유한 듯 생명의 새살이 돋아났다.</a></td>
			<td><a href="https://travel.naver.com/domestic/01800/summary" target='_blank'><img src="../img/search.png" alt="돋보기" style="width:50px">
		</tr>
		<tr class="tourlist">
			<td><a href="https://travel.naver.com/domestic/01810/summary" target='_blank'><img src="../img/local3.jpg" alt="인제군"></a></td>
			<td><a href="https://travel.naver.com/domestic/01810/summary" target='_blank'><h2>인제군</h2>가을과 겨울 여행지로 제격인 인제군. 단풍 옷이 가장 잘 어울리는 방태산자연휴양림과 가을 풍경이 아름다운 설악산이 자리하고 있다.</a></td>
			<td><a href="https://travel.naver.com/domestic/01810/summary" target='_blank'><img src="../img/search.png" alt="돋보기" style="width:50px">
		</tr>
		<tr class="tourlist">
			<td><a href="https://travel.naver.com/domestic/01820/summary" target='_blank'><img src="../img/local4.jpg" alt="고성군"></a></td>
			<td><a href="https://travel.naver.com/domestic/01820/summary" target='_blank'><h2>고성군</h2>강원도 최북단에 위치한 고성. 고성 통일 전망대는 금강산과 바다의 금강이라고 불리는 해금강의 절경을 감상할 수 있다.</a></td>
			<td><a href="https://travel.naver.com/domestic/01820/summary" target='_blank'><img src="../img/search.png" akt="돋보기" style="width:50px">
		</tr>
		<tr class="tourlist">
			<td><a href="https://travel.naver.com/domestic/01210/summary" target='_blank'><img src="../img/local5.jpg" alt="속초군"></a></td>
			<td><a href="https://travel.naver.com/domestic/01210/summary" target='_blank'><h2>속초군</h2>약 50m 길이의 구름다리를 건너면 바다와 마주할 수 있는 속초 영금정. 일출 명소로도 알려진 이곳은 동해안의 시원한 절경을 감상할 수 있는 최적의 장소이다.</a></td>
			<td><a href="https://travel.naver.com/domestic/01210/summary" target='_blank'><img src="../img/search.png" akt="돋보기" style="width:50px">
		</tr>
		<tr class="tourlist">
			<td><a href="https://travel.naver.com/domestic/01830/summary" target='_blank'><img src="../img/local6.jpg" alt="양양군"></a></td>
			<td><a href="https://travel.naver.com/domestic/01830/summary" target='_blank'><h2>양양군</h2>또 다른 세계와 연결되어 있을 것만 같은 양양의 구룡령 옛길. 낙산사 의상대와 명승지 하조대의 수려한 일출 경관의 화려함은 양양군의 명소로 손꼽힌다.</a></td>
			<td><a href="https://travel.naver.com/domestic/01830/summary" target='_blank'><img src="../img/search.png" akt="돋보기" style="width:50px">
		</tr>
	</table>
	<jsp:include page="footer.jsp" />
</body>
</html>