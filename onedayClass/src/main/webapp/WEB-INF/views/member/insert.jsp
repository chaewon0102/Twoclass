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
아이디 : <input type="text" name="mem_id" class="mem_id">
<input type="button" value="아이디중복체크" id="idcheckbtn"><br>
<div id="idcheckdiv"></div><br>
비밀번호 : <input type="password" name="mem_pass"><br>
이름 : <input type="text" name="mem_name"><br>
전화번호 : <input type= "text" name="mem_phone"><br>
<input type="radio" name="mem_gender" value="0"> 남자<br>
<input type="radio" name="mem_gender" value="1"> 여자<br>
프로필 사진 : <input type="file" name="mem_file"><br>
주소 : <input type="text" name="mem_add"><br>
<input type="hidden" name="mem_confirm" value ="y">

<p>
<input type="submit" value="회원가입">
</p>
</form>

<script type="text/javascript"
 src="${pageContext.request.contextPath }/resources/script/jquery-3.7.0.js"></script>
 <script type="text/javascript">
 	$(document).ready(function(){
 		$('#idcheckbtn').click(function(){
//  			alert("클릭");
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
				}
			});
			
 		});
 	});
 </script>

</body>
</html>