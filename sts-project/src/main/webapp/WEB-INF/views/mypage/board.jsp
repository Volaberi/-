<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.List"%>
<%@ page
	import="com.exam.sts.test.Contact, com.exam.sts.test.ContactDAO"%>

<%
ContactDAO contactDAO = new ContactDAO();
List<Contact> contacts = contactDAO.getAllContacts();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 문의 게시판 </title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/head.jsp"%>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<%@ include file="/WEB-INF/views/common/head2.jsp"%>
</head>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title> 문의 게시판 </title>

</head>

<body>

	<!-- ======= Header ======= -->
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>
	<!-- End Sidebar-->

	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Review</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/"> 홈으로 </a></li>
					<li class="breadcrumb-item">게시판</li>
					<li class="breadcrumb-item active"> 문의 게시판</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->
		<table id="datatable-scroller" class="table table-bordered tbl_Form">
			<caption></caption>
			<colgroup>
				<col width="250px" />
			</colgroup>
			<thead>
				<tr>
					<th>이름</th>
					<th>아이디</th>
					<th>제목</th>
					<th>내용</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (Contact contact : contacts) {
				%>
				<tr>
					<td><%=contact.getName()%></td>
					<td><%=contact.getId()%></td>
					<td><%=contact.getSubject()%></td>
					<td><%=contact.getMessage()%></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->

	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>



</body>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>