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
	function insertCheck() {
		const uiNum = document.getElementById("uiNum").value;
		
		if(uiNum == ""){
			alert("로그인 후 이용해주세요.");
			window.location.href="${path}/login";
			return false;
		}
		return true;
		
		const rbiTitle = document.getElementById("rbiTitle").value;
		if(!rbiTitle == "") {
			return true;
		}else {
			alert("제목 입력은 필수입니다.");
			rbiTitle.focus();
			return false;
		}
	}
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
               <li class="breadcrumb-item active">리뷰작성</li>
            </ol>
         </nav>
      </div>
      <!-- End Page Title -->

      <section class="section">
         <div class="row">
            <div class="col-lg-6">
            
               <div class="card" style="width: 1000px;  margin-left: 150px;">
                  <div class="card-body" style="height: 450px;">
                     <!-- Quill Editor Default -->
                     <div class="quill-editor-default">
                        <form method="POST" action="/insert">
                           <div class="mb-3 mt-3">
                              <label for="title" class="form-label" style="font-family: Comic Sans MS">Title</label>
                              <input type="text" class="form-control" id="rbiTitle" name="rbiTitle" style="width: 400px;"
                                 	 value="${review.rbiTitle}" placeholder="제목을 입력해주세요.">
                           </div>
                           <div class="mb-3">
                              <label for="content" class="form-label" style="font-family: Comic Sans MS">Content</label>
                              <textarea class="form-control" id="rbiContent" name="rbiContent" placeholder="내용을 입력해주세요."
                                 style="height: 200px;">
                              </textarea>
                           </div>
                           <div class="mb-3 mt-3">
                              <input type="hidden" class="form-control" id="uiNum" name="uiNum" value="${user.uiNum}">
                           </div>
                           <a href="/reviews" class="btn btn-outline-secondary" style="left: 15px; position: absolute;">목록보기</a>
                           <div class="button4">
                              <input type="submit" value="저장" class="btn btn-outline-primary" id="btnInsert" onclick="return insertCheck()">
                           </div>
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