<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<meta charset="UTF-8">
	<title>지연료 계좌반환 신청</title>
	<style>
		.con {
			margin: auto;
			width: 1200px;
		}
		.header {
		    background-color: rgb(226, 240, 217);
		    text-align: center;
		}
		.CSMainImg {
			width: 1200px;
			height: 500px;
			background-image: url('../img/CSImg.jpg');
			background-size: cover;
		}
		.line {
			margin: 10px 0;
			width:50px;
			height: 50px;
			border-bottom: 5px solid rgb(84, 130, 53);
		}
		.line2 {
			margin: 10px 0;
			width:50px;
			height: 10px;
			border-bottom: 3px solid rgb(84, 130, 53);
		}
		li::marker {
			color: rgb(84, 130, 53);			
		}
		hr {
			width: 1200px;
		}
		.subMenu {
			width: 1200px;
		}
		.subMenu2 {
			background-color: rgb(84, 130, 53);
		}
		.atag {
			display: block;
			text-decoration: none;
			color: white;
		}
		li {
			list-style: none;
		}
		.refundBox {
			width: 1200px;
			display: flex;
			justify-content: center;
		}
		.refundImg {
			width: 800px;
			height:350px;
			background-image: url("../img/trainDelayRefund.jpg");
			background-size: cover;
		}
		.Box {
			width: 1200px;
		}
		.dpb {
			font-size: 12px;
		}
		.box2 {
			width: 1200px;
		}
		.ticketTable {
			width: 1200px;
		}
		.table {
			width: 1200px;
		}
		.fSize {
			font-size: 12px;
		}
		.ticketNo {
			width: 85%;
		}
		.tableTitle {
			width: 15%;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />
	<div class="con">
		<h1>지연료 계좌반환 신청</h1>
		<br>
		<hr>
		<div class="subMenu subtle text-center px-2">
			<div class="row">
				<div class="subMenu1 col border border-white bg-secondary"><a href="trainDelayRefund.do" class="atag fs-5">열차지연 시 교통비 지급 안내문</a></div>
				<div class="subMenu2 col border border-white"><a href="delayCompensationRequest.do" class="atag fs-5">지연료 계좌반환 신청</a></div>
			 </div>
		</div>
		<div class="Box">
			<ul class="border my-3 p-3">
				<li><i class="bi bi-dash"></i> 지연료 계좌반환 신청은 현금으로 승차권을 구매하신 고객 대상입니다.</li>
				<li><i class="bi bi-dash"></i> 지연배상 환급 신청 가능 기간 : 열차지연 발생일로부터 1년이내</li>
				<li><i class="bi bi-dash"></i> 지연료 계좌반환 신청 완료 후 최대 1개월 이내 고객님께서 입력하신 계좌번호로 반환 될 예정입니다.</li>
				<li><i class="bi bi-dash"></i> 승차자명, 반환 신청자명, 환불 계좌의 예금주명은 동일해야 합니다.(불일치할 경우 별도의 확인 절차가 필요할 수 있습니다.)</li>
			</ul>
		</div>
		<div class="gap"></div>
		<div class="box2 border p-3">
			<h2 style="font-size: 20px;font-weight: bold;text-align: center;">지연료 계좌반환 신청을 위한 개인정보 수집·이용 동의서</h2>
			<p class="dpb">&lt;씨알엑스&gt;는 지연료 계좌반환 신청을 위하여 아래와 같이 개인정보를 수집·이용하고자 합니다. 내용을 자세히 읽으신 후 동의 여부를 결정하여 주십시오.<br></p>
			<div class="line2"></div>
			<h5 class="h6 lefttopbg">개인정보 수집 및 이용에 대한 안내(필수)</h5>
			<div class="tbl_wrap tbody_td_tal_l th_all td_val_t mgt10">
				<table class="table-border" style="width:100%">
<!--					<caption>지연료 계좌반환 신청을 위한 개인정보 수집·이용 동의서에 대한 표</caption>-->
					<thead>
						<tr class="border-top text-center">
							<th class="fSize bg-light border-end">개인정보 항목</th>
							<th class="fSize bg-light border-end">수집·이용 목적</th>
							<th class="fSize bg-light">보유·이용기간</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="fSize border-end">성명, 휴대전화번호, 계좌번호</td>
							<td class="fSize border-end">지연료 계좌반환 신청 및 처리 안내</td>
							<td class="fSize fColorRed ulfwbold" style="color: #8f0349;">목적 달성 시 까지(목적 달성 이후 즉시 파기)<br>※ 결제 정보는 ‘전자상거래 등에서의 소비자보호에 관한 법률’에 따라 5년 보관</td>
						</tr>
					</tbody>
				</table>
			</div>
			<span class="dpb">※위의 개인정보 수집·이용 필수항목에 대한 동의를 거부할 권리가 있습니다. 그러나 동의를 거부할 경우 지연료 계좌반환 신청 및 처리 안내에 제한을 받을 수 있습니다.</span>
		</div>
		<div class="tal_r val_m text-start">
			&nbsp;☞ 위와 같이 개인정보를 수집·이용하는데 동의하십니까?<strong>(필수)</strong>
			<label for="agreeY">동의</label>
			<input type="radio" name="agree" id="agreeY" class="checkForm checkbox" value="Y" option="{isMust : true, message : '개인정보 수집 및 이용 동의 여부를 선택하십시오.'}">&nbsp;
			<label for="agreeN">미동의</label>
			<input type="radio" name="agree" id="agreeN" class="checkForm checkbox" value="N" option="{isMust : true, message : '개인정보 수집 및 이용 동의 여부를 선택하십시오.'}"></span>
		</div>
		<div class="tbl_wrap tbl6">
			<table class="table-bordered my-5 align-middle">
<!--	    <caption>승차권 정보 입력표</caption>-->
				<colgroup>
					<col class="wx150">
				    <col>
				</colgroup>
				<tbody>                         
					<tr>
						<th class="text-center bg-light" colspan="6"><label for="">승차권 정보</label></th>
					</tr>
					<tr>
						<th class="tableTitle" colspan="2"><label for="ptkNm">이름</label></th>
					    <td colspan="5">
					    	<input type="text" name="ptkNm" id="ptkNm" class="wx250 input_midium checkForm" maxlength="20" option="{isMust : true, message : '이름을 입력해주세요.'}" value="" onkeyup="ptkNmEq();">
					    </td>
					</tr>
					<tr>
						<th colspan="2"><label for="celNo">휴대전화번호</label></th>
					    <td colspan="5">
							<input type="text" name="celNo" id="celNo" class="wx250 input_midium checkForm" maxlength="11" option="{isMust : true, varType : 'celNo', message : '휴대전화를 입력하십시오.'}" onkeyup="celText(this);" value="" autocomplete="off">
					    </td>
					</tr>
					<tr>
						<th colspan="2"><label for="selCd1">승차권 반환번호<br>(원권번호)</label></th>
					    <td colspan="5"><span class="ticketNo">
					    	<input type="text" title="승차권 반환번호(원권번호)첫번째 다섯자리" size="10" style="padding: 5px;" name="sel_Cd_01" id="sel_Cd_01" class="wx60 input_midium checkForm" maxlength="5" minlength="5" option="{isMust : true, message : '승차권 반환번호(원권번호)를 입력해주세요.'}" autocomplete="off" pattern="[0-9]+">
					    	<span>-</span>
					        <input type="text" title="승차권 반환번호(원권번호)두번째 네자리" size="10" style="padding: 5px;" name="sel_Cd_02" id="sel_Cd_02" class="wx50 input_midium checkForm" maxlength="4" minlength="4" option="{isMust : true, message : '승차권 반환번호(원권번호)를 입력해주세요.'}" autocomplete="off" pattern="[0-9]+">
					        <span>-</span>
					        <input type="text" title="승차권 반환번호(원권번호)세번째 다섯자리" size="10" style="padding: 5px;" name="sel_Cd_03" id="sel_Cd_03" class="wx60 input_midium checkForm" maxlength="5" minlength="5" option="{isMust : true, message : '승차권 반환번호(원권번호)를 입력해주세요.'}" autocomplete="off" pattern="[0-9]+">
					        <span>-</span>
					        <input type="text" title="승차권 반환번호(원권번호)네번째 두자리" size="10" style="padding: 5px;" name="sel_Cd_04" id="sel_Cd_04" class="wx30 input_midium checkForm" maxlength="2" minlength="2" option="{isMust : true, message : '승차권 반환번호(원권번호)를 입력해주세요.'}" autocomplete="off" pattern="[0-9]+">
					        <button type="button" class="btn btn-success text-white mx-2" onclick="ticketCheck('A');">승차권 인증</button>
					        <br><input type="hidden" name="selCd1" id="selCd1" class="wx150 input_midium checkForm" maxlength="16" minlength="16" option="{isMust : true, message : '승차권 반환번호(원권번호)를 입력해주세요.'}" value="4343343433434333">
					        <span id="ticketCheckMsg" style="color: rgb(255, 0, 0);" class="__web-inspector-hide-shortcut__">승차권 반환번호가 인증되지 않았습니다.</span></span>
						</td>
					</tr>
					<tr>
						<th colspan="2"><label for="selCd5">환불예정금액</label></th>
					    <td colspan="5">
					    	<input type="text" style="padding: 5px;" name="selCd5" id="selCd5" class="wx200 input_midium checkForm" autocomplete="off" value="0" readonly="readonly" option="{isMust : true, message : '승차권  인증이 완료되지 않았습니다.'}"> 원
						</td>
					</tr>
				</tbody>
			</table>
			<table class="table-bordered align-middle">
<!--		<caption>환불계좌 정보 입력표</caption>-->
				<tbody>
					<tr>
						<th class="text-center bg-light" colspan="6"><label for="">환불계좌정보</label></th>
					</tr>
					<tr class="">
						<th colspan="2"><label for="ptkNm2">계좌주<br>(상단의 이름과 동일)</label></th>
					    <td>
							<input type="text" name="ptkNm2" id="ptkNm2" class="wx250 input_midium checkForm" maxlength="20" option="{isMust : true, message : '계좌주를 입력해주세요.'}" value="" readonly="readonly" onclick="alert('상단의 이름을 먼저 입력해 주세요.')">
						</td>
					</tr>
					<tr>
						<th colspan="2"><label for="bankComboBox">은행명</label></th>
						<td>
							<select style="border: 1px solid lightgray;padding: 5px;border-radius: 5px;width: 250px;" name="bankComboBox" id="bankComboBox" option="{isMust : true, message : '은행명을 선택해주세요.'}">	
								<option value="" selected="">은행명</option>
								<option value="002">산업은행</option><option value="003">기업은행</option><option value="004">국민은행</option><option value="005">외환은행</option><option value="007">수협중앙회</option><option value="008">수출입은행</option><option value="011">NH농협은행</option><option value="012">지역농.축협</option><option value="020">우리은행</option><option value="023">SC은행</option><option value="027">한국씨티은행</option><option value="031">대구은행</option><option value="032">부산은행</option><option value="034">광주은행</option><option value="035">제주은행</option><option value="037">전북은행</option><option value="039">경남은행</option><option value="045">새마을금고연합회</option><option value="048">신협중앙회</option><option value="050">상호저축은행</option><option value="052">모건스탠리은행</option><option value="054">HSBC은행</option><option value="055">도이치은행</option><option value="056">알비에스피엘씨은행</option><option value="057">제이피모간체이스은행</option><option value="058">미즈호은행</option><option value="059">미쓰비시도쿄UFJ은행</option><option value="060">BOA은행</option><option value="061">비앤피파리바은행</option><option value="062">중국공상은행</option><option value="063">중국은행</option><option value="064">산림조합중앙회</option><option value="071">우체국</option><option value="076">신용보증기금</option><option value="077">기술신용보증기금</option><option value="081">하나은행</option><option value="088">신한은행</option><option value="089">케이뱅크</option><option value="093">한국주택금융공사</option><option value="094">서울보증보험</option><option value="095">경찰청</option><option value="096">한국전자금융㈜</option><option value="099">금융결재원</option><option value="209">유안타증권</option><option value="092">토스뱅크</option><option value="230">미래에셋증권</option><option value="218">KB증권</option><option value="240">삼성증권</option><option value="243">한국투자증권</option><option value="238">미래에셋증권</option><option value="261">교보증권</option><option value="262">하이투자증권</option><option value="247">NH투자증권</option><option value="264">키움증권</option><option value="265">이트레이드증권</option><option value="266">SK증권</option><option value="267">대신증권</option><option value="268">아이엠투자증권</option><option value="269">한화투자증권</option><option value="270">하나대투증권</option><option value="278">신한금융투자</option><option value="263">현대차증권</option><option value="280">유진투자증권</option><option value="287">메리츠종합금융증권</option><option value="289">NH농협증권</option><option value="290">부국증권</option><option value="291">신영증권</option><option value="292">LIG투자증권</option><option value="0843102">우리은행 수서역금융센터</option><option value="090">카카오뱅크</option><option value="20">*우리은행*</option><option value="271">토스증권</option><option value="279">DB금융투자</option></select>
							<input type="hidden" name="selCd2" id="selCd2" class="wx250 input_midium checkForm" maxlength="10" option="{isMust : true, message : '은행명을 선택해주세요.'}">
						</td>
					</tr>
					<tr>
						<th colspan="2"><label for="selCd3">계좌번호</label></th>
				   		<td>
							<input type="text" name="selCd3" id="selCd3" class="wx200 input_midium checkForm" maxlength="30" option="{isMust : true, message : '계좌번호를 입력해주세요.'}">
							&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-sm btn-success text-white mx-2" onclick="checkBank()">계좌 인증</button><br>
							<span id="bankCheckTxt2" style="color:red">*환불계좌가 인증되지 않았습니다.</span>
						</td>
					</tr>
					<tr style="display:none;">
						<th colspan="2"><label for="selCd4">은행코드</label></th>
					    <td>
							<input type="text" name="selCd4" id="selCd4" class="wx250 input_midium checkForm" maxlength="30" option="{isMust : true, message : '은행명을 선택해주세요.'}">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="tal_c text-center">
			<button type="button" class="btn btn-sm btn-success text-white" onclick="signup();">확인</button>&nbsp;
			<button type="button" class="btn btn-sm btn-secondary text-white" onclick="location.href = '/main.do';">취소</button>
		</div><br>
	</div>
	<jsp:include page="footer.jsp" />
<script>

		  //<![CDATA[
		             /*
		  if(location.hostname.indexOf("etk")==0){
		  	document.domain = 'srail.kr';
		  }else if(location.hostname.indexOf("devetk")==0){
		  	document.domain = 'srail.kr';
		  }else{
		  	document.domain = 'srail.co.kr';
		  }
		  */
		  
		  var responseAjax = null;
		var checkTicketFlag = false;	//승차권 확인
		var checkBankFlag = false;		//은행 확인

		  
		//반응형 시작
		 	window.onload = function(){
		 		if(window.outerWidth <= 500){
		 			$J('.header').css('display','none');
		 			$J('.footer').css('display','none');
		 			$J('.footer-e').css('display','none');
		 			$J('.container').css('margin-top','0px');
		 			$J('.container').css('min-width','auto');
		 			$J('.container').css('padding-left','5px');
		 			$J('.container').css('padding-right','5px');
		 			$J('.sub_wrap').css('min-width','auto');
		 			$J('.sub_wrap').css('width','auto');
		 			$J('.sub_wrap').css('padding-bottom','30px'); 
		 			$J('.sub_tit_area').css('padding-top','0px');    
		 			$J('.mobileTitle').css('border-top','12px solid #572b4c');    
		 			$J('.mobileTitle').css('padding-top','20px');    
		 		}
		}
		 	
		 	
		 	
		 	function windowResizeCheck(){
		 		//console.log("가로 : "+window.outerWidth);
		 		if(window.outerWidth <= 500){
		 			$J('.header').css('display','none');
		 			$J('.footer').css('display','none');
		 			$J('.footer-e').css('display','none');
		 			$J('.container').css('margin-top','0px');
		 			$J('.container').css('min-width','auto');
		 			$J('.container').css('padding-left','5px');
		 			$J('.container').css('padding-right','5px');
		 			$J('.sub_wrap').css('min-width','auto');
		 			$J('.sub_wrap').css('width','auto');
		 			$J('.sub_wrap').css('padding-bottom','30px'); 
		 			$J('.sub_tit_area').css('padding-top','0px');    
		 			$J('.mobileTitle').css('border-top','12px solid #572b4c');    
		 			$J('.mobileTitle').css('padding-top','20px');     
		 			$J("#container > div > div.tab.tab1 > ul > li:nth-child(2) > a > span").css('font-size','15px');
		 		}else{
		 			$J('.header').css('display','block');
		 			$J('.footer').css('display','block');
		 			$J('.footer-e').css('display','block');
		 			$J('.container').css('margin-top','123px');
		 			$J('.container').css('min-width','1200px');
		 			$J('.container').css('padding-left','0px');
		 			$J('.container').css('padding-right','0px');
		 			$J('.sub_wrap').css('min-width','1200px'); 
		 			$J('.sub_wrap').css('width','1200px');
		 			$J('.sub_wrap').css('padding-bottom','150px'); 
		 			$J('.sub_tit_area').css('padding-top','40px');
		 			$J("#container > div > div.tab.tab1 > ul > li:nth-child(2) > a > span").css('font-size','18px');
		 		}
		 	}
		 	$J(window).resize(function(){
		 		windowResizeCheck();
		 	});
		 	
		//반응형 종료
		  
			//파라미터 삭제
		  history.replaceState({},null,location.pathname);  
		  
		  //ptkNm celNo regUserId
		  if(document.getElementById("ptkNm").value == "null"){
		  	document.getElementById("ptkNm").value = "";
		  }
		if(document.getElementById("celNo").value == "null"){
		  	document.getElementById("celNo").value = "";
		  }
		/*
		if(document.getElementById("regUserId").value == "null"){
		  	document.getElementById("regUserId").value = "";
		  }
		*/
		if(document.getElementById("pageId").value == "null"){
		  	document.getElementById("pageId").value = "";
		  }
		  


		  //은행목록 받아오기!(devetk가 아니면)
		  window.onload = function(){
		  	new Ajax.Request('/cmm/bankListAjax.do', {
		          asynchronous : false,
		          onSuccess : function (transport) {
		              var response = transport.responseText.evalJSON();

		              if (response.error) {
		                  window.alert(response.error);
		                  return;
		              }

		              $J.each(response,function(index, item){
		              	$J('#bankComboBox').append('<option value="'+item.BANKL+'">'+item.BANKA+'</option>');
		              })
		              

		          }.bind(this)
		      });
		  }
		  
		  
		  
		 
		//상단의 이름과 계좌주 동일하게 입력
		  function ptkNmEq(){
		  	$J('#ptkNm2').val($J('#ptkNm').val());
		  }
		  
		             
		  
		  var bankCheckCount=0;
		function checkBank(){
			if(checkTicketFlag == false){
				alert("승차권 인증 후, 계좌인증이 가능합니다.");
				return;
			}
			
			if(bankCheckCount == 5){
				alert("계좌인증에 5번 실패했습니다. 초기화면으로 이동합니다.");
				location.href = "/main.do";
				return;
			}
			
			var I_BCODE = $J('#selCd4').val();			//은행코드 selCd4
			var I_BCODEN = $J('#selCd2').val();			//은행명 selCd2
			var I_BANKN = $J('#selCd3').val();			//계좌번호 selCd3
			var E_NAME = $J('#ptkNm').val();			//계좌주 ptkNm
			
			if(E_NAME == ""){
				alert("이름을 입력해주세요");
				return;
			}else if(I_BCODEN == ""){
				alert("은행명을 선택해 주세요");
				return;
			}else if(I_BANKN == ""){
				alert("계좌번호를 입력해 주세요");
				return;
			}
			
			Navi.showLoading();
			
			
			new Ajax.Request('/cmm/bankTestAjax.do', {
		          asynchronous : false,
		          parameters : {I_BCODE : I_BCODE, I_BCODEN : I_BCODEN, I_BANKN : I_BANKN, E_NAME : E_NAME},
		          onSuccess : function (transport) {
		              var response = transport.responseText.evalJSON();

		              if (response.error) {
		                  window.alert(response.error);
		                  return;
		              }
		             
		              //console.log(response);
		              
		              if(response[0]=="S"){
		              	$J("#bankCheckTxt2").css("color","blue");
		  				$J("#bankCheckTxt2").text("계좌인증이 완료되었습니다");
		  				checkBankFlag = true;
		              }else{
		              	bankCheckCount++;
		              	$J("#bankCheckTxt2").css("color","red");
		  				$J("#bankCheckTxt2").text("계좌인증에 실패했습니다(사유 : "+response[2]+")");
		  				alert("계좌인증에 실패했습니다(사유 : "+response[2]+")\n\n실패횟수 : "+bankCheckCount+"/5\n계좌인증 5회이상 실패시 초기화면으로 이동합니다.");
		  				checkBankFlag = false;
		  				if(bankCheckCount == 5){
		  					alert("계좌인증에 5번 실패했습니다. 초기화면으로 이동합니다.");
		  					location.href = "/main.do";
		  				}
		              }
		              
		          }.bind(this)
		      });
			
			setTimeout(function(){
				Navi.hideLoading();
			},2000);
		}



		/*
		dmnPrsDvCd					요청처리구분코드		string	1	"A : 승차권 확인,B : 입금 계좌 인증,I : 지연료 현금 환불 신청"		
		saleWctNo					발매창구번호		string	5			필수
		saleDd						발매일			string	4			필수
		saleSqno					발매일련번호		string	6			필수
		tkRetPwd					승차권반환비밀번호	string	2			필수
		dptnBankCd					입금은행코드		string	3	R011	B / I
		dptnAcntNo					입금계좌번호		string	20			B / I
		custNm						고객명			string	50			필수
		custTeln					고객전화번호		string	20			I
		rmk1Cont					비고1내용			string	100			

		*/

		//금액에 ','추가 함수
		function priceComma(num){
			num = Number(num);
			
			var len, point, str;
			num =num+"";
			point = num.length%3;
			len = num.length;
			
			str = num.substring(0,point);
			while(point < len){
				if(str != ""){
					str +=",";
				}
				str += num.substring(point, point +3);
				point +=3;
			}
			return str;
		}

		//승차권 수정시 인증해제
		$J("#sel_Cd_01").bind("keyup",function(){
			$J("#ticketCheckMsg").css("color","red");
			$J("#ticketCheckMsg").text("승차권 반환번호가 인증되지 않았습니다.");
			checkBankFlag = false;
			checkTicketFlag = false;
		});
		$J("#sel_Cd_02").bind("keyup",function(){
			$J("#ticketCheckMsg").css("color","red");
			$J("#ticketCheckMsg").text("승차권 반환번호가 인증되지 않았습니다.");
			checkBankFlag = false;
			checkTicketFlag = false;
		});
		$J("#sel_Cd_03").bind("keyup",function(){
			$J("#ticketCheckMsg").css("color","red");
			$J("#ticketCheckMsg").text("승차권 반환번호가 인증되지 않았습니다.");
			checkBankFlag = false;
			checkTicketFlag = false;
		});
		$J("#sel_Cd_04").bind("keyup",function(){
			$J("#ticketCheckMsg").css("color","red");
			$J("#ticketCheckMsg").text("승차권 반환번호가 인증되지 않았습니다.");
			checkBankFlag = false;
			checkTicketFlag = false;
		});
		//계좌번호 수정시 인증해제
		$J("#selCd3").bind("keyup",function(){
			$J("#bankCheckTxt2").css("color","red");
			$J("#bankCheckTxt2").text("*환불계좌가 인증되지 않았습니다.");
			checkBankFlag = false;
		});

		//코레일 API 티켓 체크
		function ticketCheck(dmnPrsDvCd){
			d = $('dlfeCachForm');
			d.dmnPrsDvCd.value			= dmnPrsDvCd;						//요청처리구분코드	 	"A : 승차권 확인,B : 입금 계좌 인증,I : 지연료 현금 환불 신청"		
			d.saleWctNo.value			= $J("#sel_Cd_01").val();			//발매창구번호			필수
			d.saleDd.value				= $J("#sel_Cd_02").val();			//발매일				필수
			d.saleSqno.value			= $J("#sel_Cd_03").val();			//발매일련번호			필수	
			d.tkRetPwd.value			= $J("#sel_Cd_04").val();			//승차권반환비밀번호		필수
			//이름공백제거
			$J("#ptkNm").val($J("#ptkNm").val().replace(/ /gi,''));
			$J("#ptkNm2").val($J("#ptkNm").val().replace(/ /gi,''));
			d.custNm.value				= $J("#ptkNm").val(); 				//고객명				필수
			if($J('#ptkNm').val() == ""){
				alert("이름을 입력해주세요");
				return;
			}
			if(dmnPrsDvCd == 'A'){
				
			}else if(dmnPrsDvCd == 'B' && checkTicketFlag == false){	//입금 계좌 인증
				alert("승차권 인증 후 계좌인증을 진행해주세요.");
				return;
			}else if(dmnPrsDvCd == 'B' && checkTicketFlag == true){	//입금 계좌 인증
				d.dptnBankCd.value		= $J("#bankComboBox").val();				//입금은행코드			B / I
				d.dptnAcntNo.value		= $J("#selCd3").val(); 				//입금계좌번호			B / I
			}else if(dmnPrsDvCd == 'I'){	//지연료 현금 환불 신청
				d.dptnBankCd.value		= $J("#bankComboBox").val();				//입금은행코드			B / I
				d.dptnAcntNo.value		= $J("#selCd3").val(); 				//입금계좌번호			B / I
				d.custTeln.value		= $J("#celNo").val();				//고객전화번호			I
			}
			
			new Ajax.Request('/dlfeCashRfn.do', {
		          asynchronous : false,
		          parameters : d.serialize(true),
		          onSuccess : function (transport) {
		              var response = transport.responseText.evalJSON();

		              if (response.error) {
		                  window.alert(response.error);
		                  return;
		              }
		              
		              /*
		              wctNo					창구번호			string	5
					cgPsId					담당자ID			string	6
					uuid					UUID			string	34
					msgCd					응답코드			string	9
					msgTxt					응답메시지			string	-
					strResult				처리결과			string	4
					prsCnqeVal				처리결과값			string	1
					prsPrgSttCd				처리진행상태코드		string	1
					rfnFlg					환불여부			string	1
					rfnDt					환불일자			string	8
					rfnAmt					환불금액			string	11
					dptnBankCd				입금은행코드		string	3

		              */
</script>
</body>
</html>