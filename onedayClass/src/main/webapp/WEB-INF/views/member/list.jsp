<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/list.jsp</title>
</head>
<body>
<%
// //MemberDAO 객체생성
// MemberDAO dao=new MemberDAO();
// //List<MemberDTO>  getMemberList() 메서드 정의
// //List<MemberDTO> dtoList =  getMemberList() 메서드 호출
// List<MemberDTO> dtoList = dao.getMemberList();
%>
<table border="1">
<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>가입날짜</td></tr>
<%
// for(int i=0;i<dtoList.size();i++){
// 	MemberDTO dto=dtoList.get(i);
%>
<c:forEach var="dto" items="${mList }">
<tr><td>${dto.id}</td>
    <td>${dto.pass}</td>
    <td>${dto.name}</td>
    <td>${dto.date}</td></tr>
</c:forEach>  
<%	
// }
%>
</table>
<br>
<input type="button" value="회원목록" id="btn"><br>
<table border="1" id="idtable">
<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>가입날짜</td></tr>
</table>

<!-- http://localhost:8080/myweb/member/list -->
<script type="text/javascript" 
src="${pageContext.request.contextPath }/resources/script/jquery-3.7.0.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btn').click(function(){
// 			alert("클릭");
			$.ajax({
				url:'${pageContext.request.contextPath }/member/jsonlist',
// 				data:{'id':값},
				dataType:'json',
				success:function(result){
// 					alert(result);
    //result 배열 => 회원Object 여러명 => 반복 each()
    //아이템을 담은걸 append 뿌리겠다 .
    				$.each(result,function(index,item){
//     					alert(index);
//     					alert(item.id);
//     					alert(item.pass);
//     					alert(item.name);
//     					alert(item.date);
						var dt = new Date(item.date);
						var d = Date.getFullYear(item.date)+"."+(dt.getMonth()+1)+"."+dt.getDate();
						$('#idtable').append('<tr><td>' + item.id+'</td><td>' +item.pass+'</td><td>'+item.name+'</td><td>'+item.date+'</td></tr>');
    				});
				}
			});
		});
	});
</script>
</body>
</html>
