package com.exam.sts.vo;

import lombok.Data;

@Data
public class UserInfoVO {
	
	private int uiNum;
	private String uiName; // 이름
	private String uiId; // 아이디 
	private String uiPwd; // 비밀번호
	private String uiGender; // 성별
	private String uiBirth; //생년월일
	private String uiPhone; // 폰번호
	private String uiEmail; //이메일
	private String uiCredat; // 가입일
	private String uiAddress; //주소
	private String uiAddressCode; //우편번호
	private String uiAddressDetail; //상세주소
	private String uiAddressExtra; //~동
	private String uiFilePath; //이미지
}
