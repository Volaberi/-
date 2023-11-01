<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<title>세탁 소년단</title>
<style>
.page-header {
    background: url(./resources/bs5/img/shirt-mockup-concept-with-plain-clothing.jpg) top center no-repeat;
    background-size: cover;
    text-shadow: 0 0 30px rgba(0, 0, 0, .1);
}
</style>
</head>
<body>
<!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">서비스 지역</h1>
        </div>
    </div>
<!-- Page Header End -->


    <!-- Contact Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-4">
                    <div class="h-100 bg-light rounded d-flex align-items-center p-5">
                        <div class="d-flex flex-shrink-0 align-items-center justify-content-center rounded-circle bg-white" style="width: 55px; height: 55px;">
                            <i class="fa fa-map-marker-alt text-primary"></i>
                        </div>
                        <div class="ms-4">
                            <p class="mb-2">위치</p>
                            <h5 class="mb-0">경기도 하남시 <br> 미사강변동로 85 <br> 힐스테이트 에코 3층</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="h-100 bg-light rounded d-flex align-items-center p-5">
                        <div class="d-flex flex-shrink-0 align-items-center justify-content-center rounded-circle bg-white" style="width: 55px; height: 55px;">
                            <i class="fa fa-phone-alt text-primary"></i>
                        </div>
                        <div class="ms-4">
                            <p class="mb-2">전화번호</p>
                            <h5 class="mb-0">031) 795 - 7955</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="h-100 bg-light rounded d-flex align-items-center p-5">
                        <div class="d-flex flex-shrink-0 align-items-center justify-content-center rounded-circle bg-white" style="width: 55px; height: 55px;">
                            <i class="fa fa-envelope-open text-primary"></i>
                        </div>
                        <div class="ms-4">
                            <p class="mb-2">이메일</p>
                            <h5 class="mb-0"> STS@email.com</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn">
                    <div class="bg-light rounded p-5">
                        <p class="d-inline-block border rounded-pill py-1 px-4">서비스지역</p>
                        <h1 class="mb-4">서비스 지역 안내</h1>
                        <p class="mb-4">세탁소년단 서비스 지역은 서울, 경기도 하남만 가능 합니다. </p>
                        <p class="mb-4">서울, 하남 외 지역은 서비스를 지원하지 않습니다. </p>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <div class="h-100" style="min-height: 400px;">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.6879516087924!2d127.19296390786884!3d37.56241509526887!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cb1b695d9f76d%3A0xda80ae7b42c876e!2z7J207KCg7JWE7Lm0642w66-47Lu07ZOo7YSw7ZWZ7JuQIO2VmOuCqOy6oO2NvOyKpA!5e0!3m2!1sko!2skr!4v1687922445242!5m2!1sko!2skr" 
                        width="600" height="450" style="border:0;" 
                        allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    <!-- Contact End -->

</body>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</html>