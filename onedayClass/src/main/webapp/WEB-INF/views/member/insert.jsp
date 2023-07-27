<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/insert.jsp</title>
</head>
<body>
<!-- http://localhost:8080/myweb/member/insert -->
<!-- 
     action="member/insertPro"
http://localhost:8080/myweb/member/member/insertPro -->
<!-- 
   action="/member/insertPro"
http://localhost:8080/member/insertPro -->

<!-- 
   action="프로젝트명/member/insertPro"
http://localhost:8080/프로젝트명/member/insertPro -->

<%--프로젝트명  <%=request.getContextPath() %> --%>

<form action="${pageContext.request.contextPath }/member/insertPro" method="post">
아이디 : <input type="text" name="mem_id" id="mem_id" class="mem_id" onkeyup="characterCheck(this)" onkeydown="characterCheck(this)" 
		placeholder="10글자제한 특수문자x">
<input type="button" value="아이디중복체크" id="idcheckbtn"><br>
<div id="idcheckdiv"></div>
<input type="hidden" name="ch" value="아이디 중복" id="ch" >
<br>
비밀번호 : <input type="password" name="mem_pass" id="mem_pass" placeholder="10글자제한"><br>
이름 : <input type="text" name="mem_name" id="mem_name" onkeyup="characterCheck(this)" onkeydown="characterCheck(this)" placeholder="10글자제한 특수문자x"><br>
전화번호 : <input type="text"  name="mem_phone" id="mem_phone" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" maxlength="11"/><br>
<input type="radio" name="mem_gender" value="남자" id="mem_gender0"> 남자<br>
<input type="radio" name="mem_gender" value="여자"id="mem_gender1"> 여자<br>
프로필 사진 : <input type="file" name="mem_file"><br>
<input type="radio" name="mem_type" value="회원" id="mem_type1"> 회원<br>
<input type="radio" name="mem_type" value="강사"id="mem_type2"> 강사<br>

<input type="text" id="sample4_postcode" name="mem_addcode"  placeholder="우편번호">
<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
<input type="text" id="sample4_roadAddress" name="mem_addroad" placeholder="도로명주소"><br>
<input type="text" id="sample4_jibunAddress" name="mem_addjibun" placeholder="지번주소"><br>
<span id="guide" style="color:#999;display:none"></span>
<input type="text" id="sample4_detailAddress"  name="mem_add" placeholder="상세주소"><br>

<input type="hidden" name="mem_confirm" value ="y">

<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
</div>
</form>

<p>
<button type ="button" id="submit" onclick="registerCheck()">가입하기</button>
<input type="button" value="로그인하러가기" onclick="location.href ='${pageContext.request.contextPath }/member/main'">
</p>
<input type="button" value="아이디찾기" onclick="location.href ='${pageContext.request.contextPath }/member/idcheck'">
<input type="button" value="비밀번호찾기" onclick="location.href ='${pageContext.request.contextPath }/member/passcheck'">

<script type="text/javascript"
 src="${pageContext.request.contextPath }/resources/script/jquery-3.7.0.js"></script>
 <script type="text/javascript">
 	$(document).ready(function(){
 		$('#idcheckbtn').click(function(){
			if($('.mem_id').val() == ""){
				alert("아이디 입력하세요");
				$('.mem_id').focus();
				return false;
			}
			$.ajax({
				url:'${pageContext.request.contextPath }/member/idCheck',
				data:{'mem_id':$('.mem_id').val()},
				success:function(result){
					// id="idcheckdiv" 출력
					if(result == 'iddup'){
						result = "아이디 중복";
					}else{
						result = "아이디 사용가능";
					}
					$('#idcheckdiv').html(result);
					$('#ch').val(result);
				}
			});
			
 		});
 	});
 </script>
 
 
<script>
// 특수문자 입력 방지
function characterCheck(obj){
var regExp = /[ \{\}\[\]\/?.,;:|\)*~`!^\-_+┼<>@\#$%&\'\"\\\(\=]/gi; 
// 허용할 특수문자는 여기서 삭제하면 됨
// 지금은 띄어쓰기도 특수문자 처리됨 참고하셈
if( regExp.test(obj.value) ){
	alert("특수문자는 입력하실수 없습니다.");
	obj.value = obj.value.substring( 0 , obj.value.length - 1 ); // 입력한 특수문자 한자리 지움
	}
}
</script>
 
 <script>
 function registerCheck() {
	if($.trim($('#mem_id').val()) == '') {
		alert("아이디 입력해주세요.");
		return false;
	}
	if($.trim($('#mem_pass').val()) == '') {
		alert("비밀번호 입력해주세요.");
		return false;
	}
	if($.trim($('#mem_name').val()) == '') {
		alert("이름 입력해주세요.");
		return false;
	}
	if($.trim($('#mem_phone').val()) == '') {
		alert("전화번호 입력해주세요.");
		return false;
	}
	if($('#mem_gender0').is(':checked') == false && $('#mem_gender1').is(':checked') == false ) {
		alert("성별 선택해주세요.");
		return false;
	}
	if($('#mem_type1').is(':checked') == false && $('#mem_type2').is(':checked') == false ) {
		alert("타입 선택해주세요");
		return false;
	}
	if($.trim($('#sample4_postcode').val()) == '') {
		alert("주소 입력해주세요.");
		return false;
	}
	if($.trim($('#ch').val())=='아이디 중복') {
		alert("중복 체크해주세요");
		return false;
	}
	if(confirm("회원가입을 하시겠습니까?")){
		alert("회원가입이 완료되었습니다. 감사합니다.");
		 $("form").submit();	
	}
}

 
 
 </script>
 
 
 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
</body>
</html>