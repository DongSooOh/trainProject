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
			padding: 30px;
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
		    padding-left: 10px;
		}
		button:active {
		    border: 0;
		    border-radius: 5px;
		    outline: 1.5px gray solid;
		    padding-left: 10px;
		    background-color: rgb(84, 130, 53);
		}
		.lostItem-search {
			border: 1px, solid, #ccc;
			margin:5px;
			padding:10px;
		}
		.label{
			display:flex;
		}
		.atag {
			text-decoration: none;
			color: white;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div class="con">
		<h1>유실물 안내</h1>
		<br>
		<form action="${contextPath}/lostItemAdd.do" method="post">
			<div class="lostItemAddForm">
				<div class="lostItemAdd">
					<div class="form-floating mb-3">
					  <input type="text" class="form-control" id="lostItemTitle" placeholder="lostItemTitle" autofocus>
					  <label for="lostItemTitle">품목을 입력해주세요.</label>
					</div>
				</div>
				<div class="lostItemInfo">
					<div class="form-floating mb-3">
						<select id="lostItemLocation" name="lostItemLocation" class="form-select" aria-label="보관장소">
					    	<option value="daejeon">대전 유실물센터</option>
							<option value="seoul">서울 유실물센터</option>
							<option value="chuncheon">춘천 유실물센터</option>
							<option value="hwacheon">화천 유실물센터</option>
							<option value="yanggu">양구 유실물센터</option>
							<option value="inje">인제 유실물센터</option>
							<option value="goseong">고성 유실물센터</option>
							<option value="yangyang">양양 유실물센터</option>
							<option value="sokcho">속초 유실물센터</option>
						</select>
						<label for="lostItemLocation">보관장소</label>
					</div>
				</div>
				<div class="form-floating">
					<textarea class="form-control" id="lostItemContent" placeholder="lostItemContent" style="height: 350px"></textarea>
					<label for="lostItemContent">습득장소를 입력해주세요.(자세히)</label>
				</div>					
			</div>
			<div class="button">
				<button type="submit" class="btn btn-success btn-sm" id="lostItemRegist-btn">등록</button>
				<button type="submit" class="btn btn-secondary btn-sm lostItemList" id="lostItemReset-btn">
					<a href="${contextPath}/lostItemList.do" class="atag">취소</a>
				</button>	
			</div>
		</form>	
	</div>
	

	<a href="lostItemDetail.do">상세페이지 이동</a>
	
	<jsp:include page="footer.jsp" />
</body>
</html>