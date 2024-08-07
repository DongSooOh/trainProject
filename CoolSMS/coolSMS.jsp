<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
	* { margin: 0; padding: 0;}
	.birthBox {
		width: 20%;
	}
	.genderBox {
		width: 5%;
	}
</style>	
<title>문자(SMS) 인증</title>
</head>
<body>
	<div class="titleBox border border-3 border-success p-2 text-center text-success fs-4 fw-bold">
		<label for="phone"><strong>문자(SMS) 인증</strong></label>
	</div>
<!--	<form class=smsForm>-->
		<div class="contentBox border border-3 border-success m-2 p-2">
			<label for="name" class="mt-2"><strong>이름</strong></label><br>
			<input type="text" id="name" name="name" class="nameBox my-2 p-1 w-100 fs-6" title="이름 입력" placeholder="이름을 입력해 주세요." required autofocus/><br>
			
			<label for="name" class="mt-2"><strong>생년월일/성별</strong></label><br>
			<input type="password" id="birth" name="birth" class="birthBox my-2 p-1 text-center fs-6" title="생년월일 입력" placeholder="• • • • • •" required />
			- <input type="password" id="gender" name="gender" class="genderBox p-1 text-center my-2 fs-6" title="성별 입력" placeholder="•" required /> • • • • • •<br>
			
			<label for="name" class="mt-2"><strong>휴대폰번호</strong></label><br>
			<div class="phoneSet">
				<input type="text" id="phone" name="phone" class="phoneBox my-2 p-1 w-100 fs-6" title="휴대폰번호 입력" placeholder="휴대폰번호를 입력해 주세요." required /><br>
				<span id="phoneChk" class="doubleChk"><button class="btn btn-success w-100 my-2">인증하기</button></span><br>
			</div>
			<label for="name" class="mt-2"><strong>인증번호</strong></label><br>
			<div class="certiSet">
				<input type="text" id="phone2" name="phone2" class="phone2Box my-2 p-1 w-100 fs-6" title="인증번호 입력" placeholder="숫자 6자리를 입력해 주세요." disabled required />
				<span id="phoneChk2" class="doubleChk"><button class="btn btn-success w-100 my-2" id="phone3" name="phone3" disabled>확인</button></span>
				<input type="hidden" id="phoneDoubleChk"/>
				<button class="cancelBox btn btn-secondary w-100 my-2 me-2" id="phone3" name="phone3" onclick="window.close()">취소</button>
			</div>
		</div>
<!--	</form>-->
<script>
	// 이름
	var name_RegExp = /^[가-힣]{2,6}$/;
	
	if ($("#name").val() == "") {
		alert("이름을 입력해주세요.");
		$("#name").focus();
		return false;
	} else {
		if (!name_RegExp.test($("#name").val())) {
			alert("한글 2~6자만 입력해 주세요.");
			$("#name").focus();
			return false;
		} else {
			return true;
		}	
	}
	
	// 생년월일
	var birth_RegExp = /^(0[0-9]|[1-9][0-9])(0[1-9]|[1][0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
	
	if ($("#birth").val() == "") {
		alert("생년월일을 입력해주세요.");
		$("#birth").focus();
		return false;
	} else {
		if (!birth_RegExp.test($("#birth").val())) {
			alert("생년월일을 올바르게 작성해 주세요.");
			$("#birth").focus();
			return false;
		} else {
			return true;
		}
	}
	
	// 성별
	var gender_RegExp =  /^[1-4]$/;
	
	if ($("#gender").val() == "") {
		alert("성별을 입력해 주세요.");
		$("#gender").focus();
		return false;
	} else {
		if (!gender_RegExp.test($("#gender").val())) {
			alert("1 ~ 4까지의 올바른 성별을 입력해 주세요.");
			$("#gender").focus();
			return false;
		} else {
			return true;
		}
	}
	
	//휴대폰번호
	var code2 = "";
	const phone_RegExp = /^010-?[0-9]{4}-?[0-9]{4}$/;
	
	$("#phoneChk").click(function() {
		if($("#phone").val() == "") {
			alert("휴대폰번호가 입력되지 않았습니다. 휴대폰번호를 입력해주세요.");
			$("#phone2").attr("disabled",true);
			$("#phone3").attr("disabled",true);
			$("#phone").focus();			
		} else {
			if (!phone_RegExp.test($("#phone").val())) {
				alert("올바르지 못한 휴대폰번호가 입력되었습니다. 올바른 휴대폰번호를 입력해주세요.");
				$("#phone2").attr("disabled",true);
				$("#phone3").attr("disabled",true);
				$("#phone").focus();	
			} else {
				alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.");
				var phone = $("#phone").val();
				$.ajax({
			        type:"GET",
			        url:"/phoneCheck?phone=" + phone,
			        cache : false,
			        success:function(data) {
			        	
						if(data == "error" || data == "") {
			        		alert("휴대폰번호가 올바르지 않습니다.")
							$(".successPhoneChk").text("유효한 번호를 입력해주세요.");
							$(".successPhoneChk").css("color","red");
							$("#phone").attr("autofocus",true);
							$("#phone2").attr("disabled",true);
							$("#phone3").attr("disabled",true);
			        	} else {	        		
			        		$("#phone2").attr("disabled",false);
							$("#phone3").attr("disabled",false);
			        		$("#phoneChk2").css("display","inline-block");
			        		$(".successPhoneChk").text("인증번호를 입력한 뒤 본인인증을 눌러주십시오.");
			        		$(".successPhoneChk").css("color","green");
			        		$("#phone").attr("readonly",false);
			        		code2 = data;
			        	}
			        }
			    });
			}
		}
	});
	
	//인증번호
	$("#phoneChk2").click(function() {
		if($("#phone2").val() == code2) {
			$(".successPhoneChk").text("인증번호가 일치합니다.");
			$(".successPhoneChk").css("color","green");
			$("#phoneDoubleChk").val("true");
			$("#phone2").attr("disabled",true);
			opener.location.href='/signup.do';'
			window.close();
		} else {
			$(".successPhoneChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
			$(".successPhoneChk").css("color","red");
			$("#phoneDoubleChk").val("false");
			$(this).attr("autofocus",true);
		}
	});
</script>
</body>
</html>