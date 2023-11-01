package com.exam.sts.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.sts.mapper.ReviewInfoMapper;
import com.exam.sts.vo.ReviewInfoVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class ReviewInfoService {
   
   private final String uploadFilePath = "C:\\Users\\USER\\git\\sts-project\\src\\main\\webapp\\resources\\upload";

   @Autowired
   private ReviewInfoMapper rbiMapper;
   
   public PageInfo<ReviewInfoVO> getReviewInfos(ReviewInfoVO Review) {
      PageHelper.startPage(Review.getPage(),Review.getRows());
//      List<ReviewInfoVO> Reviews = biMapper.selectReviewInfos(Review);
//      PageInfo<ReviewInfoVO> pageInfo = new PageInfo<>(biMapper.selectReviewInfos(Review));
//      return pageInfo;
      return new PageInfo<>(rbiMapper.selectReviewInfos(Review));
   }
   
   public ReviewInfoVO getReviewInfo(int rbiNum) {
		return rbiMapper.selectReviewInfo(rbiNum);
	}
   
   public ReviewInfoVO selectReviewInfo(ReviewInfoVO Review) {
      ReviewInfoVO ReviewInfo = rbiMapper.selectReviewInfo(Review);
      if(ReviewInfo != null) {
         rbiMapper.updateReviewInfo(ReviewInfo);
      }
      return ReviewInfo;
   }
   
   public ReviewInfoVO updateReviewInfoCnt(ReviewInfoVO review) {
	   ReviewInfoVO reviewInfo = rbiMapper.selectReviewInfo(review);
		if(reviewInfo != null) {
			rbiMapper.updateReviewInfoCnt(reviewInfo);
		}
		return reviewInfo;
	}
   
   public boolean insertReviewInfo(ReviewInfoVO review) throws Exception{
	   return rbiMapper.insertReviewInfo(review);
   }
   
   public boolean updateReviewInfo(ReviewInfoVO review) {
		return rbiMapper.updateReviewInfo(review) == 1;
	}
	
	public boolean deleteReviewInfo(int rbiNum) {
		return rbiMapper.deleteReviewInfo(rbiNum) == 1;
	}
	
	
}