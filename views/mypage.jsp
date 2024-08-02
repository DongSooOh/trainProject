<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>    

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<!DOCTYPE html>
<html>
<head>
<title>마이페이지</title>

<style>
	.box{
		width:800px;
		margin:auto;
	}
	
	.table{
		
		border-bottom:1px dotted gray;
	}
	button{
		color: black !important;
	}
</style>
<script>
	function toggleTextarea() {
	    var selectElement = document.getElementById("selectlist");
	    var textareadisplay = document.getElementById("textareadisplay");
	    var textarea = document.getElementById("textarea");

	    if (selectElement.value === "기타(개선의견)") {
	        textareadisplay.style.display = "table-row"; // 테이블 로우로 변경
	        textarea.disabled = false; // 텍스트영역 활성화
	    } else {
	        textareadisplay.style.display = "table-row"; // 테이블 로우 보이기
	        textarea.disabled = true; // 텍스트영역 비활성화
	    }
	}

	// 페이지 로드 시 초기 설정
	document.addEventListener("DOMContentLoaded", function() {
	    toggleTextarea(); // 초기 설정을 위해 함수 호출
	});
</script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="sidemenu.jsp" />

	<div class="box mt-5">
	    <div class="row">
	        <div class="col-md-3">
	            <ul class="nav flex-column nav nav-underline" id="myTab" role="tablist">
	                <li class="nav-item" role="presentation">
	                    <button class="nav-link active" id="mypage-tab" data-bs-toggle="pill" data-bs-target="#mypage-tab-pane" type="button" role="tab" aria-controls="mypage-tab-pane" aria-selected="true">개인정보</button>
	                </li>
	                <li class="nav-item" role="presentation">
	                    <button class="nav-link" id="usermod-tab" data-bs-toggle="pill" data-bs-target="#usermod-tab-pane" type="button" role="tab" aria-controls="usermod-tab-pane" aria-selected="false">정보수정</button>
	                </li>
	                <li class="nav-item" role="presentation">
	                    <button class="nav-link" id="unregister-tab" data-bs-toggle="pill" data-bs-target="#unregister-tab-pane" type="button" role="tab" aria-controls="unregister-tab-pane" aria-selected="false">회원탈퇴</button>
	                </li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="memberjoin-tab" data-bs-toggle="pill" data-bs-target="#memberjoin-tab-pane" type="button" role="tab" aria-controls="memberjoin-tab-pane" aria-selected="false">직원등록</button>
					</li>
	                <li class="nav-item" role="presentation">
	                    <button class="nav-link" id="leveling-tab" data-bs-toggle="pill" data-bs-target="#leveling-tab-pane" type="button" role="tab" aria-controls="leveling-tab-pane" aria-selected="false">등급권한</button>
	                </li>
	            </ul>
	        </div>
	        <div class="col-md-9">
	            <div class="tab-content" id="myTabContent">
	                <div class="tab-pane fade show active" id="mypage-tab-pane" role="tabpanel" aria-labelledby="mypage-tab">
						<h1>기본정보</h1>						
						<br>
							<table class="table">
								<tr>
									<td>이름</td>
									<td></td>
								</tr>
								<tr>
									<td>생년월일</td>
									<td></td>							
								</tr>
								<tr>
									<td>전화번호</td>
									<td></td>								
								</tr>
								<tr>
									<td>이메일</td>
									<td></td>
								</tr>
								<tr>
									<td>주소</td>
									<td></td>
								</tr>
							</table>
					</div>
					
					
	                <div class="tab-pane fade" id="usermod-tab-pane" role="tabpanel" aria-labelledby="usermod-tab">
						<h1>정보수정</h1>						
						<br>
						<form>
						<table class="table">
							<tr>
								<td>이름</td>
								<td><input type="text"></td>
							</tr>
							<tr>
								<td>생년월일</td>
								<td><input type="date"></td>								
							</tr>
							<tr>
								<td>전화번호</td>
								<td><input type="text"></td>								
							</tr>
							<tr>
								<td>이메일</td>
								<td><input type="email"></td>
							</tr>
							<tr>
								<td>주소</td>
								<td><jsp:include page="zipcode.jsp" /></td>								
							</tr>
						</table>
							<div style="text-align:center">
								<input type="button" class="btn btn-success" value="수정">
							</div>
						</form>
					</div>				
	                <div class="tab-pane fade" id="unregister-tab-pane" role="tabpanel" aria-labelledby="unregister-tab">
						<h1>회원탈퇴</h1>						
						<br>
						<form>
						<table class="table">
							<tr>
								<td>비밀번호</td>
								<td><input type="password"></td>
							</tr>
							<tr>
								<td>비밀번호 확인</td>
								<td><input type="password"></td>
							</tr>
							<tr>
								<td>탈퇴사유</td>
								<td>
									<select id="selectlist" onchange="toggleTextarea()">
										<option>이용빈도 낮음</option>
										<option>개인정보 및 보안 우려</option>
										<option>CRX 홈페이지 이용 불편</option>
										<option>CRX 열차 이용 볼푼</option>
										<option>기타(개선의견)</option>
									</select>
								</td>	
							</tr>
							  <tr id="textareadisplay" style="display: none;">
								<td>기타(개선의견)</td>
								<td><textarea id="textarea"></textarea></td>
							</tr>
						</table>
							<div style="text-align:center">
								<input type="button" class="btn btn-success" value="탈퇴">
							</div>
						</form>
					</div>
					<div class="tab-pane fade" id="memberjoin-tab-pane" role="tabpanel" aria-labelledby="memberjoin-tab">
						<h1>직원등록</h1>						
						<br>
						<form>
						<table class="table">
							<tr>
								<td>사원번호</td>
								<td>
									<select>
										<option></option>
										<option></option>
										<option></option>	
									</select>
								</td>
							</tr>
							<tr>
								<td>이름</td>
								<td><input type="text"></td>
							</tr>							
							<tr>
								<td>생년월일</td>
								<td><input type="date"></td>								
							</tr>
							<tr>
								<td>성별</td>
								<td>
									<select>
										<option>남성</option>
										<option>여성</option>	
									</select>
								</td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td><input type="text"></td>								
							</tr>
							<tr>
								<td>이메일</td>
								<td><input type="email"></td>
							</tr>
							<tr>
								<td>주소</td>
								<td><jsp:include page="zipcode.jsp" /></td>								
							</tr>
							<tr>
								<td>부서명</td>
								<td>
									<select>
										<option></option>
										<option></option>
										<option></option>	
									</select>
								</td>
							</tr>
							<tr>
								<td>직급</td>
								<td>
									<select>
										<option></option>
										<option></option>
										<option></option>	
									</select>
								</td>
							</tr>
						</table>
							<div style="text-align:center">
								<input type="button" class="btn btn-success" value="등록">
							</div>
						</form>			
					</div>
	                <div class="tab-pane fade" id="leveling-tab-pane" role="tabpanel" aria-labelledby="leveling-tab">
						<h1>등급관리</h1>						
						<br>							
						<table>
							<tr>
								<td>이름</td>
								<td>생년월일</td>
								<td>부서명</td>
								<td>직급</td>								
								<td>등급</td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td>
									<select>
										<option></option>
										<option></option>
										<option></option>
										<option></option>
										<option></option>										
									</select>
								</td>
								<td><input type="button" class="btn btn-success" value="변경"></td>
							</tr>							
						</table>
					</div>
	            </div>
	        </div>
	    </div>
	</div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>