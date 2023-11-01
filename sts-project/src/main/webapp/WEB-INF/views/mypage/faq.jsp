<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> FAQ </title>
<%@ include file="/WEB-INF/views/common/head.jsp" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/common/head2.jsp" %>
</head>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title> 자주 묻는 질문 </title>
  
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
      <h1> 자주 묻는 질문 </h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="/"> 홈으로 </a></li>
          <li class="breadcrumb-item"><a href="/customerMain"> 고객센터 </a></li>
          <li class="breadcrumb-item active"> 자주 묻는 질문 </li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section faq">
      <div class="row">
        <div class="col-lg-6">

          <div class="card basic">
            <div class="card-body">
              <h5 class="card-title"> 가장 많이 묻는 질문 </h5>

              <div>
                <h6> 회원 가입 방법은 어떻게 되나요? </h6>
                <p> 회원 가입은 아이디, 비밀번호 설정, 이름, 휴대폰 번호 입력만으로 간단하게 가입 가능합니다. </p>
              </div>

              <div class="pt-2">
                <h6> 아이디와 비밀번호가 생각나지 않습니다. </h6>
                <p> 아이디는 [로그인 페이지 > 아이디 찾기]를 통해, <br> 비밀번호는 [로그인 페이지 > 비밀번호 찾기] 를 통해 확인이 가능합니다. </p>
              </div>

              <div class="pt-2">
                <h6> 회원 탈퇴는 어떻게 하나요? </h6>
                <p> 회원 탈퇴 신청은 마이페이지에서 탈퇴 가능합니다. </p>
              </div>

            </div>
          </div>

          <!-- F.A.Q Group 1 -->
          <div class="card">
            <div class="card-body">
              <h5 class="card-title"> 서비스 이용 관련 문의 </h5>

              <div class="accordion accordion-flush" id="faq-group-1">

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsOne-1" type="button" data-bs-toggle="collapse">
                      서비스 지역은 어디인가요?
                    </button>
                  </h2>
                  <div id="faqsOne-1" class="accordion-collapse collapse" data-bs-parent="#faq-group-1">
                    <div class="accordion-body">
                      세탁 소년단의 서비스 지역은 다음과 같습니다. <br>
                      - 서울시 <br> 
                      - 하남시 <br> 
                      향후 더 많은 서비스를 드릴수 있도록 노력하겠습니다.
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsOne-2" type="button" data-bs-toggle="collapse">
                      더 빨리 배송받을 수 있나요?
                    </button>
                  </h2>
                  <div id="faqsOne-2" class="accordion-collapse collapse" data-bs-parent="#faq-group-1">
                    <div class="accordion-body">
                      세탁 소년단에 세탁 시스템은 최소 3일 기간이 소요됩니다. <br> 이용에 불편을 드려 죄송합니다.
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsOne-3" type="button" data-bs-toggle="collapse">
                      세탁 없이 수선만 맡길 수 있나요?
                    </button>
                  </h2>
                  <div id="faqsOne-3" class="accordion-collapse collapse" data-bs-parent="#faq-group-1">
                    <div class="accordion-body">
                      세탁 소년단은 단독으로 수선도 가능합니다. <br>
                      요구사항을 적어주시고 맡겨주시면 깔끔하고 튼튼하게 수선해 드리겠습니다.
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsOne-4" type="button" data-bs-toggle="collapse">
                      가격표에 없는 품목도 세탁 가능한가요?
                    </button>
                  </h2>
                  <div id="faqsOne-4" class="accordion-collapse collapse" data-bs-parent="#faq-group-1">
                    <div class="accordion-body">
                      세탁 소년단 홈페이지 가격표에 없는 품목은 세탁이 불가합니다. <br>
                      세탁 소년단은 앞으로 가격표에 없는 품목도 세탁을 준비하기 위해 더 노력하겠습니다. <br>
                      이용에 불편을 드려 대단히 죄송합니다.
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsOne-5" type="button" data-bs-toggle="collapse">
                      세탁 불가 품목이 있나요?
                    </button>
                  </h2>
                  <div id="faqsOne-5" class="accordion-collapse collapse" data-bs-parent="#faq-group-1">
                    <div class="accordion-body">
                      아쉽게도 아래의 품목들은 세탁이 불가합니다. <br>
                      - 캐리어 / 골프백 <br>
                      - 전기장판 / 옥장판 / 온수매트 <br>
                      - 학사모 / 오토바이 헬맷 내장재 <br>
                      - 초대형 인형 / 인형탈 <br>
                      - 한복 / 목화솜 이불 <br>
                      참고 부탁드립니다. 
                    </div>
                  </div>
                </div>

              </div>

            </div>
          </div><!-- End F.A.Q Group 1 -->

        </div>

        <div class="col-lg-6">

          <!-- F.A.Q Group 2 -->
          <div class="card">
            <div class="card-body">
              <h5 class="card-title"> 수거 • 배송 관련 문의 </h5>

              <div class="accordion accordion-flush" id="faq-group-2">

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsTwo-1" type="button" data-bs-toggle="collapse">
                      세탁물은 언제 배송 되나요?
                    </button>
                  </h2>
                  <div id="faqsTwo-1" class="accordion-collapse collapse" data-bs-parent="#faq-group-2">
                    <div class="accordion-body">
                      세탁물은 수거 시점으로부터 3일 뒤 오전 중으로 배송 됩니다.
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsTwo-2" type="button" data-bs-toggle="collapse">
                      배송 주소를 변경하고 싶어요.
                    </button>
                  </h2>
                  <div id="faqsTwo-2" class="accordion-collapse collapse" data-bs-parent="#faq-group-2">
                    <div class="accordion-body">
                      배송 주소는 마이페이지 개인정보 수정에서 변경하실 수 있습니다.
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsTwo-3" type="button" data-bs-toggle="collapse">
                      세탁물에 있던 소지품이 없어졌어요.
                    </button>
                  </h2>
                  <div id="faqsTwo-3" class="accordion-collapse collapse" data-bs-parent="#faq-group-2">
                    <div class="accordion-body">
                      세탁 소년단은 모든 세탁물에 대해 꼼꼼하게 검수합니다. <br> 
                      검수 과정에서 발견된 소지품은 세탁 특공대가 세탁물 배송 시 같이 동봉해 드립니다. <br> 
                      세탁물 수거 전 반드시 소지품을 확인해 주세요.
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsTwo-4" type="button" data-bs-toggle="collapse">
                      일부 세탁물이 배송되지 않았어요.
                    </button>
                  </h2>
                  <div id="faqsTwo-4" class="accordion-collapse collapse" data-bs-parent="#faq-group-2">
                    <div class="accordion-body">
                      이용에 불편을 드려 대단히 죄송합니다. <br> 일부 세탁물이 배송되지 않았을 경우 전화나 1대1 문의를 통해 알려주세요. <br> 확인 후 최선을 다해 도와드리겠습니다.
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsTwo-5" type="button" data-bs-toggle="collapse">
                      수거 • 배송이 불만족스러워요.
                    </button>
                  </h2>
                  <div id="faqsTwo-5" class="accordion-collapse collapse" data-bs-parent="#faq-group-2">
                    <div class="accordion-body">
                      이용에 불편을 드려 대단히 죄송합니다. <br> 수거 • 배송 시 불만족스럽게 느끼신 부분을 전화나 1대1 문의를 통해 알려주세요. <br> 확인 후 최선을 다해 도와드리겠습니다.
                    </div>
                  </div>
                </div>

              </div>

            </div>
          </div><!-- End F.A.Q Group 2 -->

          <!-- F.A.Q Group 3 -->
          <div class="card">
            <div class="card-body">
              <h5 class="card-title"> 기타 문의 </h5>

              <div class="accordion accordion-flush" id="faq-group-3">

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsThree-1" type="button" data-bs-toggle="collapse">
                      맡긴 세탁물에 소지품을 깜빡했어요.
                    </button>
                  </h2>
                  <div id="faqsThree-1" class="accordion-collapse collapse" data-bs-parent="#faq-group-3">
                    <div class="accordion-body">
                      세탁 소년단은 모든 세탁물에 대해 꼼꼼하게 검수합니다. <br> 
                      검수 과정에서 발견된 소지품은 세탁 특공대가 세탁물 배송 시 같이 동봉해 드립니다. <br> 
                      세탁물 수거 전 반드시 소지품을 확인해 주세요.
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsThree-2" type="button" data-bs-toggle="collapse">
                      대량 세탁을 문의하고 싶어요.
                    </button>
                  </h2>
                  <div id="faqsThree-2" class="accordion-collapse collapse" data-bs-parent="#faq-group-3">
                    <div class="accordion-body">
                      대량 세탁의 경우 당일 세탁 물량과 배송 차량 여유분을 고려해 진행하고 있습니다. <br>
                      전화나 1대1 문의를 통해 알려주세요. <br> 확인 후 최선을 다해 도와드리겠습니다.
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsThree-3" type="button" data-bs-toggle="collapse">
                      정기 주문을 하고 싶어요.
                    </button>
                  </h2>
                  <div id="faqsThree-3" class="accordion-collapse collapse" data-bs-parent="#faq-group-3">
                    <div class="accordion-body">
                      세탁 소년단은 아직 정기 주문을 받지 않고 있습니다. <br>
                      향후 더 많은 서비스를 드릴수 있도록 노력하겠습니다. <br>
                      이용에 불편을 드려 대단히 죄송합니다.
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsThree-4" type="button" data-bs-toggle="collapse">
                      세탁 요금이 너무 많이 나왔어요.
                    </button>
                  </h2>
                  <div id="faqsThree-4" class="accordion-collapse collapse" data-bs-parent="#faq-group-3">
                    <div class="accordion-body">
                      세탁 비용이 예상과 다른 데에는 다음과 같은 이유가 있을 수 있습니다. <br>
                      - 검수 과정에서 오류가 발생한 경우. <br>
                      - 세탁물에 천연가죽, 모피가 포함된 경우 <br>
                      - 일반 빨래물이 고급 빨래물으로 포함된 경우 <br>
                      세탁 요금에 대한 자세한 내용은 전화나 1대1 문의를 통해 알려주세요. <br>
                      확인 후 최선을 다해 도와드리겠습니다.
                      
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsThree-5" type="button" data-bs-toggle="collapse">
                      계좌이체도 가능한가요?
                    </button>
                  </h2>
                  <div id="faqsThree-5" class="accordion-collapse collapse" data-bs-parent="#faq-group-3">
                    <div class="accordion-body">
                      세탁 소년단 주문시 결제란에서 실시간 계좌 이체를 진행하실 수 있습니다.
                    </div>
                  </div>
                </div>

              </div>

            </div>
          </div><!-- End F.A.Q Group 3 -->

        </div>

      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->

  <!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</html>