<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/common/head.jsp" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
</head>
<body>
회원번호 : ${user.uiNum}<br>

이름 : ${user.uiName}<br>
아이디 : ${user.uiId}<br>
비밀번호 : ${user.uiPwd}<br>
전화번호 : ${user.uiPhone}<br>
이메일 : ${user.uiEmail}<br>
<button type="button" onclick="location.href='/profile-update'">정보수정</button>
<button onclick="location.href='/user/delete'">회원탈퇴</button>
</body>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</html>