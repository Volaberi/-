package com.exam.sts.mapper;

import java.util.List;

import com.exam.sts.vo.ReviewInfoVO;

public interface ReviewInfoMapper {
	
	ReviewInfoVO selectReviewInfo(int biNum);

	List<ReviewInfoVO> selectReviewInfos(ReviewInfoVO review);
	
	ReviewInfoVO selectReviewInfo(ReviewInfoVO review);
	
	public boolean insertReviewInfo(ReviewInfoVO review) throws Exception;
	
	int updateReviewInfo(ReviewInfoVO review);
	
	int deleteReviewInfo(int rbiNum);

	int updateReviewInfoCnt(ReviewInfoVO review);
}