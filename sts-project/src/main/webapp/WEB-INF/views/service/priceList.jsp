<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<title>세탁 소년단</title>
<style>
.page-header {
    background: url(./resources/bs5/img/shirt-mockup-concept-with-plain-clothing.jpg) top center no-repeat;
    background-size: cover;
    text-shadow: 0 0 30px rgba(0, 0, 0, .1);
}
.cla{ text-align:left;}
.cla img{ margin:0 auto;}
.cla-img{ margin:0 0 0 -20px;}
 .price-container {
            display: flex;
            align-items: center;
        }
        .image-container {
            flex: 0 0 auto;
            margin-right: 30px;
            padding: 60px;
        }
        .price-table {
            flex: 1 1 auto;
            border-collapse: collapse;
            margin: 40px;
            padding: 40px;
        }
        .price-table th, .price-table td {
            border: 1px solid black;
            padding: 5px;
            margin: 10px;
        }
        .price-table th {
            background-color: #f2f2f2;
        }
        .but{
	text-align: center;
	margin-bottom: 50px;
}
   .serviceBtn{
	background-color: #0463fa;
	color: white;
	display: block;
	width: 150px;
	height: 40px; 
	font-size: 20px;
	text-align: center;
	border: solid 1px;
	margin: auto;
	border-radius: 30px;
}
</style>
</head>
<body>
<!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">서비스</h1>
        </div>
    </div>
<!-- Page Header End -->	
 
    <div class="price-container">
        <div class="image-container">
            
                <img src="../resources/bs5/img/input.jpg"  width="500" height="500"><br>
           
        </div>
        <table class="price-table">
        <thead>
            <tr>
                <th>번호</th>
                <th>종류</th>
                <th>가격</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${priceList}" var="price">
                <tr>
                    <td align="center">${price.lgNum}</td>
                    <td align="left">${price.lgType}</td>
                    <td align="right">${price.lgPrice} 원</td>
                </tr>
            </c:forEach>
        </tbody>
        </table>
    </div>
	<div class="but">
	<button class="serviceBtn" type="button" onclick="location.href='/#'">서비스 신청</button><!-- 장바구니 창으로 이동? -->
</div>

</body>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</html>