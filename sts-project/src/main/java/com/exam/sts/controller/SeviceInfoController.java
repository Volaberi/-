package com.exam.sts.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exam.sts.service.PriceInfoService;
import com.exam.sts.vo.PriceInfoVO;



@Controller
public class SeviceInfoController {
	
	@Autowired
	private PriceInfoService piService;

	@GetMapping("/seviceaddress")
	public String goSerivceAddress(){
		return "service/seviceaddress";
	}
	
	@GetMapping("/laundry")
	public String goLaundry() {
		return "service/laundry";
 	}
	

	@RequestMapping("/priceList")
    public String showPriceList(Model m) {
        List<PriceInfoVO> priceList = piService.getPriceList();
        m.addAttribute("priceList", priceList);
        return "service/priceList";
    }
}
