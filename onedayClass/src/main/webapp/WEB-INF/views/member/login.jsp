<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/login.jsp</title>
</head>
<body>
<h1>login.jsp</h1>
<form action="${pageContext.request.contextPath }/member/loginPro" method="post">
아이디 : <input type="text" name="mem_id"><br>
비밀번호 : <input type="password" name="mem_pass"><br>
<input type="submit" value="로그인">
</form>
</body>
</html>
