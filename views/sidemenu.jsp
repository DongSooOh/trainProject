<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이드메뉴</title>
	<style>
		.quickmenu {
		    position: fixed;
		    left: 40%;
		    top: 265px;
		    margin-left: 800px;
		    display: inline-block;
		    background: #fcfcfc;
		    border-radius: 10px;
		    width: 120px;
		    padding-bottom: 20px;
		    border: 1px solid #d5d5d5;
		}
		.quickfont {
		    display: inline-block;
		    width: 100%;
		    text-align: center;
		    padding-top: 20px;
		    color: #333;
		    text-decoration: none;
		    line-height: 1;
		}
		.quickfont:hover{
			transform: scale(1.1);
		}
		.sidemenu{
			font-size:12px;
			display:block;
		}
		.sidimg{
			width:60%;
		}
	</style>
</head>
<body>
	<div class="quickmenu">
			<a href="ticket.do" class="quickfont">
				<img src="../img/reserv.gif" alt="reserv" class="sidimg">
				<span class="sidemenu">예매하기</span>
			</a>
			<a href="management.do" class="quickfont">
				<img src="../img/ticket.gif" alt="ticket" class="sidimg">
				<span class="sidemenu">예매관리</span>
			</a>
			<a href="customerservice.do" class="quickfont">
				<img src="../img/callcenter.gif" alt="callcenter" class="sidimg">
				<span class="sidemenu">고객센터</span>
			</a>
			<a href="" onclick="window.open('chatbot.do','_blank','width=440, height=650')" class="quickfont">
				<img src="../img/chatbot.gif" alt="chatbot" class="sidimg">
				<span class="sidemenu">1:1챗봇</span>
			</a>
		</div>
</body>
</html>