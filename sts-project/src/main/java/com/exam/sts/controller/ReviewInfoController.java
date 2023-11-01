package com.exam.sts.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.sts.service.ReviewInfoService;
import com.exam.sts.vo.ReviewInfoVO;

@Controller
public class ReviewInfoController {

   @Autowired
   private ReviewInfoService rbiService;
   
   @GetMapping("/reviews")
   public String getReviews(@ModelAttribute ReviewInfoVO review, Model m) {
      m.addAttribute("page", rbiService.getReviewInfos(review));
      return "review/review-list";
   }
   
   @GetMapping("/review")
   public String getBoard(@ModelAttribute ReviewInfoVO review, Model m) {
	  rbiService.updateReviewInfoCnt(review);
      m.addAttribute("review", rbiService.selectReviewInfo(review));
      return "review/review-views";
   }
   
   @GetMapping("/review-insert")
   public String goReviewInsert() {
      return "review/review-insert";
   }
   
   @PostMapping("/insert")
   public String insertReviewInfo(ReviewInfoVO review, HttpSession session, Model m) throws Exception {
		   String msg = "실패하였습니다";
		   String url = "/review-insert";
	   if(rbiService.insertReviewInfo(review)) {
		   msg = "저장되었습니다.";
		   url = "/reviews";
	   }
	   m.addAttribute("msg", msg);
	   m.addAttribute("url", url);
	   return "common/msg";
   }
   
   @PostMapping("/review-update")
   public String updateReview(ReviewInfoVO review, HttpSession session, Model m ) throws IllegalStateException, IOException {
      String msg = "수정 실패";
      String url = "/review-update?rbiNum=" + review.getRbiNum();
      if(rbiService.updateReviewInfo(review)) {
         msg = "수정이 완료되었습니다.";
         url = "/reviews";
      }
      m.addAttribute("msg", msg);
      m.addAttribute("url", url);
      return "common/msg";
   }
   
   @GetMapping("/review-update")
   public String update(Model m, @RequestParam("rbiNum") int rbiNum) {
      ReviewInfoVO review = rbiService.getReviewInfo(rbiNum);
      m.addAttribute("review", review);
      return "review/review-update";
   }
   
   @GetMapping("/review/delete")
   public String delete(Model m, @RequestParam("rbiNum") int rbiNum) {
      String msg = "삭제 실패";
      String url = "/review-view?rbiNum=" + rbiNum;
      if(rbiService.deleteReviewInfo(rbiNum)) {
         msg = "삭제가 완료되었습니다.";
         url = "/reviews";
      }
      m.addAttribute("msg", msg);
      m.addAttribute("url", url);
      return "common/msg";
   }
   
}
