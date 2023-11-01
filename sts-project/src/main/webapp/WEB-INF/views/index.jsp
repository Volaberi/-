<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세탁소년단</title>
<jsp:include page="common/header.jsp"></jsp:include>
</head>
<body>
    <div class="container-fluid header bg-primary p-0 mb-5">
        <div class="row g-0 align-items-center flex-column-reverse flex-lg-row">
            <div class="col-lg-6 p-5 wow fadeIn" data-wow-delay="0.1s">
                <h1 class="display-4 text-white mb-5">옷을 새옷 처럼 만들어 드립니다!</h1>
                <div class="row g-4">
                    <div class="col-sm-4">
                        <div class="border-start border-light ps-4">
                            <h2 class="text-white mb-1" data-toggle="counter-up">121</h2>
                            <p class="text-light mb-0">월 평균 문의량 </p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="border-start border-light ps-4">
                            <h2 class="text-white mb-1" data-toggle="counter-up">2478</h2>
                            <p class="text-light mb-0">월 평균 연락횟수</p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="border-start border-light ps-4">
                            <h2 class="text-white mb-1" data-toggle="counter-up">19807</h2>
                            <p class="text-light mb-0">월 평균 세탁량</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 wow fadeIn">
                <div class="owl-carousel header-carousel" data-wow-delay="0.5s">
                    <div class="owl-carousel-item position-relative">
                        <img class="img-fluid" src="/resources/bs5/img/123441.jpg" alt="">
                    </div>
                    <div class="owl-carousel-item position-relative">
                        <img class="img-fluid" src="/resources/bs5/img/closeup-photo-of-fashionable-clothes-on-hangers-in-the-shop.jpg" alt="">
                    </div>
                    <div class="owl-carousel-item position-relative">
                        <img class="img-fluid" src="/resources/bs5/img/fast-fashion-vs-slow-sustainable-fashion.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->


    <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeIn">
                    <div class="d-flex flex-column">
                        <img class="img-fluid rounded w-75 align-self-end" src="/resources/bs5/img/shirt-mockup-concept-with-plain-clothing (3).jpg" alt="">
                        <img class="img-fluid rounded w-50 bg-white pt-3 pe-3" src="/resources/bs5/img/shirt-mockup-concept-with-plain-clothing (4).jpg" alt="" style="margin-top: -25%;">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" >
                    <p class="d-inline-block border rounded-pill py-1 px-4">회사 소개 </p>
                    <h1 class="mb-4">삶을 더 편안하게!<br>
                    세탁소년단이 함께합니다</h1><br>
                    <p>
                        &nbsp;세탁소년단은 드라이크리닝 및 물세탁의 장단점을 고려하여 각 옷의 케어라벨을 확인하고, 
                        드라이클리닝과 물세탁 중 어떤 방법이 가장 적합한지를 신중하게 판단하여 올바른 세탁 방법을 추구합니다. 
                        이를 통해 옷의 수명을 연장하고, 에너지 및 자원 소비를 줄이며, 동시에 환경 보호에도 기여하고 있습니다.
                    </p>
                    <p class="mb-4">&nbsp;세탁소년단은 친환경소재의 세정액을 사용하여 환경 오염 문제에 대응합니다. 
                        또한, 세탁 과정에서 발생하는 폐수 처리에 대해서도 친환경적인 방법을 도입하여 물의 재이용과 환경 보호를 동시에 추구하고 있습니다.
                    </p><br>
                    <p><i class="far fa-check-circle text-primary me-3"></i>바른세탁 : 소재에 따른 세탁물을 분류합니다.</p>
                    <p><i class="far fa-check-circle text-primary me-3"></i>세정액 관리 : 정기적인 필터 관리로 세정액을 깨끗하게 관리합니다.</p>
                    <p><i class="far fa-check-circle text-primary me-3"></i>첨단 시스템 : 자동화된 세탁설비로 좋은 품질의 서비스를 제공합니다.</p>
                    <p><i class="far fa-check-circle text-primary me-3"></i>R&D 센터 : 전문가들과 더 좋은 세탁방법을 연구합니다.</p>
                    
                </div>
            </div>
        </div>
    </div>
    <br><br>
    <!-- About End -->

<jsp:include page="common/footer.jsp"></jsp:include>