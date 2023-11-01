<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/common/common.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세탁소년단</title>
<%@ include file="/WEB-INF/views/common/head.jsp"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<%@ include file="/WEB-INF/views/common/head2.jsp"%>
</head>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
</head>

<body>

	<!-- ======= Header ======= -->

	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<%@ include file="/WEB-INF/views/common/sidebar.jsp" %>
	<!-- End Sidebar-->

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Review</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">게시판</li>
					<li class="breadcrumb-item active">리뷰수정</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-6">

					<div class="card" style="width: 900px;">
						<div class="card-body" style="height: 450px;">
							<!-- Quill Editor Default -->
							<div class="quill-editor-default">
								<form method="POST" action="/review-update" > 
								<!-- application/x-www-form-urlencoded -->
								<div class="mb-3 mt-3">
									<label for="rbiTitle" class="form-label">Title : </label>
									<input type="text" class="form-control" id="rbiTitle" name="rbiTitle" value="${review.rbiTitle}">
								</div>
								<div class="mb-3">
									<label for="rbiContent" class="form-label">Content : </label>
									<textarea id="rbiContent" class="form-control" name="rbiContent"
										style="width: 800px; height: 200px;">${review.rbiContent}</textarea>
								</div>
								<div class="button3">
								   <button class="btn btn-outline-primary"> 수정 </button>
								</div>
								   <input type="hidden" name="rbiNum" value="${review.rbiNum}">
								</form>
							</div>
							<!-- End Quill Editor Default -->

						</div>
					</div>

				</div>


			</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->

	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/chart.js/chart.umd.js"></script>
	<script src="assets/vendor/echarts/echarts.min.js"></script>
	<script src="assets/vendor/quill/quill.min.js"></script>
	<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="assets/vendor/tinymce/tinymce.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>

</html>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>