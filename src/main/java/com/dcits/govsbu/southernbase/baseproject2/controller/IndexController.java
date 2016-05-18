package com.dcits.govsbu.southernbase.baseproject2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dcits.govsbu.southernbase.baseproject2.helper.constants.AdminUrl;
import com.dcits.govsbu.southernbase.baseproject2.helper.constants.Messages;
import com.dcits.govsbu.southernbase.baseproject2.service.AccountService;

/**
 * 
 * @ClassName:IndexController 
 * @Description:主页（也是登录页）控制器
 * @author:张孟志
 * @date:2016年1月6日 上午11:40:25 
 * @version V1.0
 * 说明：主页（也是登录页）控制器
 */
@Controller
@EnableWebMvc
@RequestMapping("/admin")
public class IndexController {

    @Autowired
    private AccountService accountService;

	@RequestMapping
	String home() {
		return AdminUrl.redirectIndexController;
    }
	
	//访问baseproject2的首页
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView result = new ModelAndView(AdminUrl.indexPage);
		return result;
    }
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView result = new ModelAndView(AdminUrl.loginPage);
		return result;
    }
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("email") String email, 
						@RequestParam("password") String password, 
						RedirectAttributes redirectAttributes) {
		String token = null;
		String url = null;
		
		try {
			token = accountService.login(email, password);
			redirectAttributes.addFlashAttribute("token", token);
			
			// 判断是否管理员（包括超级管理员）
			if(accountService.isAdmin(token)){
				url = AdminUrl.redirectMainController + "?TOKEN=" + token;
			} else {
				accountService.invalidateAccount(token);
				redirectAttributes.addFlashAttribute("message", Messages.USER_NOT_ADMIN);
				url = AdminUrl.redirectLoginController;
			}
			
		} catch (Exception e) {
			// e.printStackTrace();
			redirectAttributes.addFlashAttribute("message", e.getMessage());
			url = AdminUrl.redirectLoginController;
		}
		
		return url;
    }
	
	@RequestMapping(value = "/logout")
	public String logout(@RequestParam("TOKEN") String token) {
		accountService.logout(token);
		return "redirect:/admin/login";//返回到登录首页
    }
}
