<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String schoolVO = (String) session.getAttribute("schoolVO");
%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <style>
        .headernav {
            display: flex;
            align-items: center;
            justify-content: space-between;
            width: 100%;
			justify-content: center;
        }

        .headernav img {
            margin: 0 20px;
			padding:0;
            height: auto;
            width: 200px;
        }

        .headernav > ul {			
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            padding: 0;
            margin-left: 15%;
            margin-right: 15%;
        }

        .headernav li {
            list-style: none;            
            position: relative;
            text-align: center;
			margin-top: 10px;
			margin-bottom:10px;
        }

        .mainmenu {
            text-decoration: none;
            color: black;
        }

		.mainmenu:hover,
		.mainmenu.active {
		    color: green; /* 글씨 색상 변경 */
		}
        .mainmenu:hover::after {
            content: '';
            display: block;
            width: 100%;
            height: 3px;
            background-color: green;
            position: absolute;
            bottom: 0;
            left: 0;
        }

        .mainmenu.active {
            color: green; /* 활성화 시 색상 변경 */
        }

        .mainmenu.active::after {
            content: '';
            display: block;
            width: 100%;
            height: 3px;
            background-color: green; /* 밑줄 색상 */
            position: absolute;
            bottom: 0;
            left: 0;
        }

        .dropdown {
            position: absolute;
            top: 100%;
			width: 100%;
            left: 0;
            display: none;
            width: 200px;
            z-index: 10;
            margin: 0;
			height:auto;
			border-bottom:1px dotted gray;
			background-color:white;			
        }

        .headernav:hover > ul > li .dropdown {
            display: block;
        }

        .logo-dropdown {
            position: absolute;
            top: 160px;
            left: 50%;
            transform: translateX(-50%);
            display: none;
        }
		.logo{
			width:100%;
		}

        .headernav img:hover + .logo-dropdown {
            display: block;
        }

        .dropdown div, .logo-dropdown {            
            background-color: white;
        }

        .dropdown ul, .logo-dropdown ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .subtitle {
            display: block;
            text-align: left;
        }

        .subtitle a {
			font-size:13px;
			font-family: monospace;
            text-decoration: none;
            color: black;
        }
		.subtitle a:hover {
		    color: green; /* 서브메뉴 호버 시 글씨 색상 변경 */
		}
        .menulist {			
            width: 200px;
        }
		.sub{
			width:400px;
		}		
		.dot{
			border-bottom: 1px dotted gray;	
		}
    </style>
</head>
<jsp:include page="header-mini.jsp" />
<nav class="headernav">
    <ul>
		<li class="menulist menulist2"><a href="" class="mainmenu"><h2></h2></a>
		    <div class="dropdown mega-menu">
		        <div>
		            <ul>
		                <li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
		            </ul>
		        </div>
		    </div>
		</li>	
		<li class="menulist menulist2"><a href="" class="mainmenu"><h2></h2></a>
		    <div class="dropdown mega-menu">
		        <div>
		            <ul>
		                <li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
		            </ul>
		        </div>
		    </div>
		</li>	
        <li class="menulist"><a href="ticket.do" class="mainmenu"><h2>승차권</h2></a>
            <div class="dropdown mega-menu">
                <div>
                    <ul class="subtitle">
                        <li><a href="ticket.do">승차권 예매</a></li>
                        <li><a href="management.do">예매관리</a></li>
                        <li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
                    </ul>
                </div>
            </div>
        </li>
		<li class="menulist"><a href="noticeList.do" class="mainmenu"><h2>고객안내</h2></a>
			<div class="dropdown mega-menu">
		    	<div>
					<ul class="subtitle">
		            	<li><a href="noticeList.do">공지사항</a></li>
						<li><a href="faqList.do">FAQ</a></li>
                        <li><a href="customerservice.do">고객센터</a></li>
                        <li><a href="lostItemList.do">유실물 안내</a></li>
                        <li><a href="guideline.do">안내사항</a></li>
                        <li><a href="qnaList.do">Q&A</a></li>
                    </ul>
                </div>
            </div>
        </li>
        <li><a href="main.do"><img src="../img/logo.gif" alt="Logo"></a>
            <div class="dropdown mega-menu logo">
                <div>
                    <ul>                       
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
                    </ul>
                </div>
            </div>
        </li>
		<li class="menulist"><a href="trainService.do" class="mainmenu"><h2>이용안내</h2></a>
            <div class="dropdown mega-menu">
                <div>
                    <ul class="subtitle">
                        <li><a href="trainService.do">종합이용안내</a></li>
                        <li><a href="ticketManagement.do">승차권 이용안내</a></li>
                        <li><a href="hwacheon.do">정차역 이용안내</a></li>
                        <li><a href="trainDelayRefund.do">지연배상 신청</a></li>
						<li><a href="serviceReservation.do">서비스 예약</a></li>
						<li><br></li>
                    </ul>
                </div>
            </div>
        </li>
        <li class="menulist"><a href="localtour.do" class="mainmenu"><h2>여행상품</h2></a>
            <div class="dropdown mega-menu">
                <div>
                    <ul class="subtitle">
                        <li><a href="localtour.do">지역별 여행상품</a></li>
                        <li><a href="tourtrain.do">관광 열차</a></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>					
                    </ul>
                </div>
            </div>
        </li>
		<li class="menulist menulist2"><a href="" class="mainmenu"><h2></h2></a>
		    <div class="dropdown mega-menu">
		        <div>
		            <ul>
		                <li><br></li>
		                <li><br></li>
		                <li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
		            </ul>
		        </div>
		    </div>
		</li>
		<li class="menulist menulist2"><a href="" class="mainmenu"><h2></h2></a>
		    <div class="dropdown mega-menu">
		        <div>
		            <ul>
		                <li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
						<li><br></li>
		            </ul>
		        </div>
		    </div>
		</li>	
    </ul>
</nav>
<div class="dot">
</div>
<br>
<script>
    document.querySelectorAll('.subtitle li').forEach(subtitleItem => {
        subtitleItem.addEventListener('mouseover', function() {
            const parentLi = subtitleItem.closest('li.menulist');
            const mainMenuItem = parentLi.querySelector('.mainmenu');
            mainMenuItem.classList.add('active');
        });
        
        subtitleItem.addEventListener('mouseout', function() {
            const parentLi = subtitleItem.closest('li.menulist');
            const mainMenuItem = parentLi.querySelector('.mainmenu');
            mainMenuItem.classList.remove('active');
        });
    });
</script>
</body>
</html>
