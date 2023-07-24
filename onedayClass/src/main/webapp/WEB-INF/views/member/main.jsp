<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/main.jsp</title>
</head>
<body>
<h1>main.jsp</h1>
<%
// String id=request.getParameter("id");
// 연결정보를 저장해서 유지되는 기억장소 session내장객체에서  저장값을 가져오기
// 	String id=(String)session.getAttribute("id");
	// session값이 없으면 (session값이 null이면 )
	// login.jsp 이동
// 	if(id == null){
// 		response.sendRedirect("login.jsp");
// 	}
%>
<!-- http://localhost:8080/myweb/member/main -->

<c:if test="${ empty sessionScope.id }">
	<c:redirect url="/member/login"></c:redirect>
</c:if>
<img 
src="${pageContext.request.contextPath }/resources/bunny.jpg">
<br>
${sessionScope.id }님 로그인 하셨습니다.
<a href="${pageContext.request.contextPath }/member/logout">로그아웃</a><br>
<a href="${pageContext.request.contextPath }/member/info">회원정보조회</a><br>
<a href="${pageContext.request.contextPath }/member/update">회원정보수정</a><br>
<a href="${pageContext.request.contextPath }/member/delete">회원정보삭제</a><br>

<%
//회원목록은 관리자만 볼수 있게 설정
// 관리자id  admin 약속
// if(id != null){ // 로그인 한 상태
// 	if(id.equals("admin")){ // 로그인 아이디가 "admin" 같으면
%>		
	<a href="${pageContext.request.contextPath }/member/list">회원목록</a><br>
<%		
// 	}
// }
%>
<a href="write.bo">게시판 글쓰기</a><br>
<a href="list.bo">게시판 글목록</a><br>

<a href="fwrite.bo">첨부파일 게시판 글쓰기</a><br>



</body>
</html>



