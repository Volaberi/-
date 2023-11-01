package com.exam.sts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.sts.mapper.PriceInfoMapper;
import com.exam.sts.vo.PriceInfoVO;


@Service
public class PriceInfoService {

	@Autowired
	private PriceInfoMapper piMapper;
	
	
	public List<PriceInfoVO> getPriceList() {
        return piMapper.getPriceList();
    }
	
	
}
