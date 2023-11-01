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
												5
											</td>
										</tr>
										<tr>
											<th> 제목 </th>
											<td>
												긴급 서버 점검에 따른 서비스 일시 중단 안내
											</td>
										</tr>
										<tr>
											<th style="height:200px; line-height: 200px;">내용</th>
											<td>
												세탁소년단 시스템의 서버점검작업을 위하여 <br>
												아래 작업 시간 동안 서비스가 일시 중단됨을 알려드리오니 <br> 서비스이용에 참고하시기 바랍니다. <br> <br>

1. 작업 내용 : 서버점검 <br>
2. 중단 일시 : 6월 30일(금) 09:00 ~ 21:00 <br>
3. 시스템중단 서비스 : 세탁소년단에서 운영중인 서비스 일체 <br>
											</td>
										</tr>
										<tr>
											<th>작성일</th>
											<td>
												2023-06-30
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