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

.clearfix::after{
	content: "";
	display: block;
	clear: both;
}

#joinForm{
	width: 460px;
	margin: 0 auto;
}

ul.join_box{
	border: 1px solid #ddd;
	background-color: #fff;
}

.checkBox,.checkBox>ul{
	position: relative;
}

.checkBox>ul>li{
	float: left;
}

.checkBox>ul>li:first-child{
	width: 85%;
	padding: 15px;
	font-weight: 600;
	color: #888;
}

.checkBox>ul>li:nth-child(2){
	position: absolute;
	top: 50%;
	right: 30px;
	margin-top: -12px;
}

.checkBox textarea{
	width: 96%;
	height: 90px; 
	margin: 0 2%;
	background-color: #f7f7f7;color: #888; border: none;
}

.footBtwrap{
	margin-top: 15px;
}

.footBtwrap>li{
	float: left;
	width: 50%;
	height: 60px;
}

.footBtwrap>li>button{
	display: block;
	width: 100%;
	height: 100%; 
	font-size: 20px;
	text-align: center;
	line-height: 60px; 
	border: solid 1px;
}

.fpmgBt1{
	background-color: #fff;
	color:#888;
}

.fpmgBt2{
	background-color: #0354d5;
	color: #fff;
}

</style>

<script>

function checkSelectAll(checkbox)  {
	const chkall = document.querySelector('input[name="chkAll"]');
	if(checkbox.checked === false)  {
    chkall.checked = false;
	}
}

function selectAll(chkAll)  {
	const checkboxes = document.getElementsByName('chk');
	checkboxes.forEach((checkbox) => {
    checkbox.checked = chkAll.checked
	})
}

function backPage(fpmgBt1){
	location.href  ="http://localhost/"
}

</script>

<body>

<form action="/join" id="joinForm" method="POST">
	<ul class="join_box">
		<li class="checkBox check01">
			<ul class="clearfix">
				<li>이용약관<span style="color: rgb(231, 1, 1);">(필수)</span>, 개인정보 수집 및 이용<span style="color: rgb(231, 1, 1);">(필수)</span>,
					위치정보 이용약관<span style="color: rgb(231, 1, 1);">(필수)</span>, 프로모션 안내(선택)
					에 모두 동의합니다.</li>
				<li class="checkAllBtn">
					<input type="checkbox" name="chkAll" id="chk" class="chkAll" onclick='selectAll(this)'>
				</li>
			</ul>
		</li>
		<li class="checkBox check02">
			<ul class="clearfix">
				<li>이용약관 동의<span style="color: rgb(231, 1, 1);">(필수)</span></li>
				<li class="checkBtn">
					<input type="checkbox" name="chk" onclick='checkSelectAll(this)' required> 
				</li>
			</ul>
			<textarea name="" id="">
세탁소년단 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 세탁소년단 서비스의 이용과 관련하여 세탁소년단 서비스를 제공하는 세탁소년단 주식회사(이하 ‘세탁소년단’)와 이를 이용하는 세탁소년단 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 세탁소년단 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
</textarea>
		</li>
		<li class="checkBox check03">
			<ul class="clearfix">
				<li>개인정보 수집 및 이용에 대한 안내<span style="color: rgb(231, 1, 1);">(필수)</span></li>
				<li class="checkBtn">
					<input type="checkbox" name="chk" onclick='checkSelectAll(this)' required>
				</li>
			</ul>

			<textarea name="" id="">
세탁소년단 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 세탁소년단 서비스의 이용과 관련하여 세탁소년단 서비스를 제공하는 세탁소년단 주식회사(이하 ‘세탁소년단’)와 이를 이용하는 세탁소년단 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 세탁소년단 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
</textarea>
		</li>
		<li class="checkBox check03">
			<ul class="clearfix">
				<li>위치정보 이용약관 동의<span style="color: rgb(231, 1, 1);">(필수)</span></li>
				<li class="checkBtn">
					<input type="checkbox" name="chk" onclick='checkSelectAll(this)' required>
				</li>
			</ul>

			<textarea name="" id="">
세탁소년단 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 세탁소년단 서비스의 이용과 관련하여 세탁소년단 서비스를 제공하는 세탁소년단 주식회사(이하 ‘세탁소년단’)와 이를 이용하는 세탁소년단 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 세탁소년단 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
</textarea>
		</li>
		<li class="checkBox check04">
			<ul class="clearfix">
				<li>이벤트 등 프로모션 알림 메일 수신(선택)</li>
				<li class="checkBtn">
					<input type="checkbox" name="chk">
				</li>
			</ul>

		</li>
	</ul>
	<ul class="footBtwrap clearfix">
		<li><button class="fpmgBt1" onclick="backPage(this)">취소</button></li>
		<li><button class="fpmgBt2">동의</button></li>
	</ul>
</form>

</body>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</html>