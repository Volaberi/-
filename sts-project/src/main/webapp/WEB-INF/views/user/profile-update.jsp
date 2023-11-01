<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/common/head.jsp" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/common/head2.jsp" %>

</head>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("uiAddressExtra").value = extraAddr;
                
                } else {
                    document.getElementById("uiAddressExtra").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('uiAddressCode').value = data.zonecode;
                document.getElementById("uiAddress").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("uiAdressDetail").focus();
            }
        }).open();
    }
    function validation(){   
    const uiPwd = document.querySelector('#uiPwd');
    if(uiPwd.value.trim().length<8){
        alert('비밀번호는 8자이상 대소문자, 특수문자를 섞어서 사용해주세요.');
        uiPwd.value = '';
        uiPwd.focus();
        return false;
    }

    const uiPwd1 = document.querySelector('#uiPwd1');
    if(uiPwd1.value != uiPwd.value){
        alert('비밀번호를 확인해주세요.');
        uiPwd1.value = '';
        uiPwd1.focus();
        return false;
    }
   }
</script>
<body>
<c:if test="${msg !=null}">
	<script>
		alert('${msg}');
	</script>
</c:if>
<form method="POST" action="/user/update" onsubmit="return validation()">

<section class="section profile">
      <div class="row">
        

        <div class="col-xl-8">

          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
            <!--  <ul class="nav nav-tabs nav-tabs-bordered">

                <li class="nav-item">
                  <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview"> 개인정보 </button>
                </li>
              </ul>  -->
              
              <div class="tab-content pt-2">

                <div class="tab-pane fade show active profile-overview" id="profile-overview">

                  
                  <h5 class="card-title"> 내정보 </h5>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label"> 아이디 </div>
                    <div class="col-lg-9 col-md-8"><input type="text" name="uiId" id="uiId" value="${user.uiId}"></div>
                  </div>

					<div class="row">
                         <div class="col-lg-3 col-md-4 label"> 비밀번호 </div>
                        <div class="col-lg-9 col-md-8"><input type="password" name="uiPwd" id="uiPwd" value="${user.uiPwd}" minlength="8"></div>
                    </div>

                    <div class="row">
                         <div class="col-lg-3 col-md-4 label"> 비밀번호 확인 </div>
                         <div class="col-lg-9 col-md-8"><input type="password" name="uiPwd1" id="uiPwd1"  value="${user.uiPwd}"></div>
                    </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label"> 전화번호 </div>
                    <div class="col-lg-9 col-md-8"><input type="text" name="uiPhone" id="uiPhone" value="${user.uiPhone}"></div>
                  </div> 

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label"> 이메일 </div>
                    <div class="col-lg-9 col-md-8"><input type="text" name="uiEmail" id="uiEmail" value="${user.uiEmail}"></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label"> 주소 </div>
                     </div>
                    	<input type="text" name="uiAddressCode" id="uiAddressCode" value="${user.uiAddressCode}" readonly>
                        <input type="text" name="uiAddress" id="uiAddress" value="${user.uiAddress}" readonly>
                        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="border: none; border-radius: 8px; background-color: #8D8E92; color: white;"><br>
                        <input type="text" name="uiAddressDetail" id="uiAdressDetail" value="${user.uiAddressDetail}">
                       	<input type="text" name="uiAddressExtra" id="uiAddressExtra" value="${user.uiAddressExtra}" readonly><br><br>
                 

	<button type="submit">수정하기</button>

	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</section>
	
</form>
</body>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</html>