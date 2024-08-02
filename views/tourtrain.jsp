<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관광열차</title>
	<style>
		.title{
			position: relative;
			margin-left: 19%;
			margin-bottom: 50px;
		}
		.tourregister input{
			position: relative;
			left: 70%;
			margin:10px;
		}
		.tourregister input:active{
			background-color: green;
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
		.dlttrain{
			margin: 20px 20px 20px 0px;
			width:200px;
			height:120px;
			background-image:url('../img/seatrain.png');
			background-size: cover;
			border:0px;
		}
		.dlttrain:hover{
			transform: scale(1.2);
		}
		.tourlist img:hover{
			transform: scale(1.2);
		}
		.trainimg:hover{
			background-image: url('../img/trainimg2.png');
			background-size:cover;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	
	<div class="title">
		<h1>관광열차</h1>
	</div>
	
	<table class="tourtable">
	    <tr class="tourheader">
	        <td class="local" style="width: 200px;"><b>상품</b></td>
	        <td class="locallist"><b>상품명</b></td>
			<td></td>
	    </tr>
		<tr class="tourlist">
			<td><button onclick="window.open('dlttrain.do','_blank','width=1200, height=1000, top=50, left=50, scrollbars=yes')" class="dlttrain"></button></td>
			<td><a href onclick="window.open('dlttrain.do','_blank','width=1200, height=1000, top=50, left=50, scrollbars=yes')"><h2>DLT 바다여행 속초↔양양</h2>오동수 기관사와 30년 여정을 함께한 DLT 열차를 타고 떠나는 바다여행</a></td>
			<td><a href onclick="window.open('dlttrain.do','_blank','width=1200, height=1000, top=50, left=50, scrollbars=yes')"><img src="../img/search.png" akt="돋보기" style="width:50px"></td>
		</tr>
	</table>
	
	<div class="tourregister">
		<input type="button" class="btn btn-success" value="등록" onclick="location.href='tourRegister.do';">
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
<jsp:include page="footer.jsp" />
</body>
</html>