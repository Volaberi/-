<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인페이지</title>
<%@ include file="/WEB-INF/views/common/head.jsp" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
</head>
<body>
<!-- kakao -->
<script src="https://developers.kakao.com/sdk/js/kakao.js" charset="utf-8"></script>

<script>
function validate(event, obj){
   if (!obj.checkValidity()) {
      event.preventDefault()
      event.stopPropagation()
   }
   obj.classList.add('was-validated')
}
</script>

<script>//kakao
Kakao.init('8e28fc047f084e19c0b3ab021651f86d');

function loginWithKakao() {
   Kakao.Auth.authorize({
      redirectUri: '<%= request.getContextPath() %>http://localhost/signup',
   });
}
</script>




<section class="h-100">
   <div class="container h-100">
      <div class="row justify-content-sm-center h-100">
         <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
            <div class="text-center my-5">
               <img src="../resources/bs5/img/logo2.png" alt="logo" width="200px">
            </div>
            <div class="card shadow-lg">
               <div class="card-body p-5">
                  <h1 class="fs-4 card-title fw-bold mb-4">로그인</h1>
                  <form method="POST" action="/login" class="needs-validation" novalidate="" autocomplete="off" onsubmit="validate(event, this)">
                     <div class="mb-3">
                        <label class="mb-2 text-muted" for="uiId">ID</label>
                        <input id="uiId" type="text" class="form-control" name="uiId" value="" required autofocus>
                        <div class="invalid-feedback">
                           Email is invalid
                        </div>
                     </div>

                     <div class="mb-3">
                        <div class="mb-2 w-100">
                           <label class="text-muted" for="password">Password</label>
                           <a href="forgot.html" class="float-end">
                              비밀번호를 잊어버렸습니까?
                           </a>
                        </div>
                        <input id="uiPwd" type="password" class="form-control" name="uiPwd" required>
                        <div class="invalid-feedback">
                           Password is required
                        </div>
                     </div>

                     <div class="d-flex align-items-center">
                        <div class="form-check">
                           <input type="checkbox" name="remember" id="remember" class="form-check-input">
                           <label for="remember" class="form-check-label">아이디 저장</label>
                        </div>
                        
                        <button type="submit" class="btn btn-primary ms-auto">Login </button>
                     </div><br>
                     <a id="kakao-login-btn" href="javascript:void(0)" onclick="loginWithKakao()">
                        <img src="../resources/bs5/img/kakao_login_btn.png" style="width: 48%;" >
                     </a>
                  <!-- naver -->
                  <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

                  <a id="naverIdLogin_loginButton" href="javascript:void(0)">
                        <img src="../resources/bs5/img/naver_Login_btn.png" style="width: 48%; float:right;">
                  </a>

                  <script> //naver
                  var naverLogin = new naver.LoginWithNaverId(
                     {
                        clientId: "m75y21fobwDdokpCUbFo",
                        callbackUrl: "http://localhost/join",
                        isPopup: false,
                        callbackHandle: true
                     }
                  );	
                  naverLogin.init();
                  </script>

                     <div id="result"></div>
                  </form>
               </div>
               <div class="card-footer py-3 border-0">
                  <div class="text-center">
                     회원이 아닙니까? <a href="/join" >회원가입</a>
                  </div>
               </div>
            </div>
            <div class="text-center mt-5 text-muted">
               Copyright &copy; 2017-2023 &mdash; 세탁소년단
            </div>	<br><br>
         </div>
      </div>
   </div>
</section>
</body>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</html>