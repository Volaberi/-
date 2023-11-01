package com.exam.sts.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.sts.service.UserInfoService;
import com.exam.sts.vo.UserInfoVO;




@Controller

public class UserInfoController {

	@Autowired
	private UserInfoService uiService;
	
	@GetMapping("/join")
	public String goJoin() {
		return "user/join";
	}
	
	@PostMapping("/join")
	public String gojoin2() {
		return"user/signup";
	}
	
	@GetMapping("/signup")
	public String goSignup() {
		return "user/signup";
	}
	
	@PostMapping("/signup")
	public String signup(@ModelAttribute UserInfoVO user, Model m) {
		user.setUiBirth(user.getUiBirth().replace("-", ""));
		m.addAttribute("msg", "회원가입에 실패하였습니다.");
		m.addAttribute("url", "user/signup");
		if(uiService.getUserInfoVOByUiId(user)!=null) {
			m.addAttribute("msg", "이미 등록된 아이디입니다.");
			m.addAttribute("url", "/signup");
		}else if(uiService.signup(user)){
			m.addAttribute("msg", "회원가입이 성공하였습니다.");
			m.addAttribute("url", "welcome");
		}
		return "common/msg";	
	}
	
	@GetMapping("/welcome")
	public String welcome() {
		return "user/welcome";
	}
	
	@GetMapping("/login")
	public String goLogin() {
		return "user/login";
	}
	
	@PostMapping("/login")
	public String login(@ModelAttribute UserInfoVO user, Model m, HttpSession session) {
		String msg = "아이디 비밀번호를 확인해주세요.";
		String url = "/login";
		if(uiService.login(user, session)) {
			msg = "로그인에 성공하였습니다.";
			url = "/";
		}
		m.addAttribute("msg", msg);
		m.addAttribute("url", url);
		return "common/msg";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}
	
	@GetMapping("/profile")
	public String profile() {
		return "user/profile";
	}
	
	@GetMapping("/contactUs")
	public String contactUs() {
		return "mypage/contactUs";
	}
	
	@GetMapping("/faq")
	public String faq() {
		return "mypage/faq";
	}
	
	@GetMapping("/mypageMain")
	public String mypageMain(UserInfoVO userInfoVO, HttpSession session, Model model) { 
		userInfoVO= (UserInfoVO)session.getAttribute("user");
		model.addAttribute("user", uiService.getUserInfoVOByUiId(userInfoVO));
		return "mypage/mypageMain";
	}
	
	@GetMapping("/customerMain")
	public String customerMain() {
		return "customerService/customerMain";
	}

	   @GetMapping("/update")
	   public String profileUpdate() {
	      return "user/profile-update";
	   }
	   
	   @PostMapping("/user/update")
	   public String userUpdate(@ModelAttribute UserInfoVO user, HttpSession session, Model m) {
		      UserInfoVO sessionUserInfo = (UserInfoVO)session.getAttribute("user");
		      user.setUiNum(sessionUserInfo.getUiNum());
		      if(uiService.update(user)) {
		         m.addAttribute("msg", "수정이 성공하였습니다.");
		         session.setAttribute("user", user);
		         m.addAttribute("url", "/mypageMain");
		      }
	      return "common/msg";
	   }
	   
	   @GetMapping("/delete")
	   public String userDelete(@ModelAttribute UserInfoVO user,HttpSession session, Model m) {
	      UserInfoVO sessionUserInfo = (UserInfoVO)session.getAttribute("user");
	      user.setUiNum(sessionUserInfo.getUiNum());
	      if(uiService.delete(user)) {
	        m.addAttribute("msg", "회원탈퇴가 완료되었습니다.");
	        session.invalidate();
	        m.addAttribute("url", "/");
	      }
	      return "common/msg";
	   }
	   
	   @PostMapping("/contact")
	    public String handleContactForm(@RequestParam("name") String name,
	                                    @RequestParam("id") String id,
	                                    @RequestParam("subject") String subject,
	                                    @RequestParam("message") String message) {
	        // 폼 데이터 처리 로직을 작성합니다.
	        // 여기에서 MySQL 데이터베이스에 데이터를 저장할 수 있습니다.
	        
	        // 처리가 완료되면 결과를 보여주는 JSP 페이지로 이동합니다.
	        return "mypage/contact";
	    }
	   
	   @GetMapping("/board")
		public String board() {
			return "mypage/board";
		}
	   
	   @GetMapping("/notice")
		public String notice() {
			return "mypage/notice";
		}
	   
	   @GetMapping("/notice5")
		public String notice5() {
			return "mypage/notice5";
		}
	   
	   @GetMapping("/notice4")
		public String notice4() {
			return "mypage/notice4";
		}
	   
	   @GetMapping("/notice3")
		public String notice3() {
			return "mypage/notice3";
		}

}
