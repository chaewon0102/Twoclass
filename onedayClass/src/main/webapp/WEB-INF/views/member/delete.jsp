<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/delete.jsp</title>
</head>
<body>
<%
//session : 연결정보를 저장 -> 페이지 상관없이 값이 유지
//로그인 정보를 session.setAttribute("id", id) 저장
//session에서 저장한 "id"값을 가져오기 -> String id변수에 저장
// String id=(String)session.getAttribute("id");
%>
<form action="${pageContext.request.contextPath }/member/deletePro" method="post">
아이디 : 
<input type="text" name="id" value="${sessionScope.id }" readonly><br>
비밀번호 : <input type="password" name="pass"><br>
<input type="submit" value="회원정보삭제">
</form>
</body>
</html>