<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>replyDetail</title>
	<script>		
		// 댓글 수정
		#("#btnReplyUpdate").click(function() {
			var detailReplyText = $("#detailReplyText").val();
			var replyNo = $("#replyNo").val(); // 댓글 번호
			
			$.ajax({
				type: "put",
				url: "${contextPath}/replyUpdate/${vo.replyNo}",
				// 기본값 text/html을 json으로 변경 
				headers: {
					"Content-Type":"application/json"
				},
				// 데이터를 json 형식으로 변환
				data: JSON.stringify({
					replyText : detailReplyText
				}),
				dataType: "text",
				success: fucntion(result) {
					if (result == "success") {
						$("#modifyReply").css("visibility", "hidden");
						// 댓글 목록 갱신
						listReplyRest("1");
					}
				}
			});
		});
		
		// 댓글 상세화면 닫기
		$("#btnReplyClose").click(function() {
			$("#modifyReply").css("visibility", "hidden");
		});
		
		// 댓글 삭제
		$("#btnReplyDelete").click(function() {
			if (confirm("삭제하시겠습니까?")) {
				$.ajax({
					type: "delete",
					url: "${contextPath}/replyDelete/${vo.replyNo}",
					success: function(result) {
						if (result == "success") {
							alert("삭제되었습니다.");
							$("#modifyReply").css("visibility", "hidden");
							listReplyRest("1");
						}
					}
				});
			}
		});
	</script>	
	<style>
		.container {
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
	</style>
</head>
<body>
	<div class="container m-2">
		<input type="hidden" id="replyNo" value="${vo.replyNo}"><br>
		<textarea id="detailReplyText" class="border-2 border-success m-2 p-2" rows="5" cols="80">${vo.replyText}</textarea>
		<div class="text-center">
			<!-- 본인 댓글만 수정, 삭제가 가능하도록 처리 -->
			<c:if test="${sessionScope.userId == vo.replyer}">
				<button type="button" class="btn btn-success btn-sm text-white" id="btnReplyUpdate">수정</button>
				<button type="button" class="btn btn-secondary btn-sm text-white" id="btnReplyDelete">삭제</button>
			</c:if>
			<button type="button" class="btn btn-secondary btn-sm text-white" id="btnReplyClose">닫기</button>	
		</div>
	</div>		
</body>
</html>	