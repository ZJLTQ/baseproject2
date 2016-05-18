package com.dcits.govsbu.southernbase.baseproject2.api;

import java.util.Collections;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dcits.govsbu.southernbase.baseproject2.modules.constants.MediaTypes;
import com.dcits.govsbu.southernbase.baseproject2.orm.model.Account;
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
@RequestMapping("/api")
public class IndexRestController {
	private static Logger logger = LoggerFactory.getLogger(IndexRestController.class);

    @Autowired
    private AccountService accountService;
    

	/*************************************************************************
	 * 说明：处理API用户登录请求
	 *      检验用户登录凭证，目前使用email/password
	 *      登录成功产生一个唯一的标识TOKEN，
	 *      保存登录记录（如果不保存数据库则需要将TOKEN保存在缓存）返回TOKEN
	 * 作者：张孟志
	 * 日期：2016-01-10
	 ************************************************************************/
	@RequestMapping(value = "/login", produces = MediaTypes.JSON_UTF_8)
	public Map<String, String> login(@RequestParam("email") String email, @RequestParam("password") String password) {
		if (StringUtils.isEmpty(email) || StringUtils.isEmpty(password)) {
			throw new ServiceException("User or password empty", ErrorCode.BAD_REQUEST);
		}

		String token = accountService.login(email, password);

		logger.debug(email + " login, token = " + token);
		
		return Collections.singletonMap("token", token);
    }
	
	/*************************************************************************
	 * 说明：处理API用户退出请求
	 * 作者：张孟志
	 * 日期：2016-01-11
	 ************************************************************************/
	@RequestMapping(value = "/logout")
	public void logout(@RequestParam(value = "token", required = false) String token) {
		accountService.logout(token);
	}
	
	/*************************************************************************
	 * 说明：处理API用户注册请求
	 * 作者：张孟志
	 * 日期：2016-01-11
	 ************************************************************************/
	@RequestMapping(value = "/register")
	public void register(@RequestParam("email") String email,
			@RequestParam(value = "name", required = false) String name, 
			@RequestParam("password") String password) {

		if (StringUtils.isEmpty(email) 
				|| StringUtils.isEmpty(name) 
				|| StringUtils.isEmpty(password)) {
			throw new ServiceException("User or name or password empty", ErrorCode.BAD_REQUEST);
		}
		//判断email/用户名是否已被注册
		Account account = accountService.getByEmail(email);
		if (account != null) {
			logger.error(email + "注册失败，该Email为已被注册。 ");
			throw new ServiceException("该Email为已被注册", ErrorCode.EMAIL_HAS_EXIST);
		}

		accountService.register(email, name, password);
	}
}
