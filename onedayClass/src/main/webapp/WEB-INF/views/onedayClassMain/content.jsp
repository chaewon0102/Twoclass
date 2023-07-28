
<%@page import="com.itwillbs.domain.ClassDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>center/content.jsp</title>
<script type="text/javascript"
 src="${pageContext.request.contextPath }/resources/script/jquery-3.7.0.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts/icomoon/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fonts/flaticon/font/flaticon.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/tiny-slider.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aos.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css" />
    
<!--[if lt IE 9]>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js" type="text/javascript"></script>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/ie7-squish.js" type="text/javascript"></script>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
<![endif]-->
<!--[if IE 6]>
 <script src="../script/DD_belatedPNG_0.0.8a.js"></script>
 <script>
   /* EXAMPLE */
   DD_belatedPNG.fix('#wrap');
   DD_belatedPNG.fix('#main_img');   

 </script>
 <![endif]-->
</head>
<body>
<div id="wrap">
<!-- 헤더들어가는 곳 -->
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- 헤더들어가는 곳 -->

<!-- 본문들어가는 곳 -->
<!-- 메인이미지 -->
<div id="sub_img_center"></div>
<!-- 메인이미지 -->

<!-- 왼쪽메뉴 -->

<!-- 왼쪽메뉴 -->

<!-- 게시판 -->
<%
/* String id=(String)session.getAttribute("id"); */

// 글내용 가져오기
/* 
BoardDTO dto=(BoardDTO) */


ClassDTO dto = new ClassDTO();
request.setAttribute("dto", dto);

%>
<article>
<h1>Class Content</h1>
<table id="notice">
<tr><td>클래스 번호</td><td>${dto.class_num}</td></tr>
<tr><td>클래스 이름</td><td>${dto.class_title}</td></tr>
<tr><td>클래스 소개</td><td>${dto.class_intro}</td></tr>
</table>
<div id="table_search">
<%

//id 로그인
//dto.getName() 글쓴이
// if(id != null){
// 	if(id.equals(dto.getName())){


%>



</div>	

<div class="clear"></div>

</article>
<!-- 게시판 -->
<!-- 본문들어가는 곳 -->
<div class="clear"></div>
<!-- 푸터들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- 푸터들어가는 곳 -->
</div>



 <script src="${pageContext.request.contextPath }/resources/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/tiny-slider.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/aos.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/navbar.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/counter.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/custom.js"></script>
    
</body>
</html>