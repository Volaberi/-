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
               <li class="breadcrumb-item active">리뷰게시판</li>
            </ol>
         </nav>
      </div>
      <!-- End Page Title -->

      <section class="section">
         <div class="row">
            <div class="col-lg-6">
            
               <div class="card" id="reviewList">
                  <div class="card-body">
                     <form action="/reviews" method="GET">
                     <input type="search" class="form-control" placeholder="제목 검색" name="rbiTitle" style="width: 300px;"
                        aria-label="Username" aria-describedby="basic-addon1" value="${param.rbiTitle}">
                     <button class="btn btn-outline-primary btn-sm" id="btn11">검색</button>
                     </form>
                     <!-- Quill Editor Default -->
                     <div class="quill-editor-default">
                     <form action="GET" name="frm">
                        <table class="table table-striped">
                           <thead>
                           <tr>
                              <th>번호</th>
                              <th>제목</th>
                              <th>작성자</th>
                              <th>작성일</th>
                              <th>조회수</th>
                           </tr>
                           </thead>
                           <tbody>
                           <c:if test="${empty page.list}">
                              <tr>
                                 <th colspan="5">아직 리뷰가 없습니다.</th>
                              </tr>
                           </c:if>
                           <c:forEach items="${page.list}" var="review">
                           <tr>
                              <td>${review.rbiNum}</td>
                              <td><a href="/review?rbiNum=${review.rbiNum}">${review.rbiTitle}</a></td>
                              <td>${review.uiName}</td>
                              <td>${review.rbiCredat}</td>
                              <td>${review.rbiCnt}</td>
                           </tr>
                           </c:forEach>
                           </tbody>
                        </table>
                        </form>
                        <hr/>
                        <a href="/review-insert" class="btn btn-outline-primary btn-sm"
                           style="margin-left: 850px;" role="button">글쓰기</a>
                        
                        <div id="pageDiv" style=" text-align:center; font-size:12pt"></div>
                     </div>
                     <!-- End Quill Editor Default -->

                  </div>
               </div>

            </div>


         </div>
      </section>

   </main>
   <!-- End #main -->
   <c:if test="${!(empty page.list)}">
   <script>
      const pages = ${page.pages}; // 총 페이지
      const page = ${page.pageNum}; // 현재 페이지
      const start = Math.floor((page-1)/10)*10+1;
      const end = (start + 9) > pages ? pages : (start + 9);
      
      let html = '';
      if(start!=1) {
         html += '<a href="/reviews?page=' + (start-1) + '&rbiTitle=${param.rbiTitle}">&#x25c0</a>';
      }

      for(let i=start; i<=end; i++) {
         if( i==page ) {
            html += ' [' + i + '] ';
         }else {
            html += ' <a href="/reviews?page=' + i + '&rbiTitle=${param.rbiTitle}">[' + i + ']</a> ';
         }
      }
      if(end!=pages) {
         html += '<a href="/reviews?page='+ (end+1) + '&rbiTitle=${param.rbiTitle}">&#9654</a>';
      }      
      document.querySelector('#pageDiv').innerHTML = html;
      
      
   </script>
   </c:if>
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