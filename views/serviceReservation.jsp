<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <meta charset="UTF-8">
    <title>서비스 예약</title>
    <script>
        function send(event) {
            var form = document.getElementById('gform');
            var name = form.name.value.trim();
            var email = form.email.value.trim();
            var message = form.message.value.trim();
            var itemSelected = form.querySelector('input[name="item"]:checked') !== null;
            
            var emailCheck = /^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
            
            if (name === "") {
                alert("보내는 사람을 입력해주세요.");
                form.name.focus();
                return false;
            } else if (email === "") {
                alert("보내는 메일을 입력해주세요.");
                form.email.focus();
                return false;
            } else if (!emailCheck.test(email)) {
                alert("올바른 이메일 형식이 아닙니다.");
                form.email.focus();
                return false; 
            } else if (!itemSelected) {
                alert("서비스 항목을 선택해주세요.");
                return false;
            } else if (message === "") {
                alert("서비스가 필요한 내용을 입력해주세요.");
                form.message.focus();
                return false;
            }
            alert('메일이 정상적으로 발송되었습니다.');
            // 폼 제출 후 페이지 리다이렉션
            setTimeout(function() {
                window.location.href = "/serviceReservation.do";
            }, 1000); // 1초 후 페이지 이동
            return true; // 폼이 정상적으로 제출되도록 함
        }
    </script>
    <style>
        .con {
            margin: auto;
            max-width: 800px;
            padding: 20px;
        }
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            transition: 0.3s;
            border: none;
        }
        .card:hover {
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
        }
        .imgBox2 {
            margin: 0;
            padding: 0;
            appearance: none;
        }
        .item-cc {
            cursor: pointer;
            background-size: cover;
            background-repeat: no-repeat;
            display: inline-block;
            width: 100px;
            height: 100px;
            transition: all 100ms ease-in;
            filter: brightness(1.8) grayscale(1) opacity(.5);
            margin: 0;
        }
        .item-cc:hover {
            filter: brightness(1.2) grayscale(.5) opacity(1);
        }
        .cc-selector input:active + .item-cc { opacity: .5; }
        .cc-selector input:checked + .item-cc { filter: none; }
        .atag {
            text-decoration: none;
            color: white;
        }
    </style>
</head>
<body class="bg-light">
    <jsp:include page="header.jsp" />
    <jsp:include page="sidemenu.jsp" />
    <div class="con">
        <div class="card my-5 p-4">
            <h1 class="text-center mb-4">서비스 예약</h1>
            <form id="gform" action="https://script.google.com/macros/s/AKfycbzOObYf3gICH39fnX2YkRqtJH3IvNYO-6qlp5jM_eA055Qx6oXqjS9PkHokcze4W6vf/exec" 
                  method="POST" enctype="multipart/form-data" data-email="dhehdtn32@naver.com" onsubmit="return send(event)">
                <div class="mb-3">
                    <label for="userName" class="form-label">보내는 사람</label>
                    <input type="text" id="userName" class="form-control" name="name" required autofocus>
                </div>
                <div class="mb-3">
                    <label for="userEmail" class="form-label">보내는 메일</label>
                    <input type="email" id="userEmail" class="form-control" name="email" required>
                </div>
                <div class="mb-3 cc-selector">
                    <p>아래 목록 중 서비스가 필요한 품목을 선택해주세요.</p>
                    <div class="d-flex justify-content-around flex-wrap">
                        <div class="imgBox m-2">
                            <input class="imgBox2" id="seat" type="radio" name="item" value="seat" required/>
                            <label class="item-cc seat" for="seat" style="background-image: url('../img/seat.png');"></label>
                        </div>
                        <div class="imgBox m-2">
                            <input class="imgBox2" id="aircon" type="radio" name="item" value="aircon" />
                            <label class="item-cc aircon" for="aircon" style="background-image: url('../img/aircon.png');"></label>
                        </div>
                        <div class="imgBox m-2">
                            <input class="imgBox2" id="belt" type="radio" name="item" value="belt" />
                            <label class="item-cc belt" for="belt" style="background-image: url('../img/belt.png');"></label>
                        </div>  
                        <div class="imgBox m-2">
                            <input class="imgBox2" id="belt2" type="radio" name="item" value="belt2" />
                            <label class="item-cc belt" for="belt2" style="background-image: url('../img/etc.png');"></label>
                        </div>  
                    </div>
                </div>
                <div class="mb-3">
                    <label for="userMessage" class="form-label">서비스가 필요한 내용을 입력해주세요.</label>
                    <textarea name="message" class="form-control" id="userMessage" rows="5" required></textarea>
                </div>
                <div class="mb-3">
                    <label for="file" class="form-label">파일 첨부</label>
                    <input type="file" id="file" name="file" class="form-control">
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-success btn-sm mx-2">전송</button>
                    <a href="${contextPath}/main.do" class="btn btn-secondary btn-sm">취소</a>
                </div>
            </form>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>
