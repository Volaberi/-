<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세탁소년단</title>
<style>
.page-header {
    background: url(./resources/bs5/img/shirt-mockup-concept-with-plain-clothing.jpg) top center no-repeat;
    background-size: cover;
    text-shadow: 0 0 30px rgba(0, 0, 0, .1);
}
.clean{ display:table; width:100%; margin:60px 0 50px 0;}
.clean.brdT{ border-top:#ddd 1px solid; padding-top:60px;}
.clean>dt{ display:table-cell;  width:270px; vertical-align:top; font-size:26px; color:#333; }
.clean>dt>span{ display:block;}
.laundry{ text-align:center;}
.laundry img{ margin:0 auto;}
.laundry-img{ margin:0 0 0 -20px;}
.guide{text-align: center; width: 100%}
.guide>p{
	font-weight: bolder;
}

.text1{
	padding-left: 40px ;
}



</style>
<%@ include file="/WEB-INF/views/common/head.jsp" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
</head>
<body>
	<div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
		<div class="container py-5">
			<h1 class="display-3 text-white mb-3 animated slideInDown">서비스 안내사항 </h1>
		</div>
	</div>

	<dl class="clean">
		<dt class="text1"><span>꼼꼼한</span><span>세탁소년단</span> <span>세탁과정</span></dt>
		<dd>
			<div class="laundry">
				<img src="../resources/bs5/img/clean.jpg" alt="" class="vis-pc">
			</div>
		</dd>
	</dl>

	<div class="guide">
		<h1>세탁 서비스 안내사항</h1><br>
		<p>1. 위에 세탁 과정이 있으니 잘 읽어 주세요.<br>
		2. 신청하기 버튼을 누르면 가격표에서 옷의 종류를 담았던 장바구니 화면으로 전환 됩니다.<br>
		3. 서비스를 신청 하시면 옷이 가는데 3~4 일 정도가 소모 되는점 양해 부탁드립니다.<br>
		4. 수거는 신청을 하시면 아침 출근 하실때 박스나 봉지에 넣어서 집앞에 놔두시면 저희가 수거해 갑니다.<br>
		5. 취소같은 경우는 마이페이지에 들어가시면 취소를 하실수 있습니다.</p><br>
	</div>
	


</body>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</html>
