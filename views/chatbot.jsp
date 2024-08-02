<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Chat Room</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column-reverse;
        }
        .title {
            display: flex;
            position: relative;
            align-items: center;
            right: 28%;
        }
        #username-page, #chat-page {
            background-color: #ffffff;
            padding: 10px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        input[type="text"], button {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        button {
            background-color: rgb(83, 130, 52);
            color: white;
            border: none;
            cursor: pointer;
        }
        button:active {
            background-color: green;
        }
        #chat {
            max-height: 400px;
            height: 400px;
            overflow-y: auto;
            margin-bottom: 10px;
            background-color: #f9f9f9;
            padding: 10px;
            border-radius: 4px;
            box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.1);
        }
        #messageArea {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        #messageArea li {
            padding: 10px;
            margin-bottom: 5px;
            border-radius: 20px;
            display: flex;
            flex-direction: column;
            max-width: fit-content;
        }
        .chat-message {
            background-color: #dcf8c6;
            justify-content: flex-end;
            text-align: right;
            align-self: flex-end;
            margin-left: auto;            
        }
        .chat-message .nickname {
            display: none;
        }
        .incoming-message {
            background-color: #ffffff;
            justify-content: flex-start;
            text-align: left;
            align-self: flex-start;
            margin-right: auto;
        }
        .incoming-message .nickname {
            display: none;
        }
        .chatbot-icon {
            font-size: 48px;
            color: #007bff;
        }    
        .button {
            background-color: gray;
            width: 47%;
            padding: 8px;
            margin: 4px 3px 4px;
            font-size: 0.8em;
        }
        .button:active {
            background-color: black;    
        }
        .incoming-message a {
            color: gray;
            text-decoration: none;
        }
		.counselor{
			position: relative;
			width: 60px;
			height: 50px;
			left: 170%;			
			padding: 0px;
		}
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <script>
        var stompClient = null;
        var username = null;
        var autoReplyEnabled = true; // 자동응답 기능 활성화 기본 상태

        function connect() {
            username = document.getElementById("name").value.trim();

            if (username) {
                var socket = new SockJS('/ws');
                stompClient = Stomp.over(socket);

                stompClient.connect({}, onConnected, onError);
            }
        }

        function onConnected() {
            document.getElementById("username-page").style.display = 'none';
            document.getElementById("chat-page").style.display = 'block';

            stompClient.subscribe('/topic/public', onMessageReceived);

            stompClient.send("/app/chat.addUser", {}, JSON.stringify({sender: username, type: 'JOIN'}));

            // Send welcome message with HTML content
            sendWelcomeMessage();
        }

        function onError(error) {
            console.log('챗봇 서버에 연결할 수 없습니다. 다시 시도하려면 이 페이지를 새로고침하십시오');
        }

        function sendMessage() {
            var messageContent = document.getElementById("message").value.trim();

            if (messageContent && stompClient) {
                var chatMessage = {
                    sender: username,
                    content: messageContent,
                    type: 'CHAT'
                };

                stompClient.send("/app/chat.sendMessage", {}, JSON.stringify(chatMessage));
                document.getElementById("message").value = '';

                // 자동 응답 처리
                if (username !== '챗봇') {
                    handleAutoReply(messageContent);
                }
            }
        }

        function sendWelcomeMessage() {
            var welcomeMessage = {
                sender: '챗봇',
                content: `
                    <img src="../img/logo.gif" style="width:80px">환영합니다! CRX 챗봇서비스입니다.<br>
                    궁금한 분야를 선택하거나 대화창에 키워드로<br>질문하면 답변해드려요.<br>
                    1.전화번호 : <a href="tel:1005-1005">1005-1005</a><br>
                    2.홈페이지 : <a href="http://localhost:8080/main.do" target="_blank">CRX홈페이지</a><br>
                    <button onclick="handleButtonClick('reserv')" class="button">승차권 예약 및 환불 안내</button>
                    <button onclick="handleButtonClick('lost')" class="button">유실물 안내</button>
                    <button onclick="handleButtonClick('FAQ')" class="button">자주하는 질문</button>
                    <button onclick="handleButtonClick('tour')" class="button">관광열차 안내</button>
                `,
                type: 'CHAT'
            };

            stompClient.send("/app/chat.sendMessage", {}, JSON.stringify(welcomeMessage));
        }

        function handleAutoReply(messageContent) {
            if (!autoReplyEnabled) {
                return; // 자동응답 비활성화 상태에서는 아무것도 하지 않음
            }

            var autoReply = '';

            if (messageContent.includes('안녕') || messageContent.includes('반가워')) {
                autoReply = '안녕하세요! 무엇을 도와드릴까요?';
            } else if (messageContent.includes('유실물')) {
                autoReply = '유실물 안내는 <a href="#">여기</a>에서 확인하실 수 있습니다.';
            } else if (messageContent.includes('예약') || messageContent.includes('환불')) {
                autoReply = '승차권 예약 및 환불 안내는 <a href="#">여기</a>에서 확인하실 수 있습니다.';
            } else if (messageContent.includes('자주 묻는 질문') || messageContent.includes('FAQ')) {
                autoReply = '자주 묻는 질문에 대한 답변은 <a href="#">여기</a>에서 확인하실 수 있습니다.';
            } else if (messageContent.includes('관광열차')) {
                autoReply = '관광열차 안내는 <a href="#">여기</a>에서 확인하실 수 있습니다.';
            } else if (messageContent.includes('잘가')) {
                autoReply = '감사합니다. 좋은 하루 되세요!';
            } else if (messageContent.includes('전화번호')) {
                autoReply = '저희 고객센터 전화번호는 <a href="tel:1005-1005">1005-1005</a>입니다.';
            } else if (messageContent.includes('홈페이지')) {
                autoReply = '저희 홈페이지는 <a href="http://localhost:8080/main.do" target="_blank">여기</a>에서 방문하실 수 있습니다.';
            } else if (messageContent.includes('상담사') || messageContent.includes('상담사 요청')) {
                autoReply = '상담사와 연결을 진행합니다.<br>잠시만 기다려주세요.';
                autoReplyEnabled = false; // 상담사 요청 시 자동응답 비활성화
            } else {
                autoReply = '죄송하지만, 제가 이해하지 못했습니다.<br>다시 한 번 말씀해 주실 수 있나요?<br>상담사 요청이 필요하시면 상담사 또는 상담사 요청 이라고 적어주세요.';
            }

            if (autoReply) {
                setTimeout(() => {
                    var chatMessage = {
                        sender: '챗봇',
                        content: autoReply,
                        type: 'CHAT'
                    };

                    stompClient.send("/app/chat.sendMessage", {}, JSON.stringify(chatMessage));
                }, 500); // 사용자의 메시지 처리 후 500ms 지연
            }
        }

        function onMessageReceived(payload) {
            var message = JSON.parse(payload.body);
            var messageElement = document.createElement('li');

            if (message.type === 'JOIN') {
                messageElement.classList.add('event-message');
                message.content = message.sender + ' joined!';
            } else if (message.type === 'LEAVE') {
                messageElement.classList.add('event-message');
                message.content = message.sender + ' left!';
            } else {
                var textElement = document.createElement('span');
                textElement.innerHTML = message.content;
                messageElement.appendChild(textElement);

                if (message.sender === username) {
                    messageElement.classList.add('chat-message');
                } else {
                    messageElement.classList.add('incoming-message');
                }
            }

            document.getElementById("messageArea").appendChild(messageElement);
            scrollToBottom(); // 항상 채팅창 맨 아래로 스크롤
        }

        function handleButtonClick(action) {
            var responseMessage = '';
            if (action === 'reserv') {
                responseMessage = '승차권 예약 페이지로 이동 <a href="#">이동하기</a><br>환불 페이지로 이동 <a href="#">이동하기</a>';
            } else if (action === 'lost') {
                responseMessage = '유실물 안내 페이지로 이동 <a href="#">이동하기</a>';
            } else if (action === 'FAQ') {
                responseMessage = '자주하는 질문 페이지로 이동 <a href="#">이동하기</a>';
            } else if (action === 'tour') {
                responseMessage = '관광상품 페이지로 이동 <a href="#">이동하기</a>';
            }

            if (responseMessage) {
                var chatMessage = {
                    sender: '챗봇',
                    content: responseMessage,
                    type: 'CHAT'
                };

                stompClient.send("/app/chat.sendMessage", {}, JSON.stringify(chatMessage));
            }
        }

        function handleConsultationRequest() {
            autoReplyEnabled = false; // 상담사 연결 요청 시 자동응답 비활성화
            var chatMessage = {
                sender: '챗봇',
                content: '상담사와 연결을 진행합니다. 잠시만 기다려주세요.',
                type: 'CHAT'
            };
            stompClient.send("/app/chat.sendMessage", {}, JSON.stringify(chatMessage));
        }

        function handleEndConsultation() {
            autoReplyEnabled = true; // 상담 종료 시 자동응답 기능 재활성화
        }

        function handleKeyPress(event) {
            if (event.key === "Enter") {
                sendMessage();
            }
        }

        function scrollToBottom() {
            var chat = document.getElementById("chat");
            chat.scrollTop = chat.scrollHeight;
        }

        document.addEventListener('DOMContentLoaded', (event) => {
            var messageInput = document.getElementById("message");
            messageInput.addEventListener("keyup", handleKeyPress);
        });
    </script>
</head>
<body>
    <div id="username-page">
        <div>
            <i class="fas fa-robot chatbot-icon"></i>
            <input type="text" id="name" placeholder="이름을 입력해주세요"/>
            <button onclick="connect()">챗봇 연결</button>
        </div>
    </div>
    <div id="chat-page" style="display:none;">
        <div id="chat">
            <ul id="messageArea"></ul>
        </div>
        <input type="text" id="message" placeholder="메시지를 입력해주세요."/>
        <button onclick="sendMessage()">전송</button>        
    </div>
	
    <div class="title">
        <img src="../img/logo.gif" style="width:60px"><p>챗봇</p>
		<button onclick="handleConsultationRequest()" class="counselor">상담사<br>요청</button>
    </div>
</body>
</html>
