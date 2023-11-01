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
				<table id="datatable-scroller"
									class="table table-bordered tbl_Form">
									<caption></caption>
									<colgroup>
										<col width="250px" />
									</colgroup>
									<tbody>
										<tr>
											<th>번호</th>
											<td>
												3
											</td>
										</tr>
										<tr>
											<th> 제목 </th>
											<td>
												설 연휴 배송 안내
											</td>
										</tr>
										<tr>
											<th style="height:200px; line-height: 200px;">내용</th>
											<td>
											2023년 설 연휴 배송 안내입니다. <br> <br>
			1월 20일(금) 오후 2시 이전 주문 및 결제 완료 건은 정상 출고되며, <br> <br> 
			이후 주문 및 결제 건은 1월 25일(수)부터 순차적으로 발송됩니다. <br> <br>
			설 연휴 전 택배사의 물량 증가로 인해, 배송이 원활하지 않을 수 있으니 이 점 양해 부탁드립니다.
											</td>
										</tr>
										<tr>
											<th>작성일</th>
											<td>
												2023-01-20
											</td>
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