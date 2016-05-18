package com.dcits.govsbu.southernbase.baseproject2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dcits.govsbu.southernbase.baseproject2.orm.model.Country;
import com.dcits.govsbu.southernbase.baseproject2.service.CountryService;

@Controller
public class RedisDemoController {
	  
	@Autowired
	private CountryService countryService;

	@RequestMapping("/test")
	@ResponseBody
	public String putCache() {
		countryService.getById(11);
		System.out.println("若下面没出现“无缓存的时候调用”字样且能打印出数据表示测试成功");
		return "ok";
	}

	@RequestMapping("/test2")
	@ResponseBody
	public String testCache() {
		Country country = countryService.getById(11);
		System.out.println("我这里没执行查询");
		System.out.println("country:" + "/" + country.getCountryname() + "/"
				+ country.getCountrycode());
		
		return "ok2";
	}
}
