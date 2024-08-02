<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>FAQ</title>
	<style>
		.con {
			margin:auto;
			width: 1200px;
		}
		.faq-table {
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
		.faq-table td, .faq-table th {
		    height: 30px;
		    font-size: 14px;
		}
		.faqAddForm {
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
		.faq-search {
			border: 1px, solid, #ccc;
			margin:5px;
			padding:10px;
		}
		.label{
			display:flex;
		}
		.faqDetail {
			width:90%;
		}
		.faqMod a {
			text-decoration: none;
			color: white;
		}
		.buttonSet {
			display:flex;
		}
		.deletebutton {
			display:inline;
		}
		#faqList-btn {
			margin-top:5px
		}
		.faqMod {
			flex:4;
		}
		.faqList {
			position:relative;
			right: 10%;
		}
		.atag {
			text-decoration: none;
			color: white;		
		}
		.faqContent {
			height: 400px;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div class="con">
		<h1>FAQ</h1>
		<br>
		<div class="faqDetail">
			<div class="faqHeader border-top border-success, border-bottom border-success py-2 m-2 d-flex justify-content-between">
				<div class="d-inline ps-2">(제목) ${faqDetail.faqTitle}</div>
				<div class="d-inline text-bg-light">등록일자</div>
				<div class="d-inline">(등록일자) ${faqDetail.faqRegDate}</div>
			</div>
			<div calss="faqContent ms-2">
				<div class="faqContent border-bottom border-success py-2 m-2">
					<p class="m-2">(내용) ${faqDetail.faqContent}</p>
				</div>
			</div>								
		</div>
		<div class="buttonSet">
			<div class="faqMod">
				<button type="reset" class="btn btn-success btn-sm m-1 faqMod">
					<a href="${contextPath}/faqMod.do/${faq.faqNo}" class="atag">수정</a>
				</button>
				<form class="deletebutton" action="${contextPath}/faqDelete.do/${faq.faqNo}" method="get" onsubmit="return confirm('정말로 삭제하시겠습니까?');">
					<button type="submit" class="btn btn-success btn-sm m-2">삭제</button>
				</form>
			</div>	
			<div class="faqList">
				<button type="submit" class="btn btn-success btn-sm faqList">
					<a href="${contextPath}/faqList.do" class="atag">목록</a>
				</button>
			</div>
		</div>
	</div>
	

	<a href="faqMod.do">수정페이지 이동</a>
	
	<jsp:include page="footer.jsp" />
</body>
</html>