<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> sidebar </title>
</head>
<body>
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link collapsed" href="/mypageMain">
          <i class="bi bi-house-door"></i>  
          <span> 마이페이지 </span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-receipt"></i><span> 세탁소년단 이용 정보 </span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="">
              <i class="bi bi-circle"></i><span> 주문 내역 </span>
            </a>
          </li>
          <li>
            <a href="">
              <i class="bi bi-circle"></i><span> 장바구니 </span>
            </a>
          </li>
          
        </ul>
      </li><!-- End Components Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-card-list"></i><span> 게시판 </span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/notice">
              <i class="bi bi-circle"></i><span> 공지사항 </span>
            </a>
          </li>
          <li>
            <a href="/reviews">
              <i class="bi bi-circle"></i><span> 리뷰 게시판 </span>
            </a>
          </li>
          <li>
            <a href="/board">
              <i class="bi bi-circle"></i><span> 문의 게시판 </span>
            </a>
          </li>
          <li>
            <a href="">
              <i class="bi bi-circle"></i><span> (내용) </span>
            </a>
          </li>
        </ul>
      </li><!-- End Forms Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-person-check"></i><span> 개인정보 수정 </span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/update">
              <i class="bi bi-circle"></i><span> 개인정보 수정 </span>
            </a>
          </li>
          <li>
            <a href="/delete">
              <i class="bi bi-circle"></i><span> 회원탈퇴 </span>
            </a>
          </li>
        </ul>
      </li><!-- End Tables Nav -->
	
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
          <i class="ri-customer-service-2-line"></i><span> 고객센터 </span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/customerMain">
              <i class="bi bi-circle"></i><span> 고객센터 홈 </span>
            </a>
          </li>
          <li>
            <a href="/faq">
              <i class="bi bi-circle"></i><span> 자주 묻는 질문 </span>
            </a>
          </li>
          <li>
            <a href="/contactUs">
              <i class="bi bi-circle"></i><span> 1대1 문의 </span>
            </a>
          </li>
        </ul>
      </li><!-- End Charts Nav -->

    </ul>

  </aside>
</body>
</html>