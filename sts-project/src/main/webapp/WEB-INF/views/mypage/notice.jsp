<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypageMain</title>
<%@ include file="/WEB-INF/views/common/head.jsp"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/head2.jsp"%>
</head>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>마이페이지 메인</title>

</head>

<body>

	<!-- ======= Header ======= -->
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>
	<!-- End Sidebar-->

	<main id="main" class="main">

		<div class="pagetitle">
			<h1> 공지사항 </h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/"> 홈으로 </a></li>
					<li class="breadcrumb-item"> 게시판 </li>
					<li class="breadcrumb-item"> 공지사항 </li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<div class="card-body">
			<div class="quill-editor-default">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td> <h3> [ 안내 ] </h3> </td>
							<td> <h3> 폭우로 인하여 배송 지연 안내 </h3> </td>
							<td> <h3> 2023-06-29 </h3> </td>
						</tr>
						<tr>
							<td>5</td>
							<td> <a href="notice5">긴급 서버 점검에 따른 서비스 일시 중단 안내 </a> </td>
							<td> 2023-06-30 </td>
						</tr>
						<tr>
							<td>4</td>
							<td> <a href="notice4"> 배송 및 상담 지연 안내 </a> </td>
							<td> 2023-03-03 </td>
						</tr>
						<tr>
							<td>3</td>
							<td> <a href="notice3"> 설 연휴 배송 안내 </a> </td>
							<td> 2023-01-20 </td>
						</tr>
						<tr>
							<td>2</td>
							<td> <a href="notice3">무료배송 기준 및 배송비 안내 </a> </td>
							<td> 2023-01-15 </td>
						</tr>
						<tr>
							<td>1</td>
							<td> <a href="notice3"> 세탁소년단을 방문 해주셔서 감사합니다. </a> </td>
							<td> 2023-01-01 </td>
						</tr>
						
					</tbody>
				</table>
			</div>

		</div>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->

	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>



</body>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</html>