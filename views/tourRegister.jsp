<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관광상품 등록</title>
<style>
	.title{
		position: relative;
		left: 19%;
		margin-bottom: 30px;
	}
	.dlt{
		width: 1000px;
		margin: auto;
		padding:20px;
	}
	.dltname{
		border: 1px dotted gray;
		width:350px;
		height: 490px;
	}
	.dlttitle{
		text-align: center;
	}
	.dltcontent{
		display: flex;
	}
	#images{
		border: 1px dotted gray;
		margin-right: 25px;
		width: 60%;		
	}
	.people{
		display: flex;
		align-items: flex-start;
	}
	.tourdetail{
		text-align: center;
		width: 100px;
		border: 1px solid black;
		border-radius: 10px 10px 0 0;
		border-bottom: 0px;
		background-color: rgb(240, 240, 240);
	}
	.content{
		background-color: rgb(226, 240, 217);
		font-size: 20px;
		font-weight: bold;
	}
	.button{
		text-align: center;
		margin-top: 10px;
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
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />

	<div class="title">
		<h1>관광상품 등록페이지</h1>
	</div>
	<form>
		<div class="dlt">
			<div class="dlttitle">
				<h1><input type="text" style="width:500px" value="${tour.title}" placeholder="상품제목을 입력해주세요."></h1>
				<h5><input type="text" style="width:300px" value="${tour.ment}" placeholder="간단설명을 입력해주세요."></h5>
			</div>
		<br>
		<div class="dltcontent">
			<div id="images">
		 		<p>※이미지 파일을 등록해주세요※</p>
				<input type="file" value="${tour.file1}">
				<input type="file" value="${tour.file2}">
				<input type="file" value="${tour.file3}">
			</div>
		
		<div class="dltname">
			<h6><b>상품번호 : <input type="text" value="${tour.tourno}"></b></h6>
			<h6><b>상품명 : <input type="text" value="${tour.tourname}"></b></h6>
			<div class="people">	
				<h6><b>예약 인원 : </b></h6>	
			</div>
			<h6><b>여행 날짜 : </b><span id="selectedDateDisplay"></span></h6>
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
			<textarea cols="125" rows="10" value="${tour.content}"></textarea>
		</div>
		<br>
		<br>
		
		<p class="content">요금안내</p>
		<div id="detail2">		
			<textarea cols="125" rows="5" value="${tour.cost}"></textarea>
		</div>
		<br>
		<br>
		
		<p class="content">참고사항</p>
		<div id="detail3">		
			<textarea cols="125" rows="10" value="${tour.noted}"></textarea>
		</div>
			<div class="button">
				<input type="button" class="btn btn-success my-10" value="등록">
			</div>		
		</div>		
	</div>
	</form>
</body>
</html>