package com.dcits.govsbu.southernbase.baseproject2.controller.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.dcits.govsbu.southernbase.baseproject2.helper.constants.AdminUrl;
import com.dcits.govsbu.southernbase.baseproject2.service.AccountService;

/**
 * 
 * @ClassName:AdminController 
 * @Description:管理员控制器
 * @author:张孟志
 * @date:2016年1月7日 上午10:50:50 
 * @version V1.0
 * 说明：负责所有管理员功能的控制器入口
 */
@Controller
@EnableWebMvc
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AccountService accountService;
    	
    @RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView home(@RequestParam("TOKEN") String token) {
		ModelAndView result = new ModelAndView(AdminUrl.mainPage);
		//result.addObject("mainInfo", adminMainHelper.getMainInfo(token));
        result.addObject("token", token);
		return result;
    }
    
	@RequestMapping("/dashboard")
	public ModelAndView dashboard(@RequestParam("TOKEN") String token) {
		ModelAndView result = new ModelAndView("admin/dashboard");	
		return result;
    }
	
	@RequestMapping("/forms")
	public ModelAndView forms(@RequestParam("TOKEN") String token) {
		ModelAndView result = new ModelAndView("admin/forms");
		return result;
    }
	
	@RequestMapping("/tables")
	public ModelAndView tables(@RequestParam("TOKEN") String token) {
		ModelAndView result = new ModelAndView("admin/tables");		
		return result;
    }
	
	@RequestMapping("/btnicons")
	public ModelAndView btnicons(@RequestParam("TOKEN") String token) {
		ModelAndView result = new ModelAndView("admin/buttons-and-icons");		
		return result;
    }
	
	@RequestMapping("/wysiwygeditors")
	public ModelAndView wysiwygeditors(@RequestParam("TOKEN") String token) {
		ModelAndView result = new ModelAndView("admin/wysiwyg-editors");		
		return result;
    }
	
	@RequestMapping("/ui")
	public ModelAndView ui(@RequestParam("TOKEN") String token) {
		ModelAndView result = new ModelAndView("admin/ui-and-interface");		
		return result;
    }

	// TODO 暂时还没有这个页面
	@RequestMapping("/syslogs")
	public ModelAndView syslogs(@RequestParam("TOKEN") String token) {
		ModelAndView result = new ModelAndView("admin/default");		
		return result;
    }
}
