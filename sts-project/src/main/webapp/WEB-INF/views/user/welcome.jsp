<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 화면</title>
    <%@ include file="/WEB-INF/views/common/head.jsp" %>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
</head>

<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box
}

body{
    background-color: #f7f7f7;
}

ul>li{
    list-style: none
}

a{
    text-decoration: none;
}

ul.welcom_box{
	background-color: #fff;
}

.clearfix{
    margin-top: 30px;
    border: 1px solid #ddd;
    padding: 20px;
    width: 1200px;
    height: 600px;
    content: "";
    display: block;
    clear: both;
    text-align: center;
}

#logo_img{
    position: absolute;
    margin-left: 50px;
}

#welcome_title{
    position: absolute;
    margin-left: 550px;
    margin-top: 160px;
}

.welBtn1{
    position: absolute;
    margin-left: 380px;
    margin-top: 420px;
    background-color: #fff;
    color:#888;
    display: block;
    width: 200px;
    height: 60px; 
    font-size: 20px;
    text-align: center;
    border: solid 1px;
}

.welBtn2{
    position: absolute;
    margin-left: 590px;
    margin-top: 420px;
    background-color: #0354d5;
    color: #fff;
    display: block;
    width: 200px;
    height: 60px; 
    font-size: 20px;
    text-align: center;
    border: solid 1px;
}

</style>

<body>

<div id="welcomeForm">
	<ul class="welcom_box">
		<li class="checkBox check01">
			<ul class="clearfix">
                <li id="logo_img"><img src="../resources/bs5/img/logo2.png" style="width: 400px;"></li>
                <li id="welcome_title">
                    <h3><a style="color: #0354d5;">세탁소년단</a> 회원가입을 진심으로 환영합니다.</h3>
                    <h6> 세탁소년단의 모든 서비스를 이용하실 수 있습니다!</h6>
                </li>
                <li><button class="welBtn1" onclick="location.href='/'">홈으로</button></li>
                <li><button class="welBtn2" onclick="location.href='/login'">로그인</button></li>
		</li>
	<ul class="welcomeBtn">
		
	</ul>
</div>
</body>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</html>