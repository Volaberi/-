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
<script>
	function checkWriter(req, review){
		const currentUser = req.session.user;
		return currentUser && currentUser.id === user.uiName
	}
	document.getElementById('btn12').addEventListener('click', function() {
		if(checkWriter(req, review)) {
			const rbiNum = review.rbiNum;
			location.href = 'review-update?rbiNum' + rbiNum;
		}else {
			alert("해당 게시물의 작성자만 수정할 수 있습니다.")
		}
	});
</script>
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
					<li class="breadcrumb-item active">리뷰상세</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-6">

					<div class="card" style="width: 900px; text-align: center;">
						<div class="card-body" style="height: 450px;">
							<!-- Quill Editor Default -->
							<div class="quill-editor-default">
							<form method="GET">
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
												${review.rbiNum}
											</td>
										</tr>
										<tr>
											<th>제목</th>
											<td>
												${review.rbiTitle}
											</td>
										</tr>
										<tr>
											<th>작성자</th>
											<td>
												${review.uiName}
											</td>
										</tr>
										<tr>
											<th style="height:200px; line-height: 200px;">내용</th>
											<td style="line-height: 200px;">
												${review.rbiContent}
											</td>
										</tr>
										<tr>
											<th>작성일</th>
											<td>
												${review.rbiCredat}
											</td>
										</tr>
										<tr>
											<th>조회수</th>
											<td>
												${review.rbiCnt}
											</td>
										</tr>
									</tbody>
								</table>
	                            </form>
								<a href="/reviews" class="btn btn-outline-secondary" id="btn12"style="left: 15px; position: absolute;">목록보기</a>
								<div class="button3">
	                                <button class="btn btn-outline-primary" type="button" id="btn12"
	                                	 onclick="location.href='/review-update?rbiNum=${review.rbiNum}'">수정</button>
	                                <button class="btn btn-outline-primary" type="button" id="btn12"
	                                	 onclick="location.href='/review/delete?rbiNum=${review.rbiNum}'">삭제</button>
	                            </div>
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