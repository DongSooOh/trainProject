<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    

<script src="../js/zipcode.js"></script>
<!DOCTYPE html>
<html>
	<head>	  
	</head>
	<body>
	  <input type="text" id="sample6_postcode" style="width:100px" placeholder="우편번호">
	  <input type="button" onclick="sample6_execDaumPostcode()" value="주소검색"><br>
	  <input type="text" id="sample6_address" style="width:400px" placeholder="주소"><br>
	  <input type="text" id="sample6_detailAddress" placeholder="상세주소">
	  <input type="hidden" id="sample6_extraAddress" placeholder="참고주소">
	</body>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<style>
	  .wrong_text{font-size:1rem;color:#f44e38;letter-spacing:-.2px;font-weight:300;margin:8px 0 2px;line-height:1em;display:none}
	</style>
</html>