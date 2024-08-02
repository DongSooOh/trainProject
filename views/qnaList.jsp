<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>Q&A</title>
	<script>
		${document}.ready(function() {
			$("#btnAdd").click(function() {
				// 페이지 주소 변경(이동)
				location.href = "${contextPath}/qnaAdd.do";
			});
		});
	</script>	
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
		button {
		    width: auto;
		    font-size: 15px;
		    border: 0;
		    outline: 1.5px gray solid;
		    border-radius: 5px;
		    padding-left: 10px;
		}
		.atag {
			color: white;
			text-decoration:none;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div class="con">
		<h1>Q&A</h1>
		<br>
		<div class="position-relative m-3 qna-search">
			<form action="${contextPath}/qnaList.do" method="get" id="searchForm" name="searchForm">
				<select id="qnaSearch" name="qnaSearch">
					<option value="qnaTitle">제목</optioin>
					<option value="qnaContent">내용</optioin>
				</select>
				<input type="text" class="inputSearch" name="keyword" placeholder="검색어를 입력해주세요.">
				<button class="btn btn-success btn-sm" type="button" value="검색">검색
			</form>	
		</div>
		<table class="qna-table">
		    <tr class="header">
		        <td class="qnaNo">번호</td>
		        <td class="qnaTitle">제목</td>
		        <td class="qnaRegDate">등록일자</td>
		        <td class="qnaStatus">답변상태</td>
		    </tr>
			<c:forEach items="${qna}" var="qna">
				<tr>
					<td>${qna.qnaNo}</td>
					<th><a href="${contextPath}/qnaDetail?qnaNo=${qna.qnaNo}" class="atag">${qna.qnaTitle}</a></th>
					<td>${qna.qnaRegDate}</td>
					<td>${qna.qnaStatus}</td>
				</tr>
			</c:forEach>
		</table>
		<div class="qnaPaging">
			<c:forEach var="no" begin="1" end="${repeat}">
				<a href="qna?no=${no}" class="atag">${no}</a>
			</c:forEach>			
			<button class="btn btn-success btn-sm buttonAdd"><a href="qnaAdd.do" class="atag">등록</a></button>
		</div>
	</div>	
	<jsp:include page="footer.jsp" />
</body>
</html>