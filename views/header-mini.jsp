<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String userid = (String) session.getAttribute("userid");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        .miniheader {
            height: 30px;
            background-color: rgb(84, 130, 53);
            display: flex;
            justify-content: flex-end;
            align-items: center;
        }

        .minilist {
            font-size: 15px;
			font-weight: bold;
			color: white;
            text-decoration: none;
            margin-left: 15px;
			margin-right: 15px;
        }
		.minilist:hover{
			color: rgb(226, 240, 217);	
		}
		.right-container{
			margin: 15%;
		}
    </style>
</head>
<body>
    <nav class="miniheader">
        <div class="right-container">
            <c:choose>
                <c:when test="${not empty userId}">
                    <span class="minilist">${userid}님</span>
                    <a class="minilist" href="logout.do">
                        <span>로그아웃</span>
                    </a>
                    <a class="minilist" href="mypage.do">
                        <span>마이페이지</span>
                    </a>
                </c:when>
                <c:otherwise>
                    <a class="minilist" href="signupTerms.do">
                        <span>회원가입</span>
                    </a>
                    <a class="minilist" href="login.do">
                        <span>로그인</span>
                    </a>
                </c:otherwise>
            </c:choose>
        </div>
    </nav>
	<a href="mypage.do">마이페이지 이동</a>
</body>
</html>
