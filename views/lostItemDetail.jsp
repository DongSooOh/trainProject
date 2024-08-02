<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>유실물 안내</title>
	<style>
		.con {
			margin:auto;
			width: 1200px;
		}
		.lostItem-table {
		    margin: auto;
		    width: 1200px;
		    border-radius: 5px;
		    border-collapse: collapse;
		    border-top: none;
		}
		.header {
		    background-color: rgb(226, 240, 217);
		    text-align: center;
		}
		.lostItem-table td, .lostItem-table th {
		    height: 30px;
		    font-size: 14px;
		}
		.lostItemAddForm {
			margin: 20px;
			border: 1px solid #ccc;
			ping: 30px;
			border-radius: 15px;
		}
		.no {
		    width: 50px;
		}
		.title {
		    width: 500px;
		}
		.body {
		    text-align: center;
		}
		.body .title {
		    text-align: left;
		}
		.button {
			margin: 10px;
			text-align:center;
		}
		button {
		    width: auto;
		    font-size: 15px;
		    border: 0;
		    outline: 1.5px gray solid;
		    border-radius: 5px;
		    ping-left: 10px;
		}
		.lostItem-search {
			border: 1px, solid, #ccc;
			margin:5px;
			ping:10px;
		}
		.label{
			display:flex;
		}
		.lostItemDetail {
			width:90%;
		}
		.atag {
			text-decoration: none;
			color: white;
		}
		.buttonSet {
			display:flex;
		}
		.deletebutton {
			display:inline;
		}
		#lostItemList-btn {
			margin-top:5px
		}
		.lostItemMod {
			flex:4;
		}
		.lostItemList {
			position:relative;
			right: 10%;
		}
		.atag {
			text-decoration: none;
			color: white;		
		}
		.lostItemContent {
			height: 400px;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div class="con">
		<h1>유실물 안내</h1>
		<br>
		<div class="lostItemDetail">
			<div class="lostItemHeader border-top border-success, border-bottom border-success py-2 m-2">
				<div class="d-inline text-bg-light">품목</div>
				<div class="d-inline ps-2">(품목) ${lostItemDetail.lostItemTitle}</div>
			</div>
			<div class="lostItemHeader border-top border-success, border-bottom border-success py-2 m-2 d-flex justify-content-between">
				<div class="d-inline text-bg-light">보관장소</div>
				<div class="d-inline ps-2">(보관장소) ${lostItemDetail.lostItemLocation}</div>
				<div class="d-inline text-bg-light">등록일자</div>
				<div class="d-inline">(등록일자) ${lostItemDetail.lostItemRegDate}</div>
			</div>
			<div calss="ms-2">
				<div class="lostItemContent border-bottom border-success py-2 m-2">
					<p class="m-2">(내용: 습득장소는 ~~이며, 검정색 장우산입니다.) ${lostItemDetail.lostItemContent}</p>
				</div>
			</div>								
		</div>
		<div class="buttonSet">
			<div class="lostItemMod">
				<form class="deletebutton" action="${contextPath}/lostItemDelete.do/${lostItem.lostItemNo}" method="get" onsubmit="return confirm('정말로 삭제하시겠습니까?');">
					<button type="submit" class="btn btn-success btn-sm m-2">삭제</button>
				</form>
			</div>	
			<div class="lostItemList">
				<button type="submit" class="btn btn-success btn-sm lostItemList">
					<a href="${contextPath}/lostItemList.do" class="atag">목록</a>
				</button>
			</div>
		</div>
	</div>	
	<jsp:include page="footer.jsp" />
</body>
</html>