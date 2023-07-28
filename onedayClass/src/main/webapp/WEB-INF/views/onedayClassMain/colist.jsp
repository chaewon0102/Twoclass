<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>colist.jsp</title>
</head>
<body>
<%
//로그인 되어있는 아이디 == 세션에 저장된 "id" 일치

%>
<h2><a href="${pageContext.request.contextPath }/onedayClassMain/createClass">글쓰기</a></h2>
<h1>글목록 : 로그인(${sessionScope.id })</h1>
<table border="1">
<tr><td>클래스 번호 </td><td>클래스 이름</td><td>클래스 소개</td>
    <td>호스트 소개 </td><td>가격</td></tr>
<c:forEach var="dto" items="${classList }">
 <tr><td>${dto.class_num}</td>
     <td>${dto.class_title}</td>
     <td><a href="${pageContext.request.contextPath }/onedayClassMain/content?num=${dto.class_num}">
          ${dto.class_intro}</a></td>
     <td>${dto.host_intro}</td>
     <td>${dto.class_price}</td></tr>     
</c:forEach>
</table>
<!-- 페이지번호 -->

	<c:if test="${startPage > pageBlock} ">
	 <a href = "${pageContext.request.contextPath }/onedayClassMain/colist?pageNum=${pageDTO.startPage - pageDTO.pageBlock }">[이전]</a>
	</c:if>

	<c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
	<a href="${pageContext.request.contextPath }/onedayClassMain/colist?pageNum=${i }"> ${i } </a> 
	</c:forEach>
	
	<c:if test="${pageDTO.endPage < pageDTO.pageCount }">
<a href="${pageContext.request.contextPath }/onedayClassMain/colist?pageNum=${pageDTO.startPage + pageDTO.pageBlock }">[다음]</a>
	</c:if>
	

</body>
</html>
