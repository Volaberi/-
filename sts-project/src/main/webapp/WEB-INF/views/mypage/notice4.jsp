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
												4
											</td>
										</tr>
										<tr>
											<th> 제목 </th>
											<td>
												배송 및 상담 지연 안내
											</td>
										</tr>
										<tr>
											<th style="height:200px; line-height: 200px;">내용</th>
											<td>
											전체적인 주문 폭주로인해 배송 및 전화상담이 지연되고있습니다. <br> <br>
											배송지연으로 인해 고객님의 소중한 세탁물이 늦어져 정말 죄송하며, <br> <br>
세탁물이 출고되는대로 순차적으로 배송을 해드리고있으며, <br> <br>

세탁소년단을 이용해주셔서 감사드리며, 항상 좋은 서비스로 찾아뵙겠습니다. 감사합니다.

											
											</td>
										</tr>
										<tr>
											<th>작성일</th>
											<td>
												2023-03-03
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