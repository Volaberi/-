package com.exam.sts.mapper;

import com.exam.sts.vo.UserInfoVO;

public interface UserInfoMapper {
	
	UserInfoVO selectUserInfoByUiId(UserInfoVO user);
	
	int insertUserInfo(UserInfoVO user);
	
	 int updateUserInfo(UserInfoVO userInfo);
	   
	 int deleteUserInfo(UserInfoVO userInfo);
	
}
