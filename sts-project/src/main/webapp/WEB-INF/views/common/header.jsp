<!-- 머리 부분 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="/WEB-INF/views/common/head.jsp" %>
    <div class="container-fluid bg-light p-0 wow fadeIn" data-wow-delay="0.1s">
        <div class="row gx-0 d-none d-lg-flex">
            <div class="col-lg-7 px-5 text-start">
                <div class="h-100 d-inline-flex align-items-center py-3 me-4">
                    <small class="fa fa-map-marker-alt text-primary me-2"></small>
                    <small> 경기도 하남시 미사강변동로 85 힐스테이트 에코 3층(망월동) </small>
                </div>
                <div class="h-100 d-inline-flex align-items-center py-3">
                    <small class="far fa-clock text-primary me-2"></small>
                    <small>월 - 금 : 09.00 AM - 09.00 PM </small>
                </div>
            </div>
            <div class="col-lg-5 px-5 text-end">
                <div class="h-100 d-inline-flex align-items-center py-3 me-4">
                    <small class="fa fa-phone-alt text-primary me-2"></small>
                    <small> 031-795-7955 </small>
                </div>
                <div class="h-100 d-inline-flex align-items-center">
                <c:if test="${user==null}">
					&nbsp;&nbsp;<a href="/login" style="color: #787878; margin:20px;">로그인</a>&nbsp;&nbsp;
					<a href="/join" style="color: #787878;" >회원가입</a>
				</c:if>
				<c:if test="${user !=null}">
					${user.uiName}님 반갑습니다.<br>
							<a href="/logout" style="margin:20px;">로그아웃</a>
							<a href="/mypageMain">마이페이지</a>
				</c:if>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0 wow fadeIn" data-wow-delay="0.1s">
        <a href="/" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h1 class="m-0 text-primary"><img src="../resources/bs5/img/logo2.png" style="width: 75px;"></h1>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                
                <a href="/priceList" class="nav-item nav-link">서비스</a>
                <a href="/laundry" class="nav-item nav-link">서비스 안내사항</a>
                <a href="/seviceaddress" class="nav-item nav-link">서비스지역</a>
            </div>
            <a href="/customerMain" class="btn-primary rounded-0 py-4 px-lg-5 d-none d-lg-block">고객센터<i class="fa fa-arrow-right ms-3"></i></a>      
                </div>
    </nav>