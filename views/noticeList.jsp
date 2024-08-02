<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>공지사항</title>
	<style>
		.con {
			margin: auto;
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
		<h1>공지사항</h1>
		<br>
		<div class="position-relative m-3 notice-search">
			<form action="${contextPath}/noticeList.do" method="get" id="searchForm" name="searchForm">
				<select id="noticeSearch" name="noticeSearch">
					<option value="noticeTitle">제목</optioin>
					<option value="noticeContent">내용</optioin>
				</select>
				<input type="text" class="inputSearch" name="keyword" placeholder="검색어를 입력해주세요.">
				<button class="btn btn-success btn-sm" type="button" value="검색">검색
			</form>	
		</div>
		<table class="notice-table">
		    <tr class="header">
		        <td class="noticeNo">번호</td>
		        <td class="noticeTitle">제목</td>
		        <td class="noticeWriter">작성자</td>
		        <td class="noticeRegDate">등록일자</td>
		    </tr>
			<c:forEach items="${notice}" var="notice">
				<tr>
					<td>${notice.noticeNo}</td>
					<th><a href="${contextPath}/noticeDetail?noticeNo=${notice.noticeNo}" class="atag">${notice.noticeTitle}</a></th>
					<td>${notice.noticeWriter}</td>
					<td>${notice.noticeRegDate}</td>
				</tr>
			</c:forEach>
		</table>
		<div class="noticePaging">
			<c:forEach var="no" begin="1" end="${repeat}">
				<a href="notice?no=${no}" class="atag">${no}</a>
			</c:forEach>			
			<button class="btn btn-success btn-sm buttonAdd"><a href="noticeAdd.do" class="atag">등록</a></button>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>