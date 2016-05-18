package com.dcits.govsbu.southernbase.baseproject2.api;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.util.StringUtils;

import com.dcits.govsbu.southernbase.baseproject2.modules.constants.Charsets;
import com.dcits.govsbu.southernbase.baseproject2.service.AccountService;
import com.dcits.govsbu.southernbase.baseproject2.service.exception.ErrorCode;
import com.dcits.govsbu.southernbase.baseproject2.service.exception.ServiceException;

/**
 * 
 * @ClassName:AccountRestController 
 * @Description:账户管理API入口
 * @author:张孟志
 * @date:2016年1月9日 上午10:42:47 
 * @version V1.0
 * 说明：账户管理API入口
 */
//Spring Restful MVC Controller的标识, 直接输出内容，不调用template引擎.
@RestController()
@RequestMapping("/api/accounts")
public class AccountRestController {

    @Autowired
    private AccountService accountService;
    
	/*************************************************************************
	 * 说明：在注册页面检查Email是否已注册
	 * 作者：张孟志
	 * 日期：2016-01-10
	 ************************************************************************/
    
//    /**
//     * 
//     * @Title: checkEmail 
//     * @Description: 检查Email是否已注册
//     * @param email
//     * @param action
//     * @return
//     * @throws 
//     * 增加人:张孟志
//     * 增加日期:2016年1月9日 上午10:51:24
//     * 说明：在注册页面检查Email是否已注册
//     */
//	@RequestMapping(value = "/checkEmail")
//    public String checkEmail(@RequestParam("email") String email, @RequestParam("action") String action) {
//		try {
//			// 检查参数
//			checkEmailPara(email, action);
//			
//			// 检查Email是否已注册
//			checkEmailInDatabase(email, action);
//		} catch (Exception e) {
//			e.printStackTrace();
//			return "false";
//		}		
//		
//		return "true";
//    }
	
    /**
     * 
     * @Title: checkEmail 
     * @Description: 检查Email是否已注册
     * @param email
     * @param action
     * @return
     * @throws 
     * 增加人:张孟志
     * 增加日期:2016年1月9日 上午10:51:24
     * 说明：在注册页面检查Email是否已注册
     */
	@RequestMapping(value = "/checkEmail")
    public boolean checkEmail(@RequestParam("email") String email, @RequestParam("action") String action) {
		boolean isOk = false;
		
		try {
			// 检查参数
			checkEmailPara(email, action);			
			// 检查Email是否已注册
			checkEmailInDatabase(email, action);			
			isOk = true;
		} catch (Exception e) {
			e.printStackTrace();
		}		
		
		return isOk;
    }
	
	/**
	 * 
	 * @Title: checkEmailPara 
	 * @Description: 检查Email参数
	 * @param email
	 * @param action
	 * @throws 
	 * 增加人:张孟志
	 * 增加日期:2016年1月9日 上午11:08:18
	 * 说明：检查Email参数
	 */
	private void checkEmailPara(String email, String action) {
		if (StringUtils.isEmpty(email) || StringUtils.isEmpty(action)) {
			throw new ServiceException("PARAMETER_NON_EXISTENT.", ErrorCode.PARAMETER_NON_EXISTENT);
		}
	}
	
	/**
	 * 
	 * @Title: checkEmailInDatabase 
	 * @Description: 检查Email是否已注册
	 * @param email
	 * @param action
	 * @throws 
	 * 增加人:张孟志
	 * 增加日期:2016年1月9日 上午11:10:30
	 * 说明：检查Email是否已注册
	 */
	private void checkEmailInDatabase(String email, String action) {
		// 将email解码encodeURIComponent($('#email').val())
		try {
			email = URLDecoder.decode(email,Charsets.UTF_8);
		} catch (UnsupportedEncodingException e) {
			throw new ServiceException(e.getMessage(), ErrorCode.BAD_REQUEST);
		}
		
		// 账户注册，判断Email是否已被注册 
		if("add".equals(action) && accountService.getByEmail(email)!=null){
			throw new ServiceException("EMAIL_HAS_EXIST.", ErrorCode.EMAIL_HAS_EXIST);
		}
	}
	
}
