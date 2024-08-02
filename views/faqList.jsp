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
		<h1>FAQ</h1>
		<br>
		<div class="position-relative m-3 faq-search">
			<form action="${contextPath}/faqList.do" method="get" id="searchForm" name="searchForm">
				<select id="faqSearch" name="faqSearch">
					<option value="faqTitle">제목</optioin>
					<option value="faqContent">내용</optioin>
				</select>
				<input type="text" class="inputSearch" name="keyword" placeholder="검색어를 입력해주세요.">
				<button class="btn btn-success btn-sm" type="button" value="검색">검색
			</form>	
		</div>
		<table class="faq-table">
		    <tr class="header">
		        <td class="faqNo">번호</td>
		        <td class="faqTitle">제목</td>
		        <td class="faqWriter">작성자</td>
		        <td class="faqRegDate">등록일자</td>
		    </tr>
			<c:forEach items="${faq}" var="faq">
				<tr>
					<td>${faq.faqNo}</td>
					<th><a href="${contextPath}/faqDetail?faqNo=${faq.faqNo}" class="atag">${faq.faqTitle}</a></th>
					<td>${faq.faqWriter}</td>
					<td>${faq.faqRegDate}</td>
				</tr>
			</c:forEach>
		</table>
		<div class="faqPaging">
			<c:forEach var="no" begin="1" end="${repeat}">
				<a href="faq?no=${no}" class="atag">${no}</a>
			</c:forEach>			
			<button class="btn btn-success btn-sm buttonAdd"><a href="faqAdd.do" class="atag">등록</a></button>
		</div>
	</div>	
	<jsp:include page="footer.jsp" />
</body>
</html>