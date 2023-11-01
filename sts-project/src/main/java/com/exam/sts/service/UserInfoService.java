package com.exam.sts.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.sts.mapper.UserInfoMapper;
import com.exam.sts.vo.UserInfoVO;

import lombok.extern.log4j.Log4j2;


@Service
@Log4j2
public class UserInfoService {

	@Autowired
	private UserInfoMapper uiMapper;
	
	public boolean signup(UserInfoVO user) {
		return uiMapper.insertUserInfo(user)==1;
	}
	
	public UserInfoVO getUserInfoVOByUiId(UserInfoVO user) {
		return uiMapper.selectUserInfoByUiId(user);
	}

	public boolean login(UserInfoVO user, HttpSession session) {
		log.info("로그인페이지의 비밀번호 : {}",user.getUiPwd());
		UserInfoVO userTmp = uiMapper.selectUserInfoByUiId(user);
		log.info("로그인했을떄 유저정보 : {}",userTmp);
		if(userTmp!=null) {
			if(userTmp.getUiPwd().equals(user.getUiPwd())) {
				session.setAttribute("user", userTmp);
				return true;
			}
		}
		return false;
	}
	
	public boolean update(UserInfoVO userInfo ) {
	      return uiMapper.updateUserInfo(userInfo) ==1;
	   }
	   
	   public boolean delete(UserInfoVO userInfo) {
	      return uiMapper.deleteUserInfo(userInfo)==1;
	   }
}
