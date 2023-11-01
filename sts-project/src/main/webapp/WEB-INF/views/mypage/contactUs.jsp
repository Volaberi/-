<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> contactUs </title>
<%@ include file="/WEB-INF/views/common/head.jsp" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/common/head2.jsp" %>
</head>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title> 1대1 문의 </title>
  
</head>

<body>

  <!-- ======= Header ======= -->
  <!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <%@ include file="/WEB-INF/views/common/sidebar2.jsp" %>
  <!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1> 1대1 문의 </h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="/"> 홈으로 </a></li>
          <li class="breadcrumb-item"><a href="/customerMain"> 고객센터 </a></li>
          <li class="breadcrumb-item active"> 1대1 문의 </li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section contact">

      <div class="row gy-4">

        <div class="col-xl-6">

          <div class="row">
            <div class="col-lg-6">
              <div class="info-box card">
                <i class="bi bi-geo-alt"></i>
                <h3> 주소 </h3>
                <p> 세탁 소년단 <br> 경기도 하남시 미사강변동로 85 <br> 힐스테이트에코미사 3층 </p>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="info-box card">
                <i class="bi bi-telephone"></i>
                <h3> 전화번호 </h3>
                <p>  02 - 795 - 7955 <br> 031 - 795 - 7955 </p> <br>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="info-box card">
                <i class="bi bi-envelope"></i>
                <h3> 이메일 </h3>
                <p> STS@example.com <br> STS2@example.com </p>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="info-box card">
                <i class="bi bi-clock"></i>
                <h3> 영업 시간 </h3>
                <p> 월요일 - 금요일 <br> 9:00AM - 09:00PM </p>
              </div>
            </div>
          </div>

        </div> 

        <div class="col-xl-6">
          <div class="card p-4"> 
<form action="/contact" method="post">
  <div class="row gy-4">
    <div class="col-md-6">
      <input type="text" name="name" class="form-control" placeholder="이름" required>
    </div>
    <div class="col-md-6">
      <input type="text" class="form-control" name="id" placeholder="아이디" required>
    </div>
    <div class="col-md-12">
      <input type="text" class="form-control" name="subject" placeholder="제목" required>
    </div>
    <div class="col-md-12">
      <textarea class="form-control" name="message" rows="6" placeholder="내용" required></textarea>
    </div>
  </div>
  <button type="submit">문의하기</button>
</form>

          </div>

        </div>

      </div>

    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->

  <!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>



</body>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</html>