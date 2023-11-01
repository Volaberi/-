<!-- 밑에 부분 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/head.jsp" %>

<style>
#siteFooter .row.row-main {
    background-color: #242424;
    color: #787878;
    padding-top: 70px;
    padding-bottom: 70px;
    padding-left: 30px;
    margin-top: 5%;
}

.menu-name{
    text-decoration: none;
    color: #787878;
}

</style>

<body>
    <!-- Footer Start -->
    <footer>
        <div id="siteFooter" class="site-division  layout-type-align-bothSide1 borderTop-notUse">
            <div class="site-division-background footer-background background-color"></div>
            <div class="site-division-background footer-background background-image" style="display:none;"></div>
    
            <div class="row row-main">
                <div class="column footer-left align-left">
                <div id="footerCompanyInfo" class="site-element" data-itemtype="company-info">
                    <p id="memberCompanyInfo1stRaw">상호: 주식회사 세탁소년단 | 대표: 홍길동 | 개인정보관리책임자: 이순신 | 전화: 031-795-7955 | 이메일: STS@email.com </p>
                    <p id="memberCompanyInfo2ndRaw">주소: 경기도 하남시 미사강변동로 85 힐스테이트 에코 3층(망월동) 
                        | 사업자등록번호: <span id="bizRegNo">111-22-00033</span> 
                        | 통신판매: <span id="onlineShopNumber">제2020-하남미사-1234호</span></p>
                </div><div id="footerEscrow" class="site-element hide" style="z-index:0;" data-pgtype="" data-merchantid="">
                </div><div id="footerSystemMenuList" class="site-element" style="z-index:0;">
                    <div id="footerMenuNaviPolicy" class="menu-navi">
                        <a class="menu-name" href="#">이용약관</a> | 
                        <a class="menu-name" href="#">개인정보처리방침</a> | 
                        <a class="menu-name" href="#">사업자정보확인</a>
                    </div>
                </div><div id="footerCopyright" class="site-element" data-itemtype="footer-copyright">
                    <br>
                    <div id="footerCopyright-text" class="footerCopyright-text">Copyright &copy; 2017-2023 &mdash; 세탁소년단</div>
                </div></div>
            <div class="column footer-center align-center">

                </div>
                <div class="column footer-right align-right">
                <ul id="footerMenuList" class="site-element" data-itemtype="footer-menu">
                    </ul><div id="footerSns" class="site-element" data-itemtype="footer-sns">
                        <a id="footerSns-email" class="footerSns-icons userCustomIcon-icomoon-email" href="mailto:help@washswat.com" data-originallink="mailto:help@washswat.com"><div data-i="icomoon-email" class="icomoon-email-outline-roundedSquare"></div></a><a id="footerSns-facebook" class="footerSns-icons userCustomIcon-icomoon-facebook" href="https://m.facebook.com/washswat/" data-originallink="https://m.facebook.com/washswat/" target="_blank"><div data-i="icomoon-facebook" class="icomoon-facebook-outline-roundedSquare"></div></a><a id="footerSns-instagram" class="footerSns-icons userCustomIcon-icomoon-instagram" href="https://www.instagram.com/washswat" data-originallink="https://www.instagram.com/washswat" target="_blank"><div data-i="icomoon-instagram" class="icomoon-instagram-outline-roundedSquare"></div></a><a id="footerSns-blog" class="footerSns-icons userCustomIcon-icomoon-blog" href="https://blog.naver.com/washswat" data-originallink="https://blog.naver.com/washswat" target="_blank"><div data-i="icomoon-blog" class="icomoon-blog-outline-roundedSquare"></div></a><a id="footerSns-youtube" class="footerSns-icons userCustomIcon-icomoon-youtube" href="https://www.youtube.com/channel/UC-H2CIo_DbnMyWq_gLv0vzw/featured" data-originallink="https://www.youtube.com/channel/UC-H2CIo_DbnMyWq_gLv0vzw/featured" target="_blank"><div data-i="icomoon-youtube" class="icomoon-youtube-outline-roundedSquare"></div></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>