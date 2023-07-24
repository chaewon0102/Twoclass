<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/info.jsp</title>
</head>
<body>
<%
// 들고간 값이 없어서 request에 id값 비어있음(null)
//String id=request.getParameter("id");
//out.println(id);

// session : 연결정보를 저장 -> 페이지 상관없이 값이 유지
// 로그인 정보를 session.setAttribute("id", id) 저장
// session에서 저장한 "id"값을 가져오기 -> String id변수에 저장
// String id=(String)session.getAttribute("id");
// out.println(id);

//MemberDAO 객체생성(기억장소 할당)
// MemberDAO dao=new MemberDAO();
// // 메서드 호출
// MemberDTO dto=dao.getMember(id);

//리턴받은 dto가 있으면 (아이디 있음, null 아님)
// if(dto != null){
	
%>
아이디 : ${memberDTO.id }<br>
비밀번호 : ${memberDTO.pass}<br>
이름 : ${memberDTO.name}<br>
가입날짜: ${memberDTO.date}<br>
<%
// }
%>
<a href="${pageContext.request.contextPath }/member/main">메인으로 이동</a>
</body>
</html>
