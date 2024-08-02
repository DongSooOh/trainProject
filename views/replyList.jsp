<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>replyList</title>
	<style>
		.con {
			margin:auto;
			width: 1200px;
		}
		.qna-table {
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
		.qna-table td, .qna-table th {
		    height: 30px;
		    font-size: 14px;
		}
		.qnaAddForm {
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
		.qna-search {
			border: 1px, solid, #ccc;
			margin:5px;
			ping:10px;
		}
		.label{
			display:flex;
		}
		.qnaDetail {
			width:90%;
		}
		.buttonSet {
			display:flex;
		}
		.deletebutton {
			display:inline;
		}
		#qnaList-btn {
			margin-top:5px
		}
		.qnaMod {
			flex:4;
		}
		.qnaList {
			position:relative;
			right: 10%;
		}
		.qnaContent {
			height: 300px;
		}
		#reply {
			width: 90%;
		}
		.replyContent {
			height: 150px;
		}		
		li {
			list-style: none;
		}
		.replyText {
			width: 90%;
			outline-color: green;
		}
		.atag {
			text-decoration: none;
		}
	</style>
</head>
<body>
	<table style="width:700px">
		<!-- 댓글 목록 -->
		<c:forEach var="row" items="${list}">
			<tr>
				<td>
					${row.userName}(<fmt:formatDate value="${row.regDate}" pattern="yyyy-MM-dd HH:mm" />)
					<br>
					${row.replyText}
					<br>
					<!-- 본인 댓글만 수정버튼 생성 -->
					<c:if test="${sessionScope.userId == row.replyer}">
						<input type="button" id="btnModify" class="btn btn-success btn-sm text-white" value="수정" onclick="showReplyModify('${row.replyNo}')">
					</c:if>
					<hr class="border-3 border-success">
				</td>
			</tr>
		</c:forEach>
		
		<!-- 페이징 -->
		<tr style="text-align: center;">
			<td>
				<!-- 현재 페이지 블럭이 1보다 크면 처음 페이지로 이동 -->
				<c:if test="${replyPage.curBlock > 1}">
					<a href="javascript:listReply('1')" class="atag">
						<button type="button" class="btn btn-success btn-sm text-white">처음</button>
					</a>
				</c:if>
				<!-- 현재 페이지 블럭이 1보다 크면 이전 페이지 블럭으로 이동 -->
				<c:if test="${replyPage.curBlock > 1}">
					<a href="javascript:listReply('${replyPage.prevPage}')" class="atag">
						<button type="button" class="btn btn-success btn-sm text-white">이전</button>
					</a>	
				</c:if>
				<!-- 페이지 블럭 처음부터 마지막 블럭까지 -->
				<c:forEach var="num" begin="${replyPage.blockBegin}" end="${replyPage.blockEnd}">
					<c:choose>
						<c:when test="${num == replyPage.curPage}">
							${num}&nbsp;
						</c:when>
						<c:otherwise>
							<a href="javascript:listReply('${num}')" class="atag">${num}</a>&nbsp;
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<!-- 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 다음 페이지로 이동 -->
				<c:if test="${replyPage.curBlock <= replyPage.totalBlock}">
					<a href="javascript:listReply('${replyPage.nextPage}')" class="atag">
						<button type="button" class="btn btn-success btn-sm text-white">다음</button>
					</a>
				</c:if>
				<!-- 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 끝으로 이동 -->
				<c:if test="${replyPage.curBlock <= replyPage.totalBlock}">
					<a href="javascript:listReply('${replyPage.totalPage}')" class="atag">
						<button type="button" class="btn btn-success btn-sm text-white">끝</button>
					</a>
				</c:if>
			</td>
		</tr>
	</table>
	
	<!-- 댓글 수정 -->
	<div id="modifyReply"></div>				
</body>
</html>			