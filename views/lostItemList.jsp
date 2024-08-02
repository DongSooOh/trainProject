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
		<h1>유실물 안내</h1>
		<br>
		<div class="position-relative m-3 lostItem-search">
			<form action="${contextPath}/lostItemList.do" method="get" id="searchForm" name="searchForm">
				<select id="lostItemSearch" name="lostItemSearch">
					<option value="lostItemTitle">품목</optioin>
					<option value="lostItemLocation">보관장소</optioin>
					<option value="lostItemRegDate">등록일자</optioin>
				</select>
				<input type="text" class="inputSearch" name="keyword" placeholder="검색어를 입력해주세요.">
				<button class="btn btn-success btn-sm" type="button" value="검색">검색
			</form>	
		</div>
		<table class="lostItem-table">
		    <tr class="header">
		        <td class="lostItemNo">번호</td>
		        <td class="lostItemTitle">품목</td>
		        <td class="lostItemLocation">보관장소</td>
		        <td class="lostItemRegDate">등록일자</td>
		    </tr>
			<c:forEach items="${lostItem}" var="lostItem">
				<tr>
					<td>${lostItem.lostItemNo}</td>
					<th><a href="${contextPath}/lostItemDetail?lostItemNo=${lostItem.lostItemNo}" class="atag">${lostItem.lostItemTitle}</a></th>
					<td>${lostItem.lostItemLocation}</td>
					<td>${lostItem.lostItemRegDate}</td>
				</tr>
			</c:forEach>
		</table>
		<div class="lostItemPaging">
			<c:forEach var="no" begin="1" end="${repeat}">
				<a href="lostItem?no=${no}" class="atag">${no}</a>
			</c:forEach>			
			<button class="btn btn-success btn-sm buttonAdd"><a href="lostItemAdd.do" class="atag">등록</a></button>
		</div>
	</div>	
	<jsp:include page="footer.jsp" />
</body>
</html>