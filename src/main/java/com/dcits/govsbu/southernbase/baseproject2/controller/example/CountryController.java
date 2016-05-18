/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2014-2016 abel533@gmail.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package com.dcits.govsbu.southernbase.baseproject2.controller.example;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.actuate.metrics.CounterService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dcits.govsbu.southernbase.baseproject2.modules.constants.Messages;
import com.dcits.govsbu.southernbase.baseproject2.orm.model.Country;
import com.dcits.govsbu.southernbase.baseproject2.service.AccountService;
import com.dcits.govsbu.southernbase.baseproject2.service.CountryService;
import com.github.pagehelper.PageInfo;

/**
 * @author liuzh
 * @since 2015-12-19 11:10
 */
@Controller
@RequestMapping("/admin/countries")
public class CountryController {
	private final Logger logger = LoggerFactory.getLogger(CountryController.class);

    @Autowired
    private AccountService accountService;

    @Autowired
    private CountryService countryService;
    
    @Autowired
    CounterService counterService;

    /**
     * 
     * @Title: search 
     * @Description: 分页查询
     * @param country
     * @param token
     * @return
     * @throws 
     * 增加人:张孟志
     * 增加日期:2016年1月14日 下午12:37:48
     * 说明：进入“国家信息维护”后做分页查询、点击“查询”按钮也是进入这里
     */
    @RequestMapping
    public ModelAndView search(@RequestParam("TOKEN") String token, Country country) {
    	// 校验是否登录，做权限控制
    	//logger.info("测试日志。。。");
		/*AuthorityHelper authorityHelper = (tokenOrigin -> {
			ModelAndView resultOk = new ModelAndView("admin/country/index");			
	        List<Country> countryList = countryService.search(country);
	        resultOk.addObject("pageInfo", new PageInfo<Country>(countryList));
	        resultOk.addObject("queryParam", country);
	        resultOk.addObject("page", country.getPage());
	        resultOk.addObject("rows", country.getRows());
			resultOk.addObject("TOKEN", tokenOrigin);
	        return resultOk;
		});*/
    			
    	ModelAndView result = new ModelAndView("admin/country/index");
    	List<Country> countryList = countryService.search(country);
    	result.addObject("token", token);
    	result.addObject("pageInfo", new PageInfo<Country>(countryList));
    	result.addObject("queryParam", country);
    	result.addObject("page", country.getPage());
    	result.addObject("rows", country.getRows());
    	
    	//counterService.increment(token);	
        return result;
    }

    @RequestMapping(value = "/add")
    public ModelAndView add(@RequestParam("TOKEN") String token) {
    	// 校验是否登录，做权限控制
		/*AuthorityHelper authorityHelper = (tokenOrigin -> {
			ModelAndView resultOk = new ModelAndView("admin/country/view");	
			resultOk.addObject("country", new Country());
			resultOk.addObject("TOKEN", tokenOrigin);
	        return resultOk;
		});*/
    			
		ModelAndView result = new ModelAndView("admin/country/view");
        return result;
    }

    @RequestMapping(value = "/view/{id}")
    public ModelAndView view(@PathVariable Integer id, @RequestParam("TOKEN") String token) {
    	// 校验是否登录，做权限控制
		/*AuthorityHelper authorityHelper = (tokenOrigin -> {
			ModelAndView resultOk = new ModelAndView("admin/country/view");	
	        resultOk.addObject("country", countryService.getById(id));
			resultOk.addObject("TOKEN", tokenOrigin);
	        return resultOk;
		});
    		*/	
		ModelAndView result = new ModelAndView("admin/country/view");
        return result;
    }

    @RequestMapping(value = "/delete/{id}")
    public String delete(@PathVariable Integer id, @RequestParam("TOKEN") String token, RedirectAttributes ra) {
    	// 删除操作人必须为管理员
    	if(accountService.isAdmin(token)){
        	countryService.deleteById(id);
            ra.addFlashAttribute("msg", Messages.DELETE_SUCCESS);
    	} else {
    		ra.addFlashAttribute("msg", Messages.MUST_BE_ADMINISTRATOR);
    	}    	
    	
        return "redirect:/admin/countries?TOKEN=" + token;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(Country country, @RequestParam("TOKEN") String token) {
		ModelAndView result = new ModelAndView("admin/country/view");
        return result;
    }
    
}
