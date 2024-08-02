<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>공지사항</title>
	<style>
		.con {
			margin:auto;
			width: 1200px;
		}
		.notice-table {
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
		.notice-table td, .notice-table th {
		    height: 30px;
		    font-size: 14px;
		}
		.noticeAddForm {
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
		.notice-search {
			border: 1px, solid, #ccc;
			margin:5px;
			padding:10px;
		}
		.label{
			display:flex;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div class="con">
		<h1>공지사항</h1>
		<br>
		<form action="${contextPath}/noticeUpdate.do" method="post">
			<div class="noticeAddForm">
				<div class="noticeAdd">
					<div class="form-floating mb-3">
						<input type="text" class="form-control" id="noticeTitle" value="${notice.noticeTitle}" placeholder="noticeTitle" autofocus>
						<label for="noticeTitle">변경할 제목을 입력해주세요</label>
					</div>
				</div>
				<div class="form-floating">
					<textarea class="form-control" id="noticeContent" value="${notice.noticeContent}" placeholder="noticeContent" style="height: 350px"></textarea>
					<label for="noticeContent">변경할 내용을 입력해주세요</label>
					<br>
					<input type="file" id="noticeFile" value="${notice.noticeFile}">
				</div>								
			</div>
			<div class="button">
				<button type="submit" class="btn btn-success btn-sm" id="noticeRegist-btn">수정</button>
				<button type="reset" class="btn btn-secondary btn-sm" id="noticeReset-btn">취소</button>
			</div>
			<input type="hidden" name="noticeNo" value="${notice.noticeNo}">
		</form>	
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>