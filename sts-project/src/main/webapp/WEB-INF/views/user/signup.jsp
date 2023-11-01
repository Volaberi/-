<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 화면</title>
    <%@ include file="/WEB-INF/views/common/head.jsp" %>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
</head>

<style>
body {
    min-height: 100vh;
    background: white;
}

.titlebox, .titlebox1{
    margin-top: 15px;
}

.input-form{ 
    margin: auto;
    min-width: 800px;
}

.input-form {
    max-width: 680px;
    margin-top: 80px;
    padding: 32px;

    background: #fff;
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;
    -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
    -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
    box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}

#uiAddressCode, #uiAddress{
    margin-right: 10px;
    float: left;
    display: block;
    width: 30%;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #8D8E92;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #C7DCFB;
    appearance: none;
    border-radius: 8px;
    transition: border-color 0.15s ease-in-out,box-shadow 0.15s ease-in-out;
}


#uiAdressDetail, #uiAddressExtra{
    display: block;
    width: 100%;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #8D8E92;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #C7DCFB;
    appearance: none;
    border-radius: 8px;
    transition: border-color 0.15s ease-in-out,box-shadow 0.15s ease-in-out;
    margin-top: 10px;
}

#yy, #mm, #dd{
    margin-right:10px ;
    float: left;
    display: block;
    width: 20%;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #8D8E92;
    background-color: #fff;
    border: 1px solid #C7DCFB;
    border-radius: 8px;
    transition: border-color 0.15s ease-in-out,box-shadow 0.15s ease-in-out;
    margin-top: 10px;
}

.submitBtn{
    width: 100px;
    height: 50px;
    border: solid 1px #0463FA;
    background-color: #0463FA;
    border-radius: 8px;
    color: white;
    margin-top: 10px;
}

</style>



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
const uiName = document.querySelector('#uiName');
if(uiName.value.trim().length<2){
    alert('이름은 2글자이상 입력해주세요.');
    uiName.value = '';
    uiName.focus();
    return false;
}

const uiId = document.querySelector('#uiId');
if(uiId.value.trim().length<6){
    alert('아이디는 6글자 이상 16글자 이하로 특수문자는 사용할 수 없습니다.');
    uiId.value = '';
    uiId.focus();
    return false;
}

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

let form = document.signupform;
//const uiGender = document.querySelector('#uiGender')
let uname = form.uiGender
if(uname[0].checked == false && uname[1].checked == false){
    alert('성별을 체크해주세요.')
    return false;
    }

const uiBirth = document.querySelector('#uiBirth');
if(uiBirth.value.trim().length<8){
    alert('생년월일을 확인해주세요.');
    uiBirth.value = '';
    uiBirth.focus();
    return false;
}

const uiPhone = document.querySelector('#uiPhone');
if(uiPhone.value.trim().length<11){
    alert('전화번호를 확인해주세요.');
    uiPhone.value = '';
    uiPhone.focus();
    return false;
}

// const uiEmail = document.querySelector('#uiEmail');
// let exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
// if(exptext.test(uiEmail)==false){
// alert("이메일형식이 올바르지 않습니다.");
// uiEmail.value = '';
// uiEmail.focus();
// return false;
// }

const uiAddress = document.querySelector('#uiAddressCode');
if(uiAddress.value.trim().length<4){
    alert('우편번호를 입력해주세요.');
    uiAddress.value = '';
    uiAddress.focus();
    return false;
}

const uiAddress2 = document.querySelector('#uiAdressDetail');
if(uiAddress2.value.trim().length<4){
    alert('상세주소를 입력해주세요.');
    uiAddress2.value = '';
    uiAddress2.focus();
    return false;
}
return true;

}
</script>

<body>
    <div class="container">
        <div class="form-background">
            <div class="input-form">
                <h4 class="titlebox">회원가입</h4>
                <form class="signup-form" action="/signup" method="post" name="signupform" onsubmit="return validation()">
                    <div class="titlebox">
                        <label>이름</label>
                        <input type="text" class="form-control"  name="uiName" id="uiName" placeholder="이름을 입력해주세요" value="">
                    </div>

                    <div class="titlebox">
                        <label>아이디</label>
                        <input type="text" class="form-control" name="uiId" id="uiId" placeholder="아이디는 6자이상 16자 이하로 특수문자는 사용할 수 없습니다" value="" maxlength="16">
                    </div>

                    <div class="titlebox">
                        <label>비밀번호</label>
                        <input type="password" class="form-control" name="uiPwd" id="uiPwd" placeholder="비밀번호는 8자이상 대소문자, 특수문자를 섞어서 사용해주세요" value="" minlength="8">
                    </div>

                    <div class="titlebox">
                        <label>비밀번호 확인</label>
                        <input type="password" class="form-control" name="uiPwd1" id="uiPwd1" placeholder="비밀번호를 다시입력해주세요" value="">
                    </div>

                    <div class="titlebox">
                        <label>성별</label><br>
                        <input type="radio" class="" name="uiGender" id="uiGender" value="M">&nbsp; 남성 &nbsp; &nbsp;
                        <input type="radio" class="" name="uiGender" id="uiGender" value="F">&nbsp; 여성
                    </div>

                    <!-- <div class="titlebox1">
                        <label>생년월일</label>
                        <div class="bir_yy">
                            <span class="ps_box">
                                <input type="text" id="yy" placeholder=" 년(4자)" maxlength="4">
                            </span>
                        </div>
                        <div class="bir_mm">
                            <span class="ps_box_focus">
                                <select id="mm">
                                <option>월</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                                <option>11</option>
                                <option>12</option>
                                </select>
                            </span>
                        </div>
                        <div class="bir_dd">
                            <span class="ps_box">
                                <input type = "text" id="dd" placeholder=" 일" maxlength="2">
                            </span>
                        </div>
                    </div><br><br> -->

                    <div class="titlebox">
                        <label>생년월일</label>
                        <input type="text" class="form-control" name="uiBirth" id="uiBirth" placeholder="생년월일을 입력해주세요 (ex)19990101" value="" maxlength="8">
                    </div>

                    <div class="titlebox">
                        <label>전화번호</label>
                        <input type="text" class="form-control" name="uiPhone" id="uiPhone" placeholder="숫자만 입력해주세요" value="" maxlength="11">
                    </div>

                    <div class="titlebox">
                        <label>이메일</label>
                        <input type="email" class="form-control" name="uiEmail" id="uiEmail" value="" placeholder="your@mail.com">
                    </div>

                    <div class="titlebox1">
                        <label>주소</label><br>
                        <input type="text" name="uiAddressCode" id="uiAddressCode" placeholder="우편번호" readonly>
                        <input type="text" name="uiAddress" id="uiAddress" placeholder="주소" readonly><br><br>
                        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="border: none; border-radius: 8px; background-color: #8D8E92; color: white;"><br>
                        <input type="text" name="uiAddressDetail" id="uiAdressDetail" placeholder="상세주소">
                        <input type="text" name="uiAddressExtra" id="uiAddressExtra" placeholder="참고항목" readonly>
                    </div>

                    <button class="submitBtn" type="submit">가입하기</button>
                </form>
            </div>
        </div>
    </div>
</body>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</html>