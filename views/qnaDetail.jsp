<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>Q&A</title>
	<script>
		$(document).ready(function() {
			
			/* 게시글 관련 */
			// 게시글 수정
			$("#btnUpdate").click(function() {
				var title = $("#qnaTitle").val();
				var content = $("qnaContent").val();
										
				if(title == "") {
					alert("제목을 입력해주세요.");
					document.qnaForm.title.focus();
					return;
				}
				if(content == "") {
					alert("내용을 입력해주세요.");
					document.qnaForm.content.focus();
					return;
				}
				document.qnaForm.action = "${contextPath}/qnaUpdate.do"
				// 폼에 입력한 데이러를 서버로 전송
				document.qnaForm.submit();
			});
			
			// 게시글 삭제
			$("#btnDelete").click(function() {
				if(confirm("삭제하시겠습니까?")) {
					document.qnaForm.action = "${contextPath}/qnaDelete.do";
					document.qnaForm.submit();
				}
			});
			
			// 게시글 목록 이동: 버튼 클릭 시 상세보기 화면에 있던 페이지, 검색옵션, 키워드 값을 가지고 목록으로 이동
			$("#btnList").click(function() {
				location.href = "${contextPath}/qnaList.do?curPage=${curPage}&searchOption=${searchOption}&keyword=${keyword}";
			});
			
			/* 댓글 관련 */
			// 댓글 등록
			$("#btnReply").click(function() {
				replyJson(); // json 형식
			});
			
			// 댓글 목록
			listReplyRest("1"); // rest 형식
		});
			
			
			// 댓글 등록(json 형식)
			function replyJson() {
				var replyText = $("#replyText").val();
				var qnaNo = "${qna.qnaNo}"
				
				$.ajax({
					type: "post",
					url: "${contextPath}/replyAdd.do",
					headers: {
						"Content-Type" : "application/json"
					},
					dataType: "text",
					data: JSON.stringify({
						qnaNo : qnaNo,
						replyText : replyText,
					}),
					success: function() {
						alert("댓글이 등록되었습니다.");
						listReplyRest("1"); // Rest 형식
					}
				});
			}
			
			// 댓글 목록 날짜 형식 변환(연-월-일 시:분)까지 표시
			function changeDate(date) {
				date = new Date(parseInt(date));
				year = date.getFullYear();
				month = date.getMonth();
				day = date.getDate();
				hour = date.getHours();
				minute = date.getMinutes();
				strDate = year + "-" + month + "-" + day + "-" + hour + ":" + minute;
				return strDate;
			}
			
			// 댓글 목록(Rest 형식)
			function listReplyRest(num) {
				$.ajax({
					type: "get",
					url: "${contextPath}/replyList/{qna.qnaNo}"+num,
					success: function(result) {
						$("#listReply").html(result);
					}
				});
			}
			
			// 댓글 수정
			function showReplyModify(replyNo) {
				$.ajax ({
					type: "get",
					url: "${contextPath}/replyDetail/" + replyNo,
					success: function(result) {
						$("#modifyReply").html(result);
						// 태그.css("속성", "값");
						$("#modifyReply").css("cisibility", "visible");
					}
				})
			}
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
		#modifyReply {
			width: 600px;
			height: 130px;
			background-color: gray;
			padding: 10px;
			z-index: 10;
			visibility: hidden;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div class="container">
		<h1>Q&A</h1>
		<br>
		<form name="qnaForm" method="post">
			<div class="qnaDetail">
				<div class="qnaHeader border-top border-success, border-bottom border-success py-2 m-2">
					<div class="d-inline text-bg-light">제목</div>
					<div class="d-inline ps-2">(제목) ${qna.qnaTitle}</div>
				</div>
				<div class="qnaHeader border-top border-success, border-bottom border-success py-2 m-2 d-flex justify-content-between">
					<div class="d-inline text-bg-light">등록일자</div>
					<div class="d-inline ps-2">(등록일자) ${qna.qnaRegDate}</div>
					<div class="d-inline text-bg-light">작성자</div>
					<div class="d-inline ps-2">(작성자) ${qna.qnaWriter}</div>
				</div>
				<div calss="ms-2">
					<div class="qnaContent border-bottom border-success py-2 m-2">
						<p class="m-2">(질문 내용입니다.) ${qna.qnaContent}</p>
					</div>
				</div>								
			</div>
			<div class="buttonSet">
				<div class="qnaMod">
					<button type="reset" class="btn btn-success btn-sm m-1 qnaMod">
						<a href="${contextPath}/qnaMod.do/${qna.qnaNo}" class="atag">수정</a>
					</button>
					<form class="deletebutton" action="${contextPath}/qnaDelete.do/${qna.qnaNo}" method="get" onsubmit="return confirm('정말로 삭제하시겠습니까?');">
						<button type="submit" class="btn btn-secondary btn-sm m-2">삭제</button>
					</form>
				</div>	
				<div class="qnaList">
					<button type="submit" class="btn btn-success btn-sm qnaList">
						<a href="${contextPath}/qnaList.do" class="atag">목록</a>
					</button>
				</div>
			</div>
		</form>
		<c:if test="${sessionScope.userId != null}">
			<textarea rows="5" cols="100" class="replyText my-2 p-2" id="replyText" placeholder="댓글을 작성해주세요."></textarea>
			<br>
			<button type="button" class="btn btn-success btn-sm text-end" id="btnReply">등록</button>
		</c:if>
		<!-- 댓글 목록 -->
		<div id="listReply"></div>
	</div>
	

	<a href="qnaMod.do">수정페이지 이동</a>
	
	<jsp:include page="footer.jsp" />
</body>
</html>