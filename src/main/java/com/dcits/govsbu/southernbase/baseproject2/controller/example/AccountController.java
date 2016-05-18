package com.dcits.govsbu.southernbase.baseproject2.controller.example;

import com.github.pagehelper.PageInfo;

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
import com.dcits.govsbu.southernbase.baseproject2.orm.model.Account;
import com.dcits.govsbu.southernbase.baseproject2.service.AccountService;

import java.util.List;

/**
 * 
 * @ClassName:AccountController 
 * @Description:账户处理控制器
 * @author:张孟志
 * @date:2016年1月7日 上午11:49:08 
 * @version V1.0
 * 说明：账户处理控制器
 */
@Controller
@RequestMapping("/admin/accounts")
public class AccountController {

    @Autowired
    private AccountService accountService;
    
    @Autowired
    CounterService counterService;

    @RequestMapping
    public ModelAndView search(@RequestParam("TOKEN") String token, Account account) {
       ModelAndView result = new ModelAndView("admin/account/index");
        List<Account> accountList = accountService.search(account);
        result.addObject("pageInfo", new PageInfo<Account>(accountList));
        result.addObject("queryParam", account);
        result.addObject("page", account.getPage());
        result.addObject("rows", account.getRows());
        result.addObject("token", token);
    	
    	counterService.increment(token);	
        return result;
    }

    @RequestMapping(value = "/add")
    public ModelAndView add(@RequestParam("TOKEN") String token) {
        ModelAndView result = new ModelAndView("admin/account/view");
        result.addObject("account", new Account());
        // add by zhangmz 2016-01-09 添加操作表示
        result.addObject("action", "add");
        result.addObject("TOKEN", token);
        return result;
    }

    @RequestMapping(value = "/view/{id}")
    public ModelAndView view(@RequestParam("TOKEN") String token, @PathVariable Long id) {
        ModelAndView result = new ModelAndView("admin/account/view");
        Account account = accountService.getById(id);
        result.addObject("account", account);
        // add by zhangmz 2016-01-09 添加操作表示
        // result.addObject("action", "view");
        result.addObject("action", "edit");
        result.addObject("TOKEN", token);
        return result;
    }

    @RequestMapping(value = "/delete/{id}")
    public String delete(@RequestParam("TOKEN") String token, @PathVariable Long id, RedirectAttributes ra) {
    	// 删除操作人必须为管理员
    	if(accountService.isAdmin(token)){
    		accountService.deleteById(id);
            ra.addFlashAttribute("msg", Messages.DELETE_SUCCESS);
    	} else {
    		ra.addFlashAttribute("msg", Messages.MUST_BE_ADMINISTRATOR);
    	}    	
    	
        return "redirect:/admin/accounts?TOKEN=" + token;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(@RequestParam("TOKEN") String token, Account account) {
        ModelAndView result = new ModelAndView("admin/account/view");
        String msg = account.getId() == null ? Messages.INSERT_SUCCESS : Messages.UPDATE_SUCCESS;
        
        // 浏览器保存用户/密码下，可以只输入浏览器缓存（用户名/密码两个字段）提交表单
        // MySQLIntegrityConstraintViolationException: Column 'email' cannot be null
        // 为了避免这个bug，拦截一下异常。
        try {
        	accountService.save(account);
		} catch (Exception e) {
			// msg = e.getMessage();
			msg = Messages.SYSTEM_BUSY;
		}
        
        result.addObject("account", account);
        result.addObject("msg", msg);
        // add by zhangmz 2016-01-09 添加操作表示
        // result.addObject("action", "view");
        result.addObject("action", "edit");
        result.addObject("TOKEN", token);
        return result;
    }
}
